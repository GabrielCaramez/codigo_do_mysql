create database OdontoVida;

use OdontoVida;

create table Paciente(
paciente_id int auto_increment primary key,
nome varchar(100) not null,
data_nascimento date not null,
telefone varchar(20),
endereco text,
email varchar(100)
);
create table Dentista(
dentista_id int auto_increment primary key,
nome varchar(100) not null,
especialidade varchar(50),
telefone varchar(20),
email varchar(100)
);
create table Consulta(
consulta_id int auto_increment primary key,
nome varchar(100) not null,
especialidade varchar(50),
telefone varchar(20),
email varchar(100)
);
create table Tratamento(
tratamento_id int auto_increment primary key,
consulta_id int,
descricao text,
data_inicio date,
data_fim date,
foreign key (consulta_id) references Consulta(consulta_id)
);
create table Procedimento(
procetimento_id int auto_increment primary key,
nome varchar(100) not null,
custo decimal(10,2) not null
);
create table Tratamento_Procedimento(
tratamento_id int,
procedimento_id int,
quantidade int default 1,
primary key(tratamento_id, procedimento_id),
foreign key (tratamento_id) references Tratamento(tratamento_id),
foreign key (procedimento_id) references Procedimento(procedimento_id)
);
create table Pagamento(
pagamento_id int auto_increment primary key,
tratamento_id int,
valor decimal(10, 2) not null,
data_pagamento date,
foreign key(tratamento_id) references  Tratamento(tratamento_id)
);

insert into Paciente (nome, data_nascimento, telefone, endereco, email)
values
('Ana Silva', '1985-04-15', '11987654321', 'Rua das Flores, 123, São Paulo', 'ana.silva@email.com'),
('Carlos Oliveira', '1990-06-30', '21987654321', 'Avenida Paulista, 456, São Paulo', 'carlos.oliveira@email.com')