SELECT
  country_of_birth,
  COUNT(*)
FROM
  person
WHERE
  country_of_birth IS NOT NULL
GROUP BY
  country_of_birth
HAVING
  COUNT(*) >= 20
ORDER BY
  country_of_birth;