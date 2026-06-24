WITH base_users AS (
    -- Когорта: пользователи, активные 2 декабря
    SELECT DISTINCT
        puid
    FROM bookmate.audition
    WHERE CAST(msk_business_dt_str AS DATE) = DATE '2024-12-02'
),

activity AS (
    -- Активность этих пользователей начиная с 2 декабря
    SELECT
        a.puid,
        CAST(a.msk_business_dt_str AS DATE) AS activity_date
    FROM bookmate.audition AS a
    JOIN base_users AS b
        ON a.puid = b.puid
    WHERE CAST(a.msk_business_dt_str AS DATE) >= DATE '2024-12-02'
)

SELECT
    activity_date - DATE '2024-12-02' AS day_since_install,
    COUNT(DISTINCT puid) AS retained_users,
    ROUND(
        COUNT(DISTINCT puid)::numeric
        / MAX(COUNT(DISTINCT puid)) OVER (),
        2
    ) AS retention_rate
FROM activity
GROUP BY day_since_install
ORDER BY day_since_install;
