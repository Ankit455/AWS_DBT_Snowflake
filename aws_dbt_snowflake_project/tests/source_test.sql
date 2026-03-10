{{
    config(
        severity = 'warn'
    )
}}
Select 1 from {{ source('STAGING', 'BOOKINGS')}} where booking_amount < 0