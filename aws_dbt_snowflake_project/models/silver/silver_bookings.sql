{{ 
    config(
        materialized='incremental', 
        unique_key='BOOKING_ID'
        ) 
}}

select
    BOOKING_ID,
    LISTING_ID,
    BOOKING_AMOUNT,
    BOOKING_DATE,
    {{ multiply('NIGHTS_BOOKED', 'BOOKING_AMOUNT', 1) }} as TOTAL_BOOKING_AMOUNT,
    SERVICE_FEE,
    CLEANING_FEE,
    BOOKING_STATUS,
    CREATED_AT
from {{ ref('bronze_bookings') }}
