// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

// Setup type definitions for built-in Supabase Runtime APIs
import "jsr:@supabase/functions-js/edge-runtime.d.ts"

import { createClient, SupabaseClient } from 'jsr:@supabase/supabase-js@2'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey',
  'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE',
}

interface Contributor {
  name: string
  avatar_url: string,
  contribution_count: number,
}

async function replaceContributors(
  supabaseClient: SupabaseClient,
  contributors: Contributor[],
) {
  console.log(contributors);
  const { error } = await supabaseClient.rpc('replace_contributors', { contributors });
  if (error) throw error

  return new Response(JSON.stringify({ contributors }), {
    headers: { ...corsHeaders, 'Content-Type': 'application/json' },
    status: 200,
  })
}

Deno.serve(async (req) => {
  const { method } = req

  // This is needed if you're planning to invoke your function from a browser.
  if (method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders })
  }

  try {
    const authHeader = req.headers.get('Authorization')
    if (!authHeader) {
      throw new Error('Authorization header is required')
    }

    const accessToken = authHeader.replace('Bearer ', '')
    if (!accessToken || accessToken !== Deno.env.get('EDGE_FUNCTION_ACCESS_TOKEN_CONTRIBUTORS_REPLACEMENT')) {
      throw new Error('No access token set or invalid')
    }

    const supabaseClient = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? '',
      {
        auth: {
          autoRefreshToken: false,
          persistSession: false
        },
      },
    )

    if (method !== 'POST') {
      throw new Error('Method not allowed')
    }

    const contributors = await req.json()
    if (!Array.isArray(contributors)) {
      throw new Error('Contributors must be an array')
    }

    return replaceContributors(supabaseClient, contributors)
  } catch (error) {
    console.error(error)

    return new Response(JSON.stringify({ error: error.message }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      status: 400,
    })
  }
})
