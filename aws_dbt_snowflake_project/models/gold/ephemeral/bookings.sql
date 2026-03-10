{{
  config(
    materialized = 'ephemeral'
    )
}}

With bookings as (
    Select 
    BOOKING_ID,
    BOOKING_STATUS,
    CREATED_AT
    from {{ ref('obt') }}
)
Select * from bookings