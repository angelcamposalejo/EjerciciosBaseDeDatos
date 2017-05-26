create database cinepolis;
use cinepolis;
CREATE TABLE movie (
    id_movie INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    movie VARCHAR(50) NOT NULL,
    duracion INT(10) NOT NULL
);
alter table movie add clasificacion varchar(10) not null,
add subtitulos varchar(20) not null,
add lenguaje varchar(20) not null,
add raiting varchar(10) not null;