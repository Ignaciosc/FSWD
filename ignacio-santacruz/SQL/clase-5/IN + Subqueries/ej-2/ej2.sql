/* 2. Traer todas los actores y las películas en las que actúan salvo la película favorita del
actor contenga la letra t, en ese caso el actor no debe aparecer. */

select concat(a.nombre, " ", a.apellido), p.titulo, p.id, a.id_pelicula_preferida
from actor a
	inner join actor_pelicula ap on a.id = ap.id_actor
    inner join pelicula p on ap.id_pelicula = p.id
where a.id_pelicula_preferida not in (
	select id
	from pelicula
	where titulo like '%t%')