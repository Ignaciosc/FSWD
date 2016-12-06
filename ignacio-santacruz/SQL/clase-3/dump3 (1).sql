-- Esto es un comentario

-- Primero tratamos de borrar la base, en caso de que exista

DROP DATABASE IF EXISTS peliculas_clase_3;

CREATE DATABASE peliculas_clase_3;

/*
Esto es otro comentario
pero
este es
multi
linea
*/

USE peliculas_clase_3;

CREATE TABLE genero (
    id                  INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre              VARCHAR(100) NOT NULL,
    ranking             INT UNSIGNED NOT NULL UNIQUE,
    activo              TINYINT UNSIGNED DEFAULT 1 NOT NULL,
    fecha_de_creacion   DATE NOT NULL
);

CREATE TABLE pelicula (
    id      			INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    titulo  			VARCHAR(500) NOT NULL,
    rating  			DECIMAL(3,1) UNSIGNED NOT NULL,
    premios 			INT UNSIGNED DEFAULT 0 NOT NULL,
    fecha_de_estreno 	DATE NOT NULL,
    duracion 			INT UNSIGNED NULL,
    id_genero           INT UNSIGNED,
    FOREIGN KEY (id_genero) REFERENCES genero(id)
);

CREATE TABLE actor (
    id          		INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre      		VARCHAR(100) NOT NULL,
    apellido    		VARCHAR(100) NOT NULL,
    rating              DECIMAL(3,1) UNSIGNED NULL
);

CREATE TABLE actor_pelicula (
	id 					INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_actor            INT UNSIGNED NOT NULL,
    id_pelicula         INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_actor) REFERENCES actor(id),
    FOREIGN KEY (id_pelicula) REFERENCES pelicula(id)
);

INSERT INTO genero (nombre, ranking, activo, fecha_de_creacion) VALUES
('Comedia', 1, 1, '2016-7-04'),
('Terror', 2, 1, '2014-7-04'),
('Drama', 3, 1, '2013-7-04'),
('Accion', 4, 1, '2011-7-04'),
('Ciencia Ficcion', 5, 1, '2010-7-04'),
('Suspenso', 6, 1, '2013-7-04'),
('Animacion', 7, 1, '2005-7-04'),
('Aventuras', 8, 1, '2003-7-04'),
('Documental', 9, 1, '2008-7-04'),
('Infantiles', 10, 1, '2013-7-04')
;

INSERT INTO pelicula (titulo, rating, premios, fecha_de_estreno, duracion, id_genero) VALUES 
('Avatar', 7.9, 3, '2010-10-04', 120, 5),
('Titanic', 7.7, 11, '1997-9-04', 320, 3),
('La Guerra de las galaxias: Episodio VI', 9.1, 7, '2004-7-04', NULL, 5),
('La Guerra de las galaxias: Episodio VII', 9, 6, '2003-11-04', 180, 5),
('Parque Jurasico', 8.3, 5, '1999-1-04', 270, 5),
('Harry Potter y las Reliquias de la Muerte - Parte 2', 9, 2, '2008-7-04', 190, 6),
('Transformers: el lado oscuro de la luna', 0.9, 1, '2005-7-04', NULL, 5),
('Harry Potter y la piedra filosofal', 10, 1, '2008-4-04', 120, 8),
('Harry Potter y la cámara de los secretos', 3.5, 2, '2009-8-04', 200, 8),
('El rey león', 9.1, 3, '2000-2-04', NULL, 10),
('Alicia en el país de las maravillas', 5.7, 2, '2008-7-04', 120, 10),
('Buscando a Nemo', 8.3, 2, '2000-7-04', 110, 7),
('Toy Story', 6.1, 0, '2008-3-04', 150, 7),
('Toy Story 2', 3.2, 2, '2003-4-04', 120, 7),
('La vida es bella', 8.3, 5, '1994-10-04', NULL, 3),
('Mi pobre angelito', 3.2, 1, '1989-1-04', 120, 1),
('Intensamente', 9, 2, '2008-7-04', 120, 7),
('Carrozas de fuego', 9.9, 7, '1980-7-04', 180, 9),
('Big', 7.3, 2, '1988-2-04', 130, 8),
('I am Sam', 9, 4, '1999-3-04', 130, 3),
('Hotel Transylvania', 7.1, 1, '2012-5-04', 90, 10)
;

INSERT INTO actor (nombre, apellido, rating) VALUES
('Sam', 'Worthington', 7.5),
('Zoe', 'Saldana', 5.5),
('Sigourney', 'Weaver', 9.7),
('Leonardo', 'Di Caprio', 3.5),
('Kate', 'Winslet', 1.5),
('Billy', 'Zane', 7.5),
('Mark', 'Hamill', 6.5),
('Harrison', 'Ford', 7.5),
('Carrie', 'Fisher', 7.5),
('Sam', 'Neill', 2.5),
('Laura', 'Dern', 7.5),
('Jeff', 'Goldblum', 4.5),
('Daniel', 'Radcliffe', 7.5),
('Emma', 'Watson', 2.5),
('Rupert', 'Grint', 6.2),
('Shia', 'LaBeouf', 9.5),
('Rosie', 'Huntington-Whiteley', 1.5),
('Matthew', 'Broderick', 6.1),
('James', 'Earl Jones', 7.5),
('Jeremy', 'Irons', 7.2),
('Johnny', 'Depp', 1.5),
('Helena', 'Bonham Carter', 7.5),
('Mia', 'Wasikowska', 7.5),
('Albert', 'Brooks', 2.5),
('Ellen', 'DeGeneres', 2.6),
('Alexander', 'Gould', 7.5),
('Tom', 'Hanks', 4.4),
('Tim', 'Allen', 7.5),
('Sean', 'Penn', 9.2),
('Adam', 'Sandler', 3.1),
('Renee', 'Zellweger', 2.9)
;

INSERT INTO actor_pelicula (id_actor, id_pelicula) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(7, 4),
(8, 3),
(8, 4),
(9, 3),
(9, 4),
(10, 5),
(11, 5),
(12, 5),
(13, 6),
(13, 8),
(13, 9),
(14, 6),
(14, 8),
(14, 9),
(15, 6),
(15, 8),
(15, 9),
(16, 7),
(17, 7),
(18, 7),
(19, 10),
(20, 10),
(21, 11),
(22, 11),
(22, 9),
(23, 11),
(24, 12),
(25, 12),
(26, 12),
(27, 13),
(27, 14),
(27, 19),
(28, 13),
(28, 14),
(29, 20),
(30, 21)
;