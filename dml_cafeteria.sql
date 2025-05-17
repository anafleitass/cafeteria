--insertar ciudades
INSERT INTO ciudades (ciu_des) VALUES ('san lorenzo') ;
INSERT INTO ciudades (ciu_des) VALUES ('luque') ;
INSERT INTO ciudades (ciu_des) VALUES ('ñemby') ;
INSERT INTO ciudades (ciu_des) VALUES ('san antonio') ;
--insertar cargos
INSERT INTO cargos (car_cargos) VALUES ('gerente');
INSERT INTO cargos (car_cargos) VALUES ('atc');
INSERT INTO cargos (car_cargos) VALUES ('mozo');
INSERT INTO cargos (car_cargos) VALUES ('barista');

--insertar productos
INSERT INTO productos (pro_desc, pro_cantidad, pro_vencimiento) VALUES ('leche', 10,'14-03-2026');
INSERT INTO productos (pro_desc, pro_cantidad, pro_vencimiento) VALUES ('chipa', 50,'15-03-2026');
INSERT INTO productos (pro_desc, pro_cantidad, pro_vencimiento) VALUES ('torta de miel', 20,'18-05-2026');
INSERT INTO productos (pro_desc, pro_cantidad, pro_vencimiento) VALUES ('cafe', 30,'18-03-2026');
INSERT INTO productos (pro_desc, pro_cantidad, pro_vencimiento) VALUES ('panqueques', 20,'14-03-2026');

--insertar desayunos
INSERT INTO desayunos (des_nombre, des_descripcion, des_precio, pro_cod) VALUES ('torta', 'torta de chocolate', 15000, 1);
INSERT INTO desayunos (des_nombre, des_descripcion, des_precio, pro_cod) VALUES ('chipa', 'chipa almidon', 8500, 2);
INSERT INTO desayunos (des_nombre, des_descripcion, des_precio, pro_cod) VALUES ('torta', 'torta de miel', 11000, 3);
INSERT INTO desayunos (des_nombre, des_descripcion, des_precio, pro_cod) VALUES ('cafe', 'cafe negro', 8000, 4);
INSERT INTO desayunos (des_nombre, des_descripcion, des_precio, pro_cod) VALUES ('panqueques', 'panqueques con miel', 15000, 5);


--insertar menu
INSERT INTO menu (des_cod,men_disponible,men_precio) VALUES (1,TRUE,15000);
INSERT INTO menu (des_cod,men_disponible,men_precio) VALUES (2,TRUE,85000);
INSERT INTO menu (des_cod,men_disponible,men_precio) VALUES (3,TRUE,11000);
INSERT INTO menu (des_cod,men_disponible,men_precio) VALUES (4,TRUE,8000);
INSERT INTO menu (des_cod,men_disponible,men_precio) VALUES (5,TRUE,15000);

--insertar clientes 
INSERT INTO clientes (cli_nombre, cli_apellido, cli_telefono, ciu_cod) VALUES ('ruben', 'vargas', 145263, 1 );
INSERT INTO clientes (cli_nombre, cli_apellido, cli_telefono, ciu_cod) VALUES ('brian', 'paredes', 145243, 2 );
INSERT INTO clientes (cli_nombre, cli_apellido, cli_telefono, ciu_cod) VALUES ('david', 'fleitas', 145463, 4 );
INSERT INTO clientes (cli_nombre, cli_apellido, cli_telefono, ciu_cod) VALUES ('pablo', 'madrid', 1452363, 3 );
INSERT INTO clientes (cli_nombre, cli_apellido, cli_telefono, ciu_cod) VALUES ('juan', 'escobar', 1452673, 1 );


--insertar sucursales
INSERT INTO sucursales (ciu_cod, emp_cod) VALUES ( 1,1);
INSERT INTO sucursales (ciu_cod, emp_cod) VALUES ( 2,3);
INSERT INTO sucursales (ciu_cod, emp_cod) VALUES ( 3,2);
INSERT INTO sucursales (ciu_cod, emp_cod) VALUES ( 2,4);

--insertar empleados
INSERT INTO empleados (emp_nombre, emp_apellido, emp_telefono, car_cod, ciu_cod) VALUES ( 'saul', 'martinez',1466225, 1, 2);
INSERT INTO empleados (emp_nombre, emp_apellido, emp_telefono, car_cod, ciu_cod) VALUES ( 'victor', 'rojas',1466425, 3, 2);
INSERT INTO empleados (emp_nombre, emp_apellido, emp_telefono, car_cod, ciu_cod) VALUES ( 'ana', 'fleitas',1466285, 1, 2);
INSERT INTO empleados (emp_nombre, emp_apellido, emp_telefono, car_cod, ciu_cod) VALUES ( 'jimena', 'paniagua',1466235, 5, 2);

--insertar atc
INSERT INTO atc (emp_cod, suc_cod) VALUES ( 4,1);
INSERT INTO atc (emp_cod, suc_cod) VALUES ( 2,2);
INSERT INTO atc (emp_cod, suc_cod);


--insertar pedidos
INSERT INTO pedidos(ped_cod, ped_cantidad, cli_cod, men_cod, atc_cod) VALUES (1,1,1,2,1);
INSERT INTO pedidos(ped_cod, ped_cantidad, cli_cod, men_cod, atc_cod) VALUES (2,3,2,3,2);
INSERT INTO pedidos(ped_cod, ped_cantidad, cli_cod, men_cod, atc_cod) VALUES (3,5,3,1,3);

--insertar notificacion
INSERT INTO notificacion(not_mensaje, not_fecha, cli_cod) VALUES ('El pedido fue entregado correctamente','2025-03-15', 1);
INSERT INTO notificacion(not_mensaje, not_fecha, cli_cod) VALUES ('El cliente solicitó atención personalizada','2025-04-16', 2);
INSERT INTO notificacion(not_mensaje, not_fecha, cli_cod) VALUES ('Se realizo un seguimiento del pedido', '2025-03-19', 3);


