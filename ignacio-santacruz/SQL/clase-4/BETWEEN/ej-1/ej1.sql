-- 1. Traer todas las películas estrenadas entre el año 2000 y 2010 (inclusive).

select *
from pelicula
where year(fecha_de_estreno) between 2000 and 2010