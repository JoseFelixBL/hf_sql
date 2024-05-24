#
# Después de crear las tablas de profession, status y zip_code y
# rellenarlas, ya no hacen falta dichas columnas en my_contacts
#
ALTER TABLE my_contacts
DROP COLUMN `profession`,
DROP COLUMN location,
DROP COLUMN `status`
;