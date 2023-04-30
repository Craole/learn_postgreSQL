SELECT
  DISTINCT country_of_birth AS country
FROM
  person
WHERE
  country_of_birth IS NOT NULL
ORDER BY
  country_of_birth
;