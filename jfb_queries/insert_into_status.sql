INSERT INTO status (status) 
  SELECT mc.status FROM my_contacts mc
  WHERE mc.status IS NOT NULL 
  GROUP BY mc.status
  ORDER BY mc.status
;