DROP TRIGGER IF EXISTS `bd_caso_estudo_vendas`.`tb_prod_comp_AFTER_INSERT`;

DELIMITER $$
USE `bd_caso_estudo_vendas`$$
CREATE DEFINER = CURRENT_USER TRIGGER `bd_caso_estudo_vendas`.`tb_prod_comp_AFTER_INSERT` AFTER INSERT ON `tb_prod_comp` FOR EACH ROW
BEGIN
declare qtd int;
select count(prod_cod) into qtd
from `bd_caso_estudo_vendas`.`tb_prod_comp`
where compra_cod = new.compra_cod;
update `bd_caso_estudo_vendas`.`tb_compra`
set compra_qtd_cod = qtd
where compra_cod = new.compra_cod;
END$$
DELIMITER ;