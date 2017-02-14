DROP TABLE zombies CASCADE;
DROP TABLE bites CASCADE;
DROP TABLE victims CASCADE;

CREATE TABLE victims (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  run_speed INT2
);

CREATE TABLE zombies (
  id SERIAL8 primary key,
  name VARCHAR(255),
  type VARCHAR(255)
);

CREATE TABLE bites (
  id SERIAL8 PRIMARY KEY,
  victim_id INT8 REFERENCES zombies(id),
  zombie_id INT8 REFERENCES victims(id),
  infected_on DATE not null
);

INSERT INTO victims (name, run_speed) VALUES ('John', 45);
INSERT INTO victims (name, run_speed) VALUES ('Paul', 45);
INSERT INTO victims (name, run_speed) VALUES ('George', 45);
INSERT INTO victims (name, run_speed) VALUES ('Ringo', 45);


SELECT * FROM victims;

INSERT INTO zombies (name, type) VALUES ('Norman', 'Crawler');
INSERT INTO zombies (name, type) VALUES ('Gilbert', 'Walker');
INSERT INTO zombies (name, type) VALUES ('Charles', 'Runner');
INSERT INTO zombies (name, type) VALUES ('Rupert', 'Bearded');

SELECT * FROM zombies;



INSERT INTO bites (zombie_id, victim_id, infected_on) VALUES (1, 1, 'Jan 12 2017');
INSERT INTO bites (zombie_id, victim_id, infected_on) VALUES (2, 2, 'Jan 20 2017');
INSERT INTO bites (zombie_id, victim_id, infected_on) VALUES (3, 3, 'Jan 23 2017');
INSERT INTO bites (zombie_id, victim_id, infected_on) VALUES (1, 2, 'Jan 12 2017');

SELECT * FROM zombies WHERE name = 'Norman';
SELECT victim_id from bites where zombie_id = 1;
SELECT name from victims where id IN (1, 2);