DROP TABLE lightsabers;
DROP TABLE jedi;



CREATE TABLE jedi (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  age INT2,
  darkside BOOLEAN
);

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  colour VARCHAR(255) NOT NULL,
  hilt_metal VARCHAR(255) NOT NULL,
  owner_id INT8 REFERENCES jedi(id)
  );

-- populate and tinker with jedi
INSERT INTO jedi (name, age, darkside) VALUES ('Luke', 21, false);
INSERT INTO jedi (name, age, darkside) VALUES ('Vader', 100, true);
INSERT INTO jedi (name, age) VALUES ('Obi Wan', 33);
INSERT INTO jedi (name, age, darkside) VALUES ('Anakin', 22, false);

UPDATE jedi SET darkside = true;
UPDATE jedi SET darkside = false WHERE name = 'Luke' OR name = 'Obi Wan';
UPDATE jedi SET age = 23, darkside = true WHERE name = 'Anakin';
UPDATE jedi SET darkside = true WHERE name = 'Anakin';
-- DELETE FROM jedi WHERE name = 'Luke';

INSERT INTO jedi (name, age, darkside) VALUES ('Obi Wan', 32, false);
UPDATE jedi SET age = 33 WHERE name = 'Obi Wan' AND age = 32;

-- populate and tinker with lightsabers
INSERT INTO lightsabers (colour, hilt_metal, owner_id) VALUES ('green', 'paladium', 2);
INSERT INTO lightsabers (colour, hilt_metal, owner_id) VALUES ('green','gold', 3);
INSERT INTO lightsabers (colour, hilt_metal, owner_id) VALUES ('green','gold', 3);

SELECT * FROM lightsabers;
-- INSERT INTO lightsabers (colour, metal, owner) VALUES ('','','');


