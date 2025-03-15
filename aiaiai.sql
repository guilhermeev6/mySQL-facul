create database Loja;
use Loja;

drop database Loja;

create table clientes(
	cod_cliente int primary key auto_increment,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    cidade varchar(100) not null,
    CEP int not null
);

create table pedidos(
	num_pedido int primary key auto_increment,
    cod_cliente int,
    data_pedido datetime default current_timestamp not null,
    itens varchar(100) not null,
    valor decimal(10.2) not null,
    foreign key (cod_cliente) references clientes(cod_cliente)
);

insert into clientes(nome, endereco, cidade, CEP)
values ('Guilherme Evangelista', 'Avenida paulista, 54', 'São Paulo', 0987982);

select * from clientes;

insert into pedidos(cod_cliente, data_pedido, itens, valor)
values (1, '2024-03-14 15:30:00', '2 batatas grandes', 40.00);

select * from pedidos;

drop table clientes;
drop table pedidos;