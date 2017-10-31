select id_empleado from EMPLEADOS 
GROUP BY primer_nombre;


select COUNT(id_empleado), avg(salario) , MAX(id_gerente) from EMPLEADOS

GROUP BY primer_nombre;

select COUNT(id_gerente), avg(salario) , MAX(id_departamento) from EMPLEADOS

GROUP BY primer_nombre;



select COUNT(id_empleado), avg(salario) , MAX(id_gerente) from EMPLEADOS

where id_trabajo = 1

GROUP BY primer_nombre;

select COUNT(id_gerente), avg(salario) , MAX(id_departamento) from EMPLEADOS

where id_trabajo = 5

GROUP BY primer_nombre;



select COUNT(id_emleado), avg(salario) , MAX(id_gerente) from EMPLEADOS

having id_trabajo = 1

order By  primer_nombre;


select COUNT(id_gerente), avg(salario) , MAX(id_departamento) from EMPLEADOS

having id_trabajo = 1

order By  primer_nombre;


select TOP 5 *
from EMPLEADOS




