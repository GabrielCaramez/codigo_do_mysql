select compra_cod, cli_nome, func_nome
from `bd_caso_estudo_vendas`.`tb_compra`
			inner join `bd_caso_estudo_vendas`.tb_func
	on func_cod = compra_func_cod
			inner join `bd_caso_estudo_vendas`.tb_cli
	on cli_cod = compra_cli_cod;

select * from `bd_caso_estudo_vendas`.`tb_cli`
where  cli_end_bairro = 'sul' 
order by cli_nome asc;

select compra_cod from `bd_caso_estudo_vendas`.`tb_prod_comp`
group by compra_cod;

select *
from `bd_caso_estudo_vendas`.`tb_prod`
where prod_vlr between 10 and 25;

select sum(prod_vlr) from `bd_caso_estudo_vendas`.`tb_prod`;

select avg(prod_vlr) from `bd_caso_estudo_vendas`.`tb_prod`;

select count(*) from `bd_caso_estudo_vendas`.`tb_prod`;

select max(prod_vlr) from `bd_caso_estudo_vendas`.`tb_prod`;
select min(prod_vlr) from `bd_caso_estudo_vendas`.`tb_prod`;

show tables;

select * from bd_caso_estudo_vendas.tb_cli;
select * from bd_caso_estudo_vendas. tb_depto;

select `cli_nome`,`cli_end_cep`from `bd_caso_estudo_vendas`.`tb_cli`;

select `prod_desc`, `prod_vlr` from `bd_caso_estudo_vendas`.`tb_prod`;

select * from `bd_caso_estudo_vendas`.`tb_func`;

select `cli_nome`, `tel_num`
from `bd_caso_estudo_vendas`.`tb_cli`
join `bd_caso_estudo_vendas`.`tb_cli_tel`
on `tb_cli`.`cli_cod` = `tb_cli_tel`.`tel_cli_cod`;

select `func_nome`,`depto_desc`
from `bd_caso_estudo_vendas`.`tb_func`
join `bd_caso_estudo_vendas`.`tb_depto`
on `tb_func`.`func_depto` = `tb_depto`.`depto_cod`;

select * from `bd_caso_estudo_vendas`.`tb_func`
inner join `bd_caso_estudo_vendas`.`tb_depto`
	on depto_cod = func_depto;
    
select cli_nome, prod_desc
from tb_cli
join tb_compra
on tb_cli.cli_cod = tb_compra.compra_cli_cod
join tb_prod_comp
on tb_compra.compra_cod = tb_prod_comp.compra_cod
join tb_prod
on tb_prod_comp.prod_comp = tb_prod.prod_cod;

create view `VIEW_COMPRA_PRODUTO`
AS
select tb_compra.compra_cod, prod_desc,cli_nome
from `bd_caso_estudo_vendas`.`tb_compra`
inner join bd_caso_estudo_vendas.tb_prod_comp
on tb_compra.compra_cod = tb_prod_comp.compra_cod
inner join bd_caso_estudo_vendas.tb_prod
on tb_prod.prod_cod = tb_prod_comp.prod_cod
inner join bd_caso_estudo_vendas.tb_cli
on compra_cli_cod = cli_cod;


select * from view_compra_produto;