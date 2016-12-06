/* 2. Traer los actores que tengan película preferida indicando el título de la misma. */

select a.nombre, a.apellido, p.titulo as pelicula_preferida
from actor as a
	inner join pelicula as p on a.id_pelicula_preferida = p.id