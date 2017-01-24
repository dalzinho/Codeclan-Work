DROP TABLE IF EXISTS bounties;

CREATE TABLE bounties (
  id SERIAL8 primary key,
  name VARCHAR(255) not null, 
  last_known_location VARCHAR(255) not null,
  favourite_weapon VARCHAR(255) not null,
  danger_level INT2 CHECK (danger_level > 0 AND  danger_level < 5)
--note that CHECK command constrains possible answers to 1..4; representing all 4 options


  );

