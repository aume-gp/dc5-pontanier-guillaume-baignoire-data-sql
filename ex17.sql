--Requête 17. Lister les intermédiaires qui ont des associations avec plus de 5 entités :
SELECT
  intermediary.name,
  COUNT(assoc_inter_entity.entity) AS number_entity
FROM
  intermediary
  JOIN assoc_inter_entity ON intermediary.id = assoc_inter_entity.inter
GROUP BY
  intermediary.name
HAVING
  COUNT(assoc_inter_entity.entity) > 5;