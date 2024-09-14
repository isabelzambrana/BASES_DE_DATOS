USE arriendos ;

select * from arrendatario;
select * from oficinas;
select*from piso;

-- a)     Obtener los nombres, apellidos y número de teléfono de todos los arrendatarios.
select nom_a,appa,apma,num_telf from arrendatario;

-- b)     Obtener los nombres, apellidos y edad de todos los arrendatarios menores a 30 o mayores a 60.
select nom_a,appa,apma,edad from arrendatario where edad<30 or edad>60;

-- c)      Obtener los nombres, apellidos y fecha de alquiler de todos los arrendatarios que alquilaron una oficina entre enero de 2015 y diciembre de 2020.
select nom_a,appa,apma,fecha_arriendo from arrendatario where fecha_arriendo BETWEEN '2015-01-01' AND '2020-12-31';

-- d)     Listar los nombres y apellidos de los arrendatarios que alquilaron una oficina este año 2023, donde el apellido esté en orden ascendente.
select nom_a,appa,apma,fecha_arriendo from arrendatario where fecha_arriendo BETWEEN '2023-01-01' AND'2023-12-31' ORDER BY appa ASC;

-- e)     Listar nombre y cantidad de oficinas de todos los pisos del edificio comercial.
select nombre_of,cantidad_of from oficinas,piso ;

-- f)       Listar nombres, apellidos y número de teléfono, de todos los arrendatarios que tengan teléfono fijo.
select nom_a,appa,apma,num_telf from arrendatario where num_telf  LIKE '_______';

-- g)     Listar nombres y la superficie de las oficinas que tengan su superficie entre 40 y 60 metros cuadrados.
select nombre_of,sup_of from oficinas where sup_of BETWEEN '40' AND '60';

-- h)     Obtener el nombre y apellidos de los arrendatarios que inicien su nombre con A.
select nom_a,appa,apma from arrendatario where nom_a Like 'A%';

-- i)       Obtener el apellido materno de los arrendatarios que contengan 6 caracteres en su apellido materno.
select nom_a,appa,apma from arrendatario where apma Like '%%%%%%';

-- j)       ¿Cuántas oficinas registradas tiene el edificio para alquilar?

select* from oficinas ;

-- k)     Obtener el nombre completo de los arrendatarios cuyo apellido paterno esté entre la C y la M.
select nom_a,appa,apma from arrendatario where appa  BETWEEN 'C' AND 'M';

