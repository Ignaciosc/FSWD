-- 6. Obtengan todas las películas hechas entre el 2000 y el 2010.

select *
	from peliculas
    where anio between 2000 and 2010
    
    -- where anio > 2000 and anio < 2010