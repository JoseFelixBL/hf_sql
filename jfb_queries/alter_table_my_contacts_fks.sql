ALTER TABLE my_contacts
ADD COLUMN prof_id INT REFERENCES profession(prof_id),
ADD COLUMN status_id INT REFERENCES `status`(status_id),
ADD COLUMN zip_code INT REFERENCES zip_code(zip_code)
;