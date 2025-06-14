SELECT
    DATE_TRUNC('MONTH', TO_DATE("START DATE", 'DD/MM/YYYY')) AS month_start,
    "VACATION TYPE",
    SUM(DATEDIFF(
        'day',
        TO_DATE("START DATE", 'DD/MM/YYYY'),
        TO_DATE("END DATE", 'DD/MM/YYYY')
    ) + 1) AS total_days
FROM Vacation_model
WHERE "VACATION TYPE" IS NOT NULL
GROUP BY month_start, "VACATION TYPE"
ORDER BY month_start, "VACATION TYPE"
