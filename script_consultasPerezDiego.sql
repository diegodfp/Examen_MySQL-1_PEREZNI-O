/*Consulta de Todos los Eventos en un Complejo Deportivo Específico.*/
select * 
from eventos as e
inner join evento_complejo_deportivo as ec on e.id_evento = ec.id_evento
inner join complejo_deportivo as cp on cp.id_complejo_deportivo = ec.id_complejo
where cp.nombre = "Complejo Deportivo Giron";

/*2. Consulta de Comisarios Asignados a un Evento en Particular */
select *
from comisario as c
inner join evento_comisario as ec on c.id_comisario = ec.id_comisario
inner join eventos as e on e.id_evento = ec.id_evento
where e.nombreEvento = "Torneo de Tennis";

/* 3. Consulta de Todos los Eventos en un Rango de Fechas */

select *
from eventos as e
where e.fecha between "2022-05-12 10:00:00" and '2024-01-04 10:00:00';

/* 4. Consulta del Número Total de Comisarios Asignados a Eventos. */
select count(*)
from comisario as c
inner join evento_comisario as ec on c.id_comisario = ec.id_comisario
inner join eventos as e on e.id_evento = ec.id_evento
where e.nombreEvento = "Torneo de Tennis";

/* 5.Consulta de Complejos Polideportivos con Área Total 
Ocupada Superior a un Valor Específico.  */ 

select * 
from complejo_polideportivo as cpo
inner join info_complejo as ic on cpo.id_info_complejo = ic.id_complejo
where ic.area_complejo > 2 ;

/* 6. Consulta de Eventos con Número de Participantes Mayor que la Media.*/
select *
from eventos as e
where e.num_participantes > ( 
select avg(e.num_participantes)
from eventos as e);

select avg(num_participantes)
from eventos;  -- miramos el promedio

/* 7 Consulta de Equipamiento Necesario para un Evento Específico.  */

select e.nombre_equipamiento
from equipamiento as e
inner join  evento_equipo as eq on eq.id_equipamiento = e.id_equipamiento
inner join eventos as ev on ev.id_evento = eq.id_evento
where ev.nombreEvento = "Torneo de Tennis";

/* 8. Consulta de Eventos Celebrados en Complejos Deportivos con Jefe de Organización Específico. */

select e.nombreEvento
from eventos as e
inner join evento_complejo_deportivo as ec on ec.id_evento = e.id_evento
inner join complejo_deportivo as cpo on cpo.id_complejo_deportivo = ec.id_complejo
inner join info_complejo as ic on cpo.id_info_complejo = ic.id_complejo
inner join jefes as j on j.id_jefe = ic.id_jefe
where j.nombre = "Diego";

/* 9. Consulta de Complejos Polideportivos sin Eventos Celebrados. */ 

select *
from complejo_polideportivo as cpo
where cpo.id_complejo_polideportivo not in ( 
	select ecp.id_evento
    from evento_complejo_poli as ecp);
    
select *
    from evento_complejo_poli as ecp; -- confirmacion de  los eventos que se realizaron
    
/* 10 Consulta de Comisarios que Actúan como Jueces en Todos los Eventos. */ 

select c.nombre
from comisario as c
inner join evento_comisario as ec
where ec.funcion_comisario  ;


select * from evento_comisario;