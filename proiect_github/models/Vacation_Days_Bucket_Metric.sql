SELECT
    "EMAIL ADDRESS" AS email,
    EXTRACT(YEAR FROM TO_DATE("START DATE", 'DD/MM/YYYY')) AS year,
    SUM(DATEDIFF(
        'day',
        TO_DATE("START DATE", 'DD/MM/YYYY'),
        TO_DATE("END DATE", 'DD/MM/YYYY')
    ) + 1) AS total_days_off,

    CASE
        WHEN SUM(DATEDIFF('day', TO_DATE("START DATE", 'DD/MM/YYYY'), TO_DATE("END DATE", 'DD/MM/YYYY')) + 1) <= 10 THEN '0-10 vacation days'
        WHEN SUM(DATEDIFF('day', TO_DATE("START DATE", 'DD/MM/YYYY'), TO_DATE("END DATE", 'DD/MM/YYYY')) + 1) BETWEEN 11 AND 21 THEN '11-21 vacation days'
        WHEN SUM(DATEDIFF('day', TO_DATE("START DATE", 'DD/MM/YYYY'), TO_DATE("END DATE", 'DD/MM/YYYY')) + 1) BETWEEN 22 AND 35 THEN '22-35 vacation days'
        ELSE '35+ vacation days'
    END AS days_off_category

FROM Vacation_model
WHERE "VACATION TYPE" IS NOT NULL
GROUP BY email, year
ORDER BY email, year
