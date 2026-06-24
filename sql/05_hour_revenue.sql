WITH monthly_stats AS (
    SELECT
        DATE_TRUNC(
            'month',
            CAST(msk_business_dt_str AS DATE)
        )::DATE AS month,
        COUNT(DISTINCT puid) AS mau,
        SUM(hours) AS total_hours
    FROM bookmate.audition
    WHERE CAST(msk_business_dt_str AS DATE)
          BETWEEN DATE '2024-09-01' AND DATE '2024-11-30'
    GROUP BY month
)

SELECT
    month,
    mau,
    ROUND(total_hours::numeric, 2) AS hours,
    ROUND((mau * 399)::numeric / total_hours, 2) AS avg_hour_rev
FROM monthly_stats
ORDER BY month;
