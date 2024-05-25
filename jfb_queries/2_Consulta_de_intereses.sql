# Consulta de intereses
SELECT last_name, first_name, interests, i.interest
FROM my_contacts mc
INNER JOIN contact_interest ci
ON mc.contact_id = ci.contact_id
INNER JOIN interests i
ON i.interest_id = ci.interest_id