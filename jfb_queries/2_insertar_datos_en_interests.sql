INSERT INTO interests (interest)
(
SELECT SUBSTRING_INDEX(interests, ', ', 1) i
FROM my_contacts
)
UNION 
(
SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(interests, ', ', 2), ', ', -1) i
FROM my_contacts
)
UNION
(
SELECT SUBSTRING_INDEX(interests, ', ', -1) i
FROM my_contacts
)
EXCEPT 
(
SELECT NULL 
)
ORDER BY i