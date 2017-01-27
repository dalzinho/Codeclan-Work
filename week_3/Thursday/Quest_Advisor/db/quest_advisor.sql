DROP TABLE users CASCADE;
DROP TABLE locations CASCADE;
DROP TABLE visits;

CREATE TABLE users (
  id SERIAL4 primary key,
  name VARCHAR(255)
);

CREATE TABLE locations (
  id SERIAL4 primary key,
  category VARCHAR(255),
  name VARCHAR(255)
);

CREATE TABLE visits (
  visit_id SERIAL4 primary key,
  user_id INT4 references users(id) ON DELETE CASCADE,
  location_id INT4 references locations(id) ON DELETE CASCADE,
  review TEXT
);
