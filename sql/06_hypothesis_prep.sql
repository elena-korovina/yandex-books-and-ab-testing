SELECT
    g.usage_geo_id_name AS city,
    a.puid,
    SUM(a.hours) AS hours
FROM bookmate.audition AS a
JOIN bookmate.geo AS g
    ON a.usage_geo_id = g.usage_geo_id
WHERE g.usage_geo_id_name IN ('Москва', 'Санкт-Петербург')
GROUP BY
    g.usage_geo_id_name,
    a.puid;
