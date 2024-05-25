# Insertar registros en contact_interest
#
# Como en my_contact.interests puede haber hasta 3 intereses 
# selecciono los registros haciendo la unión de 3 queries
#
INSERT INTO contact_interest (contact_id, interest_id)
(
SELECT mc.contact_id mc_contact, -- mc.interests mc_interest, i.interest, 
i.interest_id
FROM my_contacts mc
INNER JOIN interests i
WHERE SUBSTRING_INDEX(mc.interests, ', ', 1) = i.interest
ORDER BY mc.contact_id
) 
UNION 
(
SELECT mc.contact_id mc_contact, -- mc.interests mc_interest, i.interest, 
i.interest_id
FROM my_contacts mc
INNER JOIN interests i
WHERE SUBSTRING_INDEX(SUBSTRING_INDEX(mc.interests, ', ', 2), ', ', -1) = i.interest
ORDER BY mc.contact_id
) 
UNION
(
SELECT mc.contact_id mc_contact, -- mc.interests mc_interest, i.interest, 
i.interest_id
FROM my_contacts mc
INNER JOIN interests i
WHERE SUBSTRING_INDEX(mc.interests, ', ', -1) = i.interest
ORDER BY mc.contact_id
) ORDER BY mc_contact
