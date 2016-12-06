/*11. Obtener todas las películas que hayan sido hechas previo al 2000 o posterior al
2009 y además tengan id mayor a 10.
*/
select *
from peliculas
where id > 10 and (anio < 2000 or anio > 2009)
