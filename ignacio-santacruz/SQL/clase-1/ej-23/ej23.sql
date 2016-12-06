/* 23. Si tuviésemos un índice de las películas hechas a partir del año 2000 ordenadas
alfabéticamente, ¿como obtendríamos las número 4 de dicha lista? */
select *
from peliculas
where anio > 2000
order by titulo
limit 1 offset 3
