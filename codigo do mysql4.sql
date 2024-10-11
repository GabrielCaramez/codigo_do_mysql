create database e_comerce;
create table categoria(
id_categoria int not null auto_increment,
nome varchar(60),
primary key(id_categoria)
);
create table status(
id_status int not null auto_increment primary key,
descricao varchar(60) not null
);
create table cliente(
email varchar(80) not null primary key,
nome varchar(80) not null,
senha varchar(80) not null,
telefone varchar(15) not null
);
create table produto(
id_produto int not null primary key auto_increment,
nome varchar(60) not null,
descricao varchar(100) not null,
quantidade int not null,
preco decimal(7,2) not null,
avaliacao float,
foto varchar(255) not null
);