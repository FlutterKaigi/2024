export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  public: {
    Tables: {
      news: {
        Row: {
          ended_at: string | null
          id: number
          started_at: string
          text: string
          url: string
        }
        Insert: {
          ended_at?: string | null
          id?: number
          started_at: string
          text: string
          url: string
        }
        Update: {
          ended_at?: string | null
          id?: number
          started_at?: string
          text?: string
          url?: string
        }
        Relationships: []
      }
      profiles: {
        Row: {
          avatar_name: string | null
          comment: string
          created_at: string
          id: string
          name: string
          role: Database["public"]["Enums"]["role"]
        }
        Insert: {
          avatar_name?: string | null
          comment?: string
          created_at?: string
          id: string
          name?: string
          role?: Database["public"]["Enums"]["role"]
        }
        Update: {
          avatar_name?: string | null
          comment?: string
          created_at?: string
          id?: string
          name?: string
          role?: Database["public"]["Enums"]["role"]
        }
        Relationships: [
          {
            foreignKeyName: "profiles_id_fkey"
            columns: ["id"]
            isOneToOne: true
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
        ]
      }
      sponsors: {
        Row: {
          description: string
          id: number
          logo_name: string
          name: string
          type: Database["public"]["Enums"]["sponsor_type"]
          url: string | null
        }
        Insert: {
          description: string
          id?: number
          logo_name: string
          name: string
          type: Database["public"]["Enums"]["sponsor_type"]
          url?: string | null
        }
        Update: {
          description?: string
          id?: number
          logo_name?: string
          name?: string
          type?: Database["public"]["Enums"]["sponsor_type"]
          url?: string | null
        }
        Relationships: []
      }
      staff_social_networking_services: {
        Row: {
          id: number
          staff_id: number
          type: Database["public"]["Enums"]["social_networking_service_type"]
          value: string
        }
        Insert: {
          id?: number
          staff_id?: number
          type: Database["public"]["Enums"]["social_networking_service_type"]
          value: string
        }
        Update: {
          id?: number
          staff_id?: number
          type?: Database["public"]["Enums"]["social_networking_service_type"]
          value?: string
        }
        Relationships: [
          {
            foreignKeyName: "staff_social_networking_services_staff_id_fkey"
            columns: ["staff_id"]
            isOneToOne: false
            referencedRelation: "staffs"
            referencedColumns: ["id"]
          },
        ]
      }
      staffs: {
        Row: {
          greeting: string
          icon_name: string
          id: number
          name: string
        }
        Insert: {
          greeting: string
          icon_name: string
          id?: number
          name: string
        }
        Update: {
          greeting?: string
          icon_name?: string
          id?: number
          name?: string
        }
        Relationships: []
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      role: {
        Args: Record<PropertyKey, never>
        Returns: Database["public"]["Enums"]["role"]
      }
    }
    Enums: {
      role: "admin" | "user" | "sponsor" | "speaker"
      social_networking_service_type:
        | "github"
        | "x"
        | "discord"
        | "medium"
        | "qiita"
        | "zenn"
        | "note"
        | "other"
      sponsor_type: "platinum" | "gold" | "silver" | "bronze"
    }
    CompositeTypes: {
      sns_account: {
        name: string | null
      }
    }
  }
  stripe: {
    Tables: {
      checkout_sessions: {
        Row: {
          attrs: Json | null
          customer: string | null
          id: string | null
          payment_intent: string | null
          subscription: string | null
        }
        Insert: {
          attrs?: Json | null
          customer?: string | null
          id?: string | null
          payment_intent?: string | null
          subscription?: string | null
        }
        Update: {
          attrs?: Json | null
          customer?: string | null
          id?: string | null
          payment_intent?: string | null
          subscription?: string | null
        }
        Relationships: []
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type PublicSchema = Database[Extract<keyof Database, "public">]

export type Tables<
  PublicTableNameOrOptions extends
    | keyof (PublicSchema["Tables"] & PublicSchema["Views"])
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
        Database[PublicTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
      Database[PublicTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : PublicTableNameOrOptions extends keyof (PublicSchema["Tables"] &
        PublicSchema["Views"])
    ? (PublicSchema["Tables"] &
        PublicSchema["Views"])[PublicTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  PublicTableNameOrOptions extends
    | keyof PublicSchema["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema["Tables"]
    ? PublicSchema["Tables"][PublicTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  PublicTableNameOrOptions extends
    | keyof PublicSchema["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema["Tables"]
    ? PublicSchema["Tables"][PublicTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  PublicEnumNameOrOptions extends
    | keyof PublicSchema["Enums"]
    | { schema: keyof Database },
  EnumName extends PublicEnumNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = PublicEnumNameOrOptions extends { schema: keyof Database }
  ? Database[PublicEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : PublicEnumNameOrOptions extends keyof PublicSchema["Enums"]
    ? PublicSchema["Enums"][PublicEnumNameOrOptions]
    : never
