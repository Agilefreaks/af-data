with Freaks as (
    select *

    from {{ source('sursa_snowflake', 'FREAKS_EMAIL_ADDRESSES') }}
)

select *
from Freaks