with Freaks as (
    select "FREAK FULL NAME" as FREAK_FULL_NAME,
    "EMAIL ADDRESS" as EMAIL_ADDRESS

    from {{ source('sursa_snowflake', 'FREAKS_EMAIL_ADDRESSES') }}
)

select FREAK_FULL_NAME,EMAIL_ADDRESS
from Freaks