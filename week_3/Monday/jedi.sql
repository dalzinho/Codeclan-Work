DROP TABLE jedi;

CREATE TABLE jedi (
  name VARCHAR(255),
  age INT2,
  darkside BOOLEAN
);

INSERT INTO jedi (name, age, darkside) VALUES ('Luke', 21, false);
INSERT INTO jedi (name, age, darkside) VALUES ('Vader', 100, true);
INSERT INTO jedi (name, age) VALUES ('Obi Wan', 33);
INSERT INTO jedi (name, age, darkside) VALUES ('Anakin', 22, false);

UPDATE jedi SET darkside = true;
UPDATE jedi SET darkside = false WHERE name = 'Luke' OR name = 'Obi Wan';
UPDATE jedi SET age = 23 WHERE name = 'Anakin';
UPDATE jedi SET darkside = true WHERE name = 'Anakin';
