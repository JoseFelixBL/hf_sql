# prueba para ver la selección del p.prof_id antes de hacer el update
#
-- SELECT mc.profession, p.profession, mc.prof_id, p.prof_id
-- FROM my_contacts mc
-- INNER JOIN profession p ON mc.profession = p.profession
-- ;
#
# Actualizar prof_id
UPDATE my_contacts mc
SET prof_id = (
  SELECT p.prof_id
  FROM profession p
  WHERE mc.profession = p.profession
)
;
#
# Actualizar status_id
UPDATE my_contacts mc
SET status_id = (
  SELECT s.status_id
  FROM `status` s
  WHERE mc.`status` = s.`status`
)
;
#
# Actualizar zip_code
UPDATE my_contacts mc
SET zip_code = (
  SELECT z.zip_code
  FROM zip_code z
  WHERE mc.location = CONCAT_WS(', ', z.city, z.state)
)
;