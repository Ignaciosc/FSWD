-- 18. Obtener únicamente 3 películas hechas en el siglo XXI.
select *
from peliculas
where anio > 1999
limit 3