/* 4. Obtener los títulos de las series y la cantidad de temporadas.*/
select s.titulo, count(t.id) as temporadas
from serie as s
	inner join temporada as t on s.id = t.id_serie
group by s.titulo