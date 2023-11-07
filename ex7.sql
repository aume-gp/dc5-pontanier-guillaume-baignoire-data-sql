--Requête 7. Lister les entités et leurs pays d'origine :
SELECT
  entity.name,
  country.country
FROM
  entity
JOIN
  address ON entity.id_address = address.id_address
JOIN
  country ON address.countries = country.code;