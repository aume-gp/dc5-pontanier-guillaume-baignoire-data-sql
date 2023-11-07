--Requête 11. Lister les entités et leurs intermédiaires associés :
SELECT
  entity.name AS name_entity,
  intermediary.name AS name_intermediary
FROM
  assoc_inter_entity
JOIN
  entity ON assoc_inter_entity.entity = entity.id
JOIN
  intermediary ON assoc_inter_entity.inter = intermediary.id;