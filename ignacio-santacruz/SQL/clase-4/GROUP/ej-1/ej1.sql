-- 1.Traer todos los géneros y la cantidad de películas del mismo.

select id_genero, count(id) as total
from pelicula
group by id_genero
