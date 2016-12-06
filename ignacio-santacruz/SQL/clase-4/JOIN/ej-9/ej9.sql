/* 9. Traer todos los actores que hayan actuado en alguna película (sin repetir) y, si la
tuviera, mostrar su película preferida. Caso contrario mostrar “No tiene”. */

select distinct concat(a.nombre, " ", a.apellido), coalesce(a.id_pelicula_preferida, "No tiene")
from actor as a
inner join actor_pelicula as ap on a.id = ap.id_actor
inner join pelicula as p on ap.id_pelicula = p.id
-- inner join pelicula on p.titulo = a.id_pelicula_preferida`PRIMARY`