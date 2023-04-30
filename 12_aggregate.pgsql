SELECT
  make,
  MIN(price) AS "Most Affordable",
  MAX(price) AS "Most Expensive",
  ROUND(AVG(price), 2) AS "Average Cost",
  SUM(price) AS "Total Value"
FROM
  car
GROUP BY
  make
ORDER BY
  "Average Cost" DESC,
  "Most Expensive" DESC,
  "Most Affordable",
  make