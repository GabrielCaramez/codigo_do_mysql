-- o clientes possui muitos telefones
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add index `fk_cli_tel_idx`(`tel_cli_cod`asc);
-- Adicionando chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add constraint `fk_cli_tel`
	foreign key (`tel_cli_cod`)
    references `bd_caso_estudo_vendas`.`tb_cli`(`cli_cod`)
    on delete no action
    on update no action;
-- compras possuem muitos produtos
alter table `bd_caso_estudo_vendas`. `tb_prod_comp`
add index `fk_prod_comp_compra_idx`(`compra_cod`asc);
-- add a chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add constraint `fk_prod_comp_compra`
	foreign key(`compra_cod`)
    references `bd_caso_estudo_vendas`.`tb_compra`(`compra_cod`)
    on delete no action 
    on update no action;
    


