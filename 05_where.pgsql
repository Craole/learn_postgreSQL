SELECT
  *
FROM
  person
WHERE
  (
    gender = 'Male'
    OR gender = 'Female'
  )
  AND (
    country_of_birth = 'Jamaica'
    OR country_of_birth = 'Barbados'
    OR country_of_birth = 'Canada'
    OR country_of_birth = 'Japan'
  )
ORDER BY
  country_of_birth,
  first_name,
  last_name;