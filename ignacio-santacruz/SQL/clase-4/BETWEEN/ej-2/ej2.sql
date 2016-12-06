/* 2. Traer todas las películas estrenadas entre el año 2000 y 2010 (inclusive) y que su
título contenga la letra T (mayúscula o minúscula).*/

select *
from pelicula
where year(fecha_de_estreno) between 2000 and 2010
and titulo like '%t%'