-- 21. Obtener la última película de la tabla
select *
from peliculas
order by id desc
limit 1