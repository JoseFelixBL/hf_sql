INSERT INTO zip_code (city, state)
SELECT 
SUBSTRING_INDEX(location, ',', 1),
TRIM(BOTH FROM SUBSTRING(location, LENGTH(SUBSTRING_INDEX(location, ',', 1)) + 2))
 FROM my_contacts
GROUP BY location
;