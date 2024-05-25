# Insertar registros en contact_seeking
#
# Como en my_contact.seeking puede haber hasta 3 intereses 
# selecciono los registros haciendo la unión de 3 queries
#
INSERT INTO contact_seeking (contact_id, seeking_id)
(
SELECT mc.contact_id mc_contact, -- mc.seeking mc_seeking, s.seeking, 
s.seeking_id
FROM my_contacts mc
INNER JOIN seeking s
WHERE SUBSTRING_INDEX(mc.seeking, ', ', 1) = s.seeking
-- ORDER BY mc.contact_id
) 
UNION 
(
SELECT mc.contact_id mc_contact, -- mc.seeking mc_seeking, s.seeking, 
s.seeking_id
FROM my_contacts mc
INNER JOIN seeking s
WHERE SUBSTRING_INDEX(SUBSTRING_INDEX(mc.seeking, ', ', 2), ', ', -1) = s.seeking
-- ORDER BY mc.contact_id
) 
UNION
(
SELECT mc.contact_id mc_contact, -- mc.seeking mc_seeking, s.seeking, 
s.seeking_id
FROM my_contacts mc
INNER JOIN seeking s
WHERE SUBSTRING_INDEX(mc.seeking, ', ', -1) = s.seeking
-- ORDER BY mc.contact_id
) ORDER BY mc_contact
