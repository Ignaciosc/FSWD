/*5. Traer todos los actores que hayan actuado en alguna película (sin repetir)*/

select distinct concat(a.nombre, " ", a.apellido)
from actor as a
inner join actor_pelicula as ap on a.id = ap.id_actor
inner join pelicula as p on ap.id_pelicula = p.id