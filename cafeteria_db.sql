CREATE TABLE ciudades (
    ciu_cod SERIAL PRIMARY KEY,
    ciu_des VARCHAR NOT NULL
);
CREATE TABLE cargos (
 car_cod SERIAL PRIMARY KEY,
   car_cargos VARCHAR(60)NOT NULL 
 );
CREATE TABLE productos (
pro_cod SERIAL PRIMARY KEY,
pro_desc VARCHAR (60) NOT NULL,
pro_cantidad INTEGER NOT NULL,
pro_vencimiento DATE
);
CREATE TABLE desayunos (
des_cod SERIAL PRIMARY KEY,
des_nombre VARCHAR (60) NOT NULL,
des_descripcion VARCHAR(60) NOT NULL,
des_precio INTEGER NOT NULL,
pro_cod INTEGER NOT NULL,
FOREIGN KEY (pro_cod) REFERENCES productos(pro_cod) ON DELETE RESTRICT
);
CREATE TABLE menu(
men_cod SERIAL PRIMARY KEY,
des_cod INTEGER NOT NULL,
men_disponible BOOLEAN,
men_precio INTEGER,
FOREIGN KEY (des_cod) REFERENCES desayunos(des_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE clientes (
cli_cod SERIAL PRIMARY KEY,
cli_nombre VARCHAR (15) NOT NULL,
cli_apellido VARCHAR (15) NOT NULL,
cli_telefono INTEGER,
ciu_cod INTEGER,
FOREIGN KEY (ciu_cod) REFERENCES ciudades(ciu_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE empleados (
emp_cod SERIAL PRIMARY KEY,
emp_nombre VARCHAR(15) NOT NULL,
emp_apellido VARCHAR(15) NOT NULL,
emp_telefono INTEGER,
car_cod INTEGER,
ciu_cod INTEGER,
FOREIGN KEY (ciu_cod) REFERENCES ciudades(ciu_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (car_cod) REFERENCES cargos(car_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE sucursales (
suc_cod SERIAL PRIMARY KEY,
ciu_cod INTEGER,
emp_cod INTEGER,
FOREIGN KEY (ciu_cod) REFERENCES ciudades(ciu_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (emp_cod) REFERENCES empleados(emp_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE atc (
atc_cod SERIAL PRIMARY KEY,
emp_cod INTEGER,
suc_cod INTEGER,
FOREIGN KEY (emp_cod) REFERENCES empleados(emp_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (suc_cod) REFERENCES sucursales(suc_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE pedidos (
ped_cod SERIAL PRIMARY KEY,
ped_cantidad INTEGER,
cli_cod INTEGER,
men_cod INTEGER,
atc_Cod INTEGER,
FOREIGN KEY (cli_cod) REFERENCES clientes(cli_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (men_cod) REFERENCES menu(men_cod) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (atc_cod) REFERENCES atc(atc_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE registropedido(
reg_cod SERIAL PRIMARY KEY,
ped_cod INTEGER,
reg_fecha DATE,
FOREIGN KEY (ped_cod) REFERENCES pedidos(ped_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE notificacion (
not_cod SERIAL PRIMARY KEY,
not_mensaje TEXT NOT NULL,
not_fecha DATE NOT NULL,
cli_cod INTEGER NOT NULL,
FOREIGN KEY (cli_cod) REFERENCES clientes(cli_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
