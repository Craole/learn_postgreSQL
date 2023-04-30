SELECT
  COALESCE(email, 'N/A') AS email
FROM
  person;

-- SELECT  10 / 0 AS "Division by ZERO";
SELECT
  10 / NULL AS "Division by NULL",
  NULLIF(10, 10) AS "NULLIF values are the same",
  NULLIF(10, 20) AS "NULLIF values differ",
  10 / NULLIF(2, 20) AS "Division by NULLIF result",
  10 / NULLIF(0, 0) AS "Division by ZERO via NULLIF",
  COALESCE(10 / NULLIF(0, 0), 0) AS "Division by ZERO via NULLIF & COALESCE";