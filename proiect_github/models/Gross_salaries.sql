with Salaries as (
   select ("DATA","NUME FREAK","SALARIU BRUT","BONUS CONCEDIU")

    from {{ source('sursa_snowflake', 'GROSS_SALARIES') }}
)

select ("DATA","NUME FREAK","SALARIU BRUT","BONUS CONCEDIU")
from Salaries