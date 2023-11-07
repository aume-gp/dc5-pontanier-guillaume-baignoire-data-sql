--Requête 9. Lister les entités et leurs sources :
SELECT
  entity.name,
  source.source
FROM
  entity
JOIN
  source ON entity.source_id = source.id;