--Requête 16. Trouver le nombre d'entités par pays :
SELECT
  country.country,
  COUNT(entity.id) AS number_entity
FROM
  entity
  JOIN address ON entity.id_address = address.id_address
  JOIN country ON address.countries = country.code
GROUP BY
  country.country;