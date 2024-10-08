-- criando tabelas
CREATE TABLE `bd_caso_estudo_vendas`.`tb_forn`(
`forn_cod`INT NOT NULL PRIMARY KEY,
`forn_nome`varchar(60) null,
`forn_tel`varchar (13) null
);
CREATE TABLE `bd_caso_estudo_vendas`.`tb_depto`(
`depto_cod` INT NOT NULL PRIMARY KEY,
`depto_desc`varchar(60) null
);
CREATE TABLE `bd_caso_estudo_vendas`.`tb_func`(
`func_cod`INT NOT NULL PRIMARY KEY,
`func_depto`INT NOT NULL,
`func_nome`varchar(50) not null,
`func_cpf`varchar(50)not null
);
CREATE TABLE `bd_caso_estudo_vendas`.`tb_prod`(
`prod_cod` INT NOT NULL PRIMARY KEY,
`prod_forn_cod`INT NOT NULL,
`prod_desc`varchar (60)NULL,
`prod_vlr`DECIMAL
);
CREATE TABLE `bd_caso_estudo_vendas`.`tb_compra`(
`compra_cod` INT NOT NULL PRIMARY KEY,
`compra_cli_cod`INT NOT NULL,
`compra_func_cod`INT NOT NULL,
`compra_qtd_prod`INT NOT NULL
);
CREATE TABLE `bd_caso_estudo_vendas`.`tb_cli`(
`cli_cod` INT NOT NULL PRIMARY KEY,
`cli_nome` VARCHAR (60) NOT NULL,
`cli_cpf` Varchar (18) not null,
`cli_end_rua`VARCHAR(40) NOT NULL,
`cli_end_bairro` VARCHAR(30)NULL,
`cli_end_cep` VARCHAR(18)NULL
);
CREATE TABLE `bd_caso_estudo_vendas`.`tb_cli_tel`(
`tel_cod` INT NOT NULL PRIMARY KEY,
`tel_cli_cod`INT NOT NULL,
`tel_num`Varchar(13) not null
);
CREATE TABLE `bd_caso_estudo_vendas`.`tb_prod_comp`(
`prod_comp` INT NOT NULL,
`compra_cod`INT NOT NULL
);