with Freaks as (
    select "FREAK FULL NAME","EMAIL ADDRESS"

    from {{ source('sursa_snowflake', 'FREAKS_EMAIL_ADDRESSES') }}
)

select "FREAK FULL NAME","EMAIL ADDRESS"
from Freaks