drop database if exists bugtrackersystem_development;
create database bugtrackersystem_development;
drop database if exists bugtrackersystem_test;
create database bugtrackersystem_test;
drop database if exists bugtrackersystem_production;
create database bugtrackersystem_production;
GRANT ALL PRIVILEGES ON bugtrackersystem_development.*
  TO 'root'@'localhost'
  IDENTIFIED BY '' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON bugtrackersystem_test.* TO 'root'@'localhost'
  IDENTIFIED BY '' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON bugtrackersystem_production.*
  TO 'root'@'localhost'
  IDENTIFIED BY '' WITH GRANT OPTION;