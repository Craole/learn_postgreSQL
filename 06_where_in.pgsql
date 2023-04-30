SELECT
  *
FROM
  person
WHERE
  gender IN ('Male', 'Female')
  AND country_of_birth IN ('Jamaica', 'Barbados', 'Canada', 'Japan')
ORDER BY
  country_of_birth,
  first_name,
  last_name;