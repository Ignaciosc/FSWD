-- 2. Traer todos los episodios que se hayan emitido en el 2010, 2013 o en el 2015.

select *
from episodio
where year(fecha_de_estreno) in (2010, 2013, 2015)