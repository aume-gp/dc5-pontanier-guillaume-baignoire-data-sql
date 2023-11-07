--Requête 12. Trouver le nombre d'entités associées à chaque intermédiaire :
SELECT
  intermediary.name AS name_intermediary,
  COUNT(assoc_inter_entity.entity) AS number_entity
FROM
  intermediary
LEFT JOIN
  assoc_inter_entity
ON
  intermediary.id = assoc_inter_entity.inter
GROUP BY
  intermediary.id,
  intermediary.name;