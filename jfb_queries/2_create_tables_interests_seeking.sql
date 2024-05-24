CREATE TABLE interests
(
	interest_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	interest VARCHAR(40)
)
;
CREATE TABLE seeking
(
	seeking_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	seeking VARCHAR(40)
)
;
ALTER TABLE my_contacts
ADD COLUMN contact_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST 
;
CREATE TABLE contact_interest
(
	contact_id INT,
	interest_id INT,
	FOREIGN KEY (contact_id) REFERENCES my_contacts (contact_id),
	FOREIGN KEY (interest_id) REFERENCES interests (interest_id)	
)
;
CREATE TABLE contact_seeking
(
	contact_id INT,
	seeking_id INT,
	FOREIGN KEY (contact_id) REFERENCES my_contacts (contact_id),
	FOREIGN KEY (seeking_id) REFERENCES seeking (seeking_id)	
)
;
