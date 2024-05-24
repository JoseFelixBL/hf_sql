INSERT INTO profession (profession) 
  SELECT mc.profession FROM my_contacts mc
  GROUP BY mc.profession
  ORDER BY mc.profession
;