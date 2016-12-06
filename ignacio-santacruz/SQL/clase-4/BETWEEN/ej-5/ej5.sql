/* 5. Traer todas las temporadas que hayan empezado y terminado entre el 2014 y el
2015. */

select *
from temporada
where year(fecha_de_estreno) > 2013 and year(fecha_de_fin) < 2016