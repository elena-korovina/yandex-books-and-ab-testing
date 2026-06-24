WITH user_months AS (
    -- Количество месяцев активности каждого пользователя
    SELECT
        a.puid,
        g.usage_geo_id_name AS city,
        COUNT(DISTINCT DATE_TRUNC('month', CAST(a.msk_business_dt_str AS DATE))) AS active_months
    FROM bookmate.audition AS a
    JOIN bookmate.geo AS g
        ON a.usage_geo_id = g.usage_geo_id
    WHERE g.usage_geo_id_name IN ('Москва', 'Санкт-Петербург')
    GROUP BY
        a.puid,
        g.usage_geo_id_name
),

user_ltv AS (
    -- LTV каждого пользователя
    SELECT
        city,
        puid,
        active_months * 399 AS user_revenue
    FROM user_months
)

SELECT
    city,
    COUNT(DISTINCT puid) AS total_users,
    ROUND(AVG(user_revenue)::numeric, 2) AS ltv
FROM user_ltv
GROUP BY city
ORDER BY city;
