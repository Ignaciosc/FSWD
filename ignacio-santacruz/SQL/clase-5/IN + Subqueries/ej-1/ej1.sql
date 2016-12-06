-- 1. Traer todos los actores cuya película favorita contenga la letra t
select concat(nombre, " ", apellido)
from actor
where id_pelicula_preferida in (
	select id
    from pelicula
    where titulo like '%t%')