/* 4. Traer todos los episodios que se hayan emitido entre 2014 y 2015. (inclusive) */
select *
from episodio
where year(fecha_de_estreno) in (2014, 2015)