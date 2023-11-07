--Requête 19. Lister les officiers qui ont des associations avec des entités et des intermédiaires :
SELECT DISTINCT
  officer.name
FROM 
  officer
JOIN 
  assoc_officer_entity ON officer.id = assoc_officer_entity.officer
JOIN 
  assoc_inter_offi ON officer.id = assoc_inter_offi.officer;