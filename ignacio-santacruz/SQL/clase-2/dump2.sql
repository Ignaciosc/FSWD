-- Esto es un comentario

-- Primero tratamos de borrar la base, en caso de que exista
DROP DATABASE IF EXISTS peliculas_clase_2;


CREATE DATABASE peliculas_clase_2;


/*
Esto es otro comentario
pero
este es
multi
linea
*/

USE peliculas_clase_2;

CREATE TABLE peliculas (
    id      			INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    titulo  			VARCHAR(500) NOT NULL,
    rating  			DECIMAL(3,1) UNSIGNED NOT NULL,
    premios 			INT UNSIGNED DEFAULT 0,
    fecha_de_estreno 	DATE NOT NULL,
    duracion 			INT UNSIGNED NULL
);



CREATE TABLE actores (
    id          		INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre      		VARCHAR(100) NOT NULL,
    apellido    		VARCHAR(100) NOT NULL
);


CREATE TABLE prueba (
    id      INT UNSIGNED PRIMARY KEY AUTO_INCREMENT
);



INSERT INTO peliculas (titulo, rating, premios, fecha_de_estreno, duracion) VALUES 
('Avatar', 2.9, 2, '2003-10-04', 120),
('Titanic', 8.8, 3, '2009-7-04', 320),
('La Guerra de las galaxias: Episodio VI', 9.1, 7, '2004-7-04', NULL),
('La Guerra de las galaxias: Episodio VII', 9, 6, '2003-7-04', 180),
('Parque Jurasico', 8.3, 5, '1999-7-04', 270),
('Harry Potter y las Reliquias de la Muerte - Parte 2', 9, 2, '2008-7-04', 190),
('Transformers: el lado oscuro de la luna', 0.9, 1, '2005-7-04', NULL),
('Harry Potter y la piedra filosofal', 10, 1, '2008-7-04', 120),
('Harry Potter y la cámara de los secretosl', 3.5, 2, '2009-7-04', 200),
('El rey león', 9.1, 3, '2000-7-04', NULL),
('Alicia en el país de las maravillas', 5.7, 2, '2008-7-04', 120),
('Buscando a Nemo', 8.3, 2, '2000-7-04', 110),
('Toy Story', 6.1, 0, '2008-7-04', 150),
('Toy Story 2', 3.2, 2, '2003-7-04', 120),
('La vida es bella', 8.3, 5, '1994-10-04', NULL),
('Mi pobre angelito', 3.2, 1, '1989-7-04', 120),
('Intensamente', 9, 2, '2008-7-04', 120),
('Carrozas de fuego', 9.9, 7, '1980-7-04', 180)
;

INSERT INTO actores (nombre, apellido) VALUES
('Sam', 'Worthington'),
('Zoe', 'Saldana'),
('Sigourney', 'Weaver'),
('Leonardo', 'Di Caprio'),
('Kate', 'Winslet'),
('Billy', 'Zane'),
('Mark', 'Hamill'),
('Harrison', 'Ford'),
('Carrie', 'Fisher'),
('Sam', 'Neill'),
('Laura', 'Dern'),
('Jeff', 'Goldblum'),
('Daniel', 'Radcliffe'),
('Emma', 'Watson'),
('Rupert', 'Grint'),
('Shia', 'LaBeouf'),
('Rosie', 'Huntington-Whiteley'),
('Matthew', 'Broderick'),
('James', 'Earl Jones'),
('Jeremy', 'Irons'),
('Johnny', 'Depp'),
('Helena', 'Bonham Carter'),
('Mia', 'Wasikowska'),
('Albert', 'Brooks'),
('Ellen', 'DeGeneres'),
('Alexander', 'Gould'),
('Tom', 'Hanks'),
('Tim', 'Allen'),
('Denzel', 'Washington'),
('Sean', 'Penn'),
('Adam', 'Sandler'),
('Renee', 'Zellweger')
;