INSERT INTO seeking (seeking)
(
SELECT SUBSTRING_INDEX(seeking, ', ', 1) i
FROM my_contacts
)
UNION
(
SELECT SUBSTRING_INDEX(seeking, ', ', -1) i
FROM my_contacts
)
EXCEPT 
(
SELECT NULL 
)
ORDER BY i