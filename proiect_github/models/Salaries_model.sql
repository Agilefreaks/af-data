with Salaries as (
   select 
   "DATA" as DATA,
   "NUME FREAK" as NUME_FREAK,
   "SALARIU BRUT" as SALARIU_BRUT,
   "BONUS CONCEDIU" as BONUS_CONCEDIU

    from {{ source('sursa_snowflake', 'GROSS_SALARIES') }}
)

select DATA,NUME_FREAK,SALARIU_BRUT,BONUS_CONCEDIU
from Salaries