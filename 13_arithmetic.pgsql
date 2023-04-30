SELECT
  make,
  model,
  price,
  ROUND(price * .10,2) AS "Discount",
  ROUND(price - (price * .10),2) AS "Discounted Price"
FROM
  car
GROUP BY
  make,
  model,
  price
ORDER BY
  make