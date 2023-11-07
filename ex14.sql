--Requête 14. Trouver les entités qui ont été actives pendant plus de 10 ans (en supposant que "lifetime" est en années) :
SELECT
  entity.name,
  source.source,
  entity.lifetime
FROM
  entity
JOIN
  source ON entity.source = source.id
WHERE
  entity.lifetime > 10;