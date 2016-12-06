/* 2.Obtener el rating promedio de las películas por género.*/

select id_genero, avg(rating)
from pelicula
group by id_genero