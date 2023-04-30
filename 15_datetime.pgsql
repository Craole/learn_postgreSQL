-- https://www.postgresql.org/docs/15/functions-datetime.html
SELECT
  NOW() AS "TIMESTAMP with Time Zone",
  NOW()::TIMESTAMP AS "TIMESTAMP",
  NOW()::DATE AS "DATE",
  NOW()::TIME AS "TIME";

SELECT
  EXTRACT(
    EPOCH
    FROM
      NOW()
  ) AS "Extract - EPOCH",
  to_timestamp(
    EXTRACT(
      EPOCH
      FROM
        NOW()
    )
  ) AS "EPOCH to TIMESTAMP",
  EXTRACT(
    DECADE
    FROM
      NOW()
  ) AS "Extract - DECADE",
  EXTRACT(
    YEAR
    FROM
      NOW()
  ) AS "Extract - YEAR",
  EXTRACT(
    MONTH
    FROM
      NOW()
  ) AS "Extract - MONTH",
  EXTRACT(
    WEEK
    FROM
      NOW()
  ) AS "Extract - WEEK",
  EXTRACT(
    DAY
    FROM
      NOW()
  ) AS "Extract - DAY",
  EXTRACT(
    DOW
    FROM
      NOW()
  ) AS "Extract - DOW",
  EXTRACT(
    HOUR
    FROM
      NOW()
  ) AS "Extract - HOUR",
  EXTRACT(
    MINUTE
    FROM
      NOW()
  ) AS "Extract - MINUTE",
  EXTRACT(
    SECOND
    FROM
      NOW()
  ) AS "Extract - SECOND";

SELECT
  NOW()::DATE AS "DATE",
  (NOW() + INTERVAL '10 DAY')::DATE AS "Interval - DAY",
  (NOW() - INTERVAL '10 MONTH')::DATE AS "Interval - MONTH",
  (NOW() - INTERVAL '10 YEAR')::DATE AS "Interval - YEAR";

SELECT
  AGE (NOW(), '2013-04-29') AS "AGE",
  AGE (
    timestamptz '2013-07-01 12:00:00',
    timestamptz '2013-04-01 12:00:00'
  ) AS "AGE From TIMESTAMPS";

SELECT
  first_name,
  last_name,
  COALESCE(country_of_birth, 'Unknown') AS "Country",
  date_of_birth,
  AGE (NOW()::DATE, date_of_birth) AS age
FROM
  person
ORDER BY
  -- age --youngest
  age DESC -- oldest
LIMIT
  1;