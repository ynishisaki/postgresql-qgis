\c qgisdb

CREATE TABLE streets (id serial not null primary key, name varchar(50));

CREATE TABLE people (id serial not null primary key,
  name varchar(50),
  house_no int not null,
  street_id int not null,
  phone_no varchar null,
  the_geom geometry CONSTRAINT people_geom_point_chk
    CHECK(st_geometrytype(the_geom) = 'ST_Point'::text
          OR the_geom IS NULL));

insert into geometry_columns values
  ('','public','people','the_geom',2,4326,'POINT');
insert into people (name,house_no, street_id, phone_no, the_geom)
        values ('Fault Towers',
                 34,
                 3,
                 '072 812 31 28',
                 'SRID=4326;POINT(33 -33)');