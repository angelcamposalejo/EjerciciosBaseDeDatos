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
CREATE TABLE cine (
    id_cine INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    id_movie INT(10) NOT NULL,
    FOREIGN KEY (id_movie)
        REFERENCES movie (id_movie)
);
CREATE TABLE amigos (
    id_amigo INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_movie INT(10) NOT NULL,
    nombre_movie VARCHAR(50) NOT NULL,
    id_cine INT(10) NOT NULL,
    nombre_cine VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_movie)
        REFERENCES movie (id_movie),
    FOREIGN KEY (id_cine)
        REFERENCES cine (id_cine)
);
insert into movie(movie,duracion,clasificacion,subtitulos,lenguaje,raiting)values
('señor de los anillos 1',280,'B','Espanol','Ingles','*****'),
('señor de los anillos 2',270,'B','Espanol','Ingles','*****'),
('señor de los anillos 3',290,'B','Espanol','Ingles','*****'),
('Avengers 1',220,'B','Espanol','Ingles','*****'),
('Avengers 2',280,'B','Espanol','Ingles','*****')
;
insert into cine(nombre,ciudad,estado,id_movie)values
('Parque Celaya','Celaya','Guanajuato',1),
('Galerias Celaya','Celaya','Guanajuato',2),
('Veleros Celaya','Celaya','Guanajuato',1),
('Galerias Qro','Queretaro','Queretaro',2),
('Qro Estadio','Queretaro','Queretaro',1);
insert into amigos(nombre,id_movie,nombre_movie,id_cine,nombre_cine)values
('angel',1,'Señor de los anillos 1',1,'Parque Celaya'),
('angel',1,'Señor de los anillos 1',3,'Veleros Celaya'),
('angel',1,'Señor de los anillos 1',1,'Qro Estadio'),
('angel',2,'Señor de los anillos 2',2,'Galerias Celaya'),
('angel',2,'Señor de los anillos 2',4,'Galerias Qro');