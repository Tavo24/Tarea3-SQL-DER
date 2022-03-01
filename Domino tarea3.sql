drop database domino;
create database domino;
use domino;

create table cliente(
idCliente int not null auto_increment,
nombCompleto varchar(100) not null,
direccion varchar(120) not null,
localidad varchar(80) not null,
provincia varchar(60) not null,
telefono tinyint not null,
dni tinyint not null,
email varchar(60) not null unique,
pass varchar(60) not null,
primary key(idCliente)
);

create table formulario(
idFormulario int not null auto_increment,
tipo boolean,
mensaje varchar(500) not null,
idCliente int not null,
primary key(idFormulario),
foreign key(idCliente) references domino.cliente(idCliente)
);

create table producto(
idProducto int not null auto_increment,
nombProducto varchar(100) not null,
imagen varchar(255) not null, 
color varchar(60) not null,
stock tinyint unsigned not null,
primary key(idProducto)
);

create table formularioProducto(
formularioId int not null,
productoId int not null,
id int auto_increment,
primary key(id),
foreign key(formularioId) references domino.formulario(idFormulario),
foreign key(productoId) references domino.producto(idProducto)
);

insert into producto values (null,"Muggle", "link", "blanco",5);
insert into producto values (null,"HJSimpson", "link", "blanco",3);
insert into producto values (null,"Rolling", "link", "blanco",2);
insert into producto values (null,"Evita", "link", "blanco",1);
