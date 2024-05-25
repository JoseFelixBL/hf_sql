# Consulta de seeking 'buscando'
SELECT last_name, first_name, mc.seeking, s.seeking
FROM my_contacts mc
INNER JOIN contact_seeking cs
ON mc.contact_id = cs.contact_id
INNER JOIN seeking s
ON s.seeking_id = cs.seeking_id