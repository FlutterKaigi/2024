CREATE TYPE semver_components AS (major int, minor int, patch int, pre_release TEXT[], build_metadata TEXT[]);

CREATE
OR REPLACE function semver_elements_match_regex (parts TEXT[], regex text) returns bool language sql AS $$
    -- validates that *parts* nullable array of non-empty strings
    -- where each element of *parts* matches *regex*
    select
        $1 is null
        or (
            (
                select (
                    bool_and(pr_arr.elem is not null)
                    and bool_and(pr_arr.elem ~ $2)
                )
                from
                    unnest($1) pr_arr(elem)
            )
            and array_length($1, 1) > 0
        )
$$;

CREATE DOMAIN semver AS semver_components CHECK (
    -- major: non-null positive integer
    (value).major IS NOT NULL
    AND (value).major >= 0
    -- minor: non-null positive integer
    AND (value).minor IS NOT NULL
    AND (value).minor >= 0
    -- patch: non-null positive integer
    AND (value).patch IS NOT NULL
    AND (value).patch >= 0
    AND semver_elements_match_regex ((value).pre_release, '^[A-z0-9]{1,255}$')
    AND semver_elements_match_regex ((value).build_metadata, '^[A-z0-9\.]{1,255}$')
);

CREATE
OR REPLACE function semver_to_text (semver) returns text immutable language sql AS $$
    select
        format('%s.%s.%s', $1.major, $1.minor, $1.patch)
        || case
            when $1.pre_release is null then ''
            else format('-%s', array_to_string($1.pre_release, '.'))
        end
        || case
            when $1.build_metadata is null then ''
            else format('+%s', array_to_string($1.build_metadata, '.'))
        end
$$;
