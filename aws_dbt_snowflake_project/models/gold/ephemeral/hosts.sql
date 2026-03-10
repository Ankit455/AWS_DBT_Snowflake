{{
  config(
    materialized = 'ephemeral'
    )
}}

With hosts as (
    Select 
    HOST_ID,
    HOST_NAME,
    IS_SUPERHOST,
    RESPONSE_RATE_TAG,
    HOST_CREATED_AT
    from {{ ref('obt') }}
)

Select * from hosts