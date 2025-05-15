--insertar ciudades
INSERT INTO ciudades (ciu_des) VALUES ('san lorenzo') ;
INSERT INTO ciudades (ciu_des) VALUES ('luque') ;
INSERT INTO ciudades (ciu_des) VALUES ('ñemby') ;
INSERT INTO ciudades (ciu_des) VALUES ('san antonio') ;
--insertar cargos
INSERT INTO cargos (car_cargos) VALUES ('gerente');
INSERT INTO cargos (car_cargos) VALUES ('atc');
INSERT INTO cargos (car_cargos) VALUES ('mozo');
--insertar productos
INSERT INTO productos (pro_desc, pro_cantidad, pro_vencimiento) VALUES ('leche', '10','14-03-2030');
--insertar desayunos
INSERT INTO desayunos (des_nombre, des_descripcion, des_precio, pro_cod) VALUES ('torta', 'torta de chocolate', 15000, 1);
--insertar menu
INSERT INTO menu (des_cod) VALUES (1);
--insertar clientes 
INSERT INTO clientes (cli_nombre, cli_apellido, cli_telefono, ciu_cod) VALUES ('ruben', 'vargas', 145263, 1 );
--insertar sucursales
INSERT INTO sucursales (ciu_cod, emp_cod) VALUES ( 1,1);
--insertar empleados
INSERT INTO empleados (emp_nombre, emp_apellido, emp_telefono, car_cod, ciu_cod) VALUES ( 'saul', 'martinez',1466225, 1, 2);
INSERT INTO empleados (emp_nombre, emp_apellido, emp_telefono, car_cod, ciu_cod) VALUES ( 'victor', 'rojas',1466425, 3, 2);
INSERT INTO empleados (emp_nombre, emp_apellido, emp_telefono, car_cod, ciu_cod) VALUES ( 'ana', 'fleitas',1466285, 1, 2);
INSERT INTO empleados (emp_nombre, emp_apellido, emp_telefono, car_cod, ciu_cod) VALUES ( 'jimena', 'paniagua',1466235, 5, 2);
--insertar atc
INSERT INTO atc (emp_cod, cli_cod, men_cod, suc_cod) VALUES ( 4,1,1,1);