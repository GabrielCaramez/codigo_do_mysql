/* Criando Index e definindo que a compra é registrada para um funcionario*/
alter table `bd_caso_estudo_vendas`.`tb_compra`
add index `fk_compra_func_idx` (`compra_func_cod`asc);
/*Adicionando chave estrageira a tabela compra*/
alter table `bd_caso_estudo_vendas`.`tb_compra`
add constraint `fk_compra_func_cod`
	foreign key (`compra_func_cod`)
    references  `bd_caso_estudo_vendas`.`tb_func`(`func_cod`)
    on delete no action
    on update no action;
/*Criando index e definindo que um cliente realiza uma compra*/
alter table `bd_caso_estudo_vendas`.`tb_compra`
add index `fk_compra_cli_idx` (`compra_cli_cod` asc);
/*Criando a chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_compra`
add constraint `fk_compra_cli`
	foreign key (`compra_cli_cod`)
    references `bd_caso_estudo_vendas`.`tb_cli`(`cli_cod`)
	on delete no action
    on update no action;
/*Criando index e definindo que um produto é definido por um fornecedor*/
alter table `bd_caso_estudo_vendas`.`tb_prod`
add index `fk_prod_forn_idx`(`prod_forn_cod` ASC);
/*Criando chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_prod`
add constraint `fk_prod_forn`
	foreign key (`prod_forn_cod`)
	references `bd_caso_estudo_vendas`.`tb_forn` (`forn_cod`)
    on delete no action
    on update no action;
/*Criando index e definindo que cliente possui muitos telefone*/
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add index `fk_cli_tel_idx` (`tel_cli_cod` asc);
/*Adicionando chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add constraint `fk_cli_tel`
	foreign key  (`tel_cli_cod`)
    references  `bd_caso_estudo_vendas`.`tb_cli`(`cli_cod`)
	on delete no action
    on update no action;
/*Criando index e definindo que as compras possuem muitos produtos*/
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add index `fk_prod_comp_compra_idx` (`compra_cod`asc);

alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add index `fk_prod_comp_cod_idx` (`prod_cod`);
/*Adicionando a chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add constraint `fk_prod_comp_compra`
	foreign key(`compra_cod`)
	references  `bd_caso_estudo_vendas`.`tb_compra`(`compra_cod`)
    on delete no action
    on update no action;
    
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add constraint `fk_prod_comp_prod`
	foreign key(`prod_cod`)
    references `bd_caso_estudo_vendas`.`tb_prod`(`prod_cod`)
	on delete no action
    on update no action;



































