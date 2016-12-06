/* 5.Mostrar las series con sus temporadas y la cantidad de episodios que tuvo cada una.
Ordenar en forma cronológica de estreno de series. */

select s.titulo, count(distinct t.id) as temporadas, count(distinct e.id) as episodios, s.fecha_de_estreno
from serie as s
	inner join temporada as t on s.id = t.id_serie
    inner join episodio as e on t.id = e.id_temporada
group by s.titulo, s.fecha_de_estreno
order by s.fecha_de_estreno