/* 3.Obtener el rating más bajo y más alto de las películas por género.*/

select id_genero, min(rating), max(rating)
from pelicula
group by id_genero