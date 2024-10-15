create user 'lara.rodrigues'@'localhost'identified by'123456';
create user 'izabella.oliveira'@'localhost' identified by '123456';
create user 'luane.gabrielly'@'localhost' identified by '123456';
create user 'tiago,lima'@'localhost' identified by '123456';
create user 'danielgomes'@'localhost' identified by '123456';

grant insert, update, delete
ON `bd_caso_estudo_vendas`.`tb_func`
TO `hudson_silva@localhost`;
/*Removendo permissão concedida*/
revoke insert, update
ON `bd_caso_estudo_vendas`.`tb_func`
from `hudson_silva@localhost`;
/*Gerenciamento de permissões e usuários, concedendo permissão para
remover registros em uma tabela especifica*/
grant delete
ON `bd_caso_estudo_vendas`.`tb_func`
TO `hudson_silva@localhost`;
/*Removendo permissão de consulta*/
revoke select
ON `bd_caso_estudo_vendas`.`tb_func`
from `hudson_silva@localhost`;
/*Gerenciamento de permissões e usuários, concedendo permissão para
inserir registros em uma tabela especifica*/
grant insert
ON `bd_caso_estudo_vendas`.`tb_func`
TO `hudson_silva@localhost`;
/*Aplicando permissão global de consulta a todos os arquivos/banco no servidor*/
grant select
on *.*
to danielgomes@localhost;
/*Aplicando permissão de banco inserção em todas as tabelas do banco*/
grant insert
on bd_caso_estudo_vendas.*
to danielgomes@localhost;
/*Aplicando permissão de banco de inserção em tabela definida*/
grant insert
on bd_caso_estudo_vendas.tb_prod
to danielgomes@localhost;
grant
	select (cli_cod,cli_nome, cli_cpf),
    update(cli_end_cep)
on bd_caso_estudo_vendas.tb_cli
to danielgomes@localhost;