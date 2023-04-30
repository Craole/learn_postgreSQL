SELECT
  *
FROM
  person
WHERE
  date_of_birth BETWEEN '1980-01-01' AND '2000-01-01'
ORDER BY
  date_of_birth,
  last_name,
  first_name;