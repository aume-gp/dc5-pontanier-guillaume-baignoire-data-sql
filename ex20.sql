--Requête 20. Trouver les entités sans officiers associés :
SELECT
  entity.name
FROM
  entity
  LEFT JOIN assoc_officer_entity ON entity.id = assoc_officer_entity.entity
WHERE
  assoc_officer_entity.officer IS NULL;