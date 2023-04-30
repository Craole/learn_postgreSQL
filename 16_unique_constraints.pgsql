SELECT
  email,
  count(*)
FROM
  person
GROUP BY
  email
HAVING
  COUNT(*) > 1
ORDER BY
  count(*) DESC;

-- Unique values per column
-- ALTER TABLE person
-- DROP CONSTRAINT IF EXISTS person_email_key,
-- ADD CONSTRAINT person_email_key UNIQUE (email);
SELECT DISTINCT
  gender
FROM
  person;

-- Unique values per column
ALTER TABLE person
DROP CONSTRAINT IF EXISTS gender_constraint,
ADD CONSTRAINT gender_constraint CHECK (
  gender IN (
    "Male",
    "Female",
    "Transgender",
    "Non-binary",
    "Genderqueer",
    "Genderfluid",
    "Agender",
    "Bigender",
    "Two - Spirit",
    "Androgynous",
    "Neutrois",
    "Demigender",
    "Third Gender",
    "Pangender",
    "Polygender",
    "Cisgender",
    "Intersex"
  )
);