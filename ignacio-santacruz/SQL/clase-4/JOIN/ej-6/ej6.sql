/* 6. Traer todos los actores (sin repetir) que hayan actuado en alguna película luego del
año 2000. */

select distinct concat(a.nombre, " ", a.apellido)
from actor as a
inner join actor_pelicula as ap on a.id = ap.id_actor
inner join pelicula as p on ap.id_pelicula = p.id
where p.fecha_de_estreno > "2000-01-01"