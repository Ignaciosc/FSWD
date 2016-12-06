/* 3. Traer todos los actores. Y si tienen, película preferida mostrar su título. */

select a.nombre, a.apellido, p.titulo as pelicula_preferida
from actor as a
	left join pelicula as p on a.id_pelicula_preferida = p.id