-- 19. Obtener únicamente 3 películas hechas en el siglo XXI ordenadas por título
select *
from peliculas
where anio > 1999
order by titulo
limit 3