/* 8. Traer todos los actores que hayan actuado en alguna película (sin repetir) y además
mostrar su película preferida. Si no tienen película preferida el actor NO DEBE
APARECER. */

select distinct concat(a.nombre, " ", a.apellido), a.id_pelicula_preferida
from actor as a
inner join actor_pelicula as ap on a.id = ap.id_actor
inner join pelicula as p on ap.id_pelicula = p.id
where id_pelicula_preferida is not null
