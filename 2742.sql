select lr.name,
    ROUND((lr.omega * 1.618), 3) AS "The N Factor"
FROM life_registry as lr
INNER JOIN dimensions as d
    ON lr.dimensions_id = d.id
WHERE d.name IN ('C875', 'C774')
    AND LOWER(lr.name) LIKE 'richard%'
ORDER BY lr.omega
