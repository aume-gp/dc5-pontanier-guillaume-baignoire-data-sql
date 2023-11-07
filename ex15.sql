--Requête 15. Trouver les entités et officiers associés qui ont une relation avant une certaine date (par exemple, le 1er janvier 2010) :
SELECT
    entity.name AS name_entity,
    officer.name AS name_officer,
    assoc_officer_entity.start_date
FROM
    assoc_officer_entity
JOIN
    entity ON assoc_officer_entity.entity = entity.id
JOIN
    officer ON assoc_officer_entity.officer = officer.id
WHERE
    assoc_officer_entity.start_date < '2010-01-01';