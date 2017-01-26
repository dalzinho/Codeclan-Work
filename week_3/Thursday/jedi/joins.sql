-- SELECT l.colour FROM lightsabers l;

SELECT j.name, l.colour, l.hilt_metal FROM jedi j
INNER JOIN lightsabers l
ON j.id = l.owner_id;