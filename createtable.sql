---Starting with creating tablespace
CREATE TABLESPACE my_car_db
  DATAFILE 'my_car_db.dat' 
    SIZE 20M
  ONLINE;
-----creating temporary tablespace
CREATE TEMPORARY TABLESPACE my_car_db_tmp
  TEMPFILE 'my_car_db_tmp1.dbf'
    SIZE 5M
    AUTOEXTEND ON;
----create new user
CREATE USER mycar_user
  IDENTIFIED BY mycar_user
  DEFAULT TABLESPACE my_car_db
  TEMPORARY TABLESPACE my_car_db_tmp
  QUOTA 20M on my_car_db;
-----grant create session
GRANT create session TO mycar_user;
GRANT create TABLE TO mycar_user;
GRANT create view TO mycar_user;
GRANT create any trigger TO mycar_user;
GRANT create any procedure TO mycar_user;
GRANT create SEQUENCE TO mycar_user;
GRANT create SYNONYM TO mycar_user;

