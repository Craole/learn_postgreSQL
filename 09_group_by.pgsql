SELECT
  country_of_birth,
  COUNT(*)
FROM
  person
WHERE
  country_of_birth IS NOT NULL
GROUP BY
  country_of_birth
ORDER BY
  country_of_birth;