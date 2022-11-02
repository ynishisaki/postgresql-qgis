\c qgisdb

CREATE TABLE streets (id serial not null primary key, name varchar(50));

CREATE TABLE people (id serial not null primary key,
  name varchar(50),
  house_no int not null,
  street_id int not null,
  phone_no varchar null );

-- CREATE TABLE address (
--   id serial not null primary key,
--   name varchar(50),
--   house_no int not null,
--   street_id int not null,
--   phone_no varchar null );