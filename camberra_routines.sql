CREATE DATABASE  IF NOT EXISTS `camberra` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `camberra`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 35.168.38.246    Database: camberra
-- ------------------------------------------------------
-- Server version	8.4.13-0ubuntu0.26.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `quantidade_cliente_genero`
--

DROP TABLE IF EXISTS `quantidade_cliente_genero`;
/*!50001 DROP VIEW IF EXISTS `quantidade_cliente_genero`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quantidade_cliente_genero` AS SELECT 
 1 AS `Genero`,
 1 AS `Quantidade_Clientes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientes_gmail`
--

DROP TABLE IF EXISTS `clientes_gmail`;
/*!50001 DROP VIEW IF EXISTS `clientes_gmail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_gmail` AS SELECT 
 1 AS `Clientes_Gmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `municipio_com_maior_cliente`
--

DROP TABLE IF EXISTS `municipio_com_maior_cliente`;
/*!50001 DROP VIEW IF EXISTS `municipio_com_maior_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `municipio_com_maior_cliente` AS SELECT 
 1 AS `Municipio`,
 1 AS `UF`,
 1 AS `Qtd_Clientes_Acima_50_Anos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_volumetria_cliente_genero_idade_regiao`
--

DROP TABLE IF EXISTS `vw_volumetria_cliente_genero_idade_regiao`;
/*!50001 DROP VIEW IF EXISTS `vw_volumetria_cliente_genero_idade_regiao`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_volumetria_cliente_genero_idade_regiao` AS SELECT 
 1 AS `cidade`,
 1 AS `estado`,
 1 AS `genero_cliente`,
 1 AS `idade`,
 1 AS `quantidade_clientes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_idade_genero_regiao`
--

DROP TABLE IF EXISTS `media_idade_genero_regiao`;
/*!50001 DROP VIEW IF EXISTS `media_idade_genero_regiao`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_idade_genero_regiao` AS SELECT 
 1 AS `genero_cliente`,
 1 AS `media_idade`,
 1 AS `Regiao_Geografica`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientes_idade_menos_21`
--

DROP TABLE IF EXISTS `clientes_idade_menos_21`;
/*!50001 DROP VIEW IF EXISTS `clientes_idade_menos_21`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_idade_menos_21` AS SELECT 
 1 AS `clientes_idade_Menos_21`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `quantidade_cliente_genero`
--

/*!50001 DROP VIEW IF EXISTS `quantidade_cliente_genero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`camberra`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `quantidade_cliente_genero` AS select coalesce(`clientes`.`genero_cliente`,'Não informado') AS `Genero`,count(`clientes`.`id_cliente`) AS `Quantidade_Clientes` from `clientes` group by `clientes`.`genero_cliente` order by `Quantidade_Clientes` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_gmail`
--

/*!50001 DROP VIEW IF EXISTS `clientes_gmail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`camberra`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_gmail` AS select count(`clientes`.`id_cliente`) AS `Clientes_Gmail` from `clientes` where (`clientes`.`email_cliente` like '%@gmail%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `municipio_com_maior_cliente`
--

/*!50001 DROP VIEW IF EXISTS `municipio_com_maior_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`camberra`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `municipio_com_maior_cliente` AS with `cliente_idade` as (select `clientes`.`id_cliente` AS `id_cliente`,timestampdiff(YEAR,`clientes`.`dt_nasc_cliente`,curdate()) AS `idade` from `clientes` where (timestampdiff(YEAR,`clientes`.`dt_nasc_cliente`,curdate()) > 50)), `endereco_prioritario` as (select `ci`.`id_cliente` AS `id_cliente`,`e`.`cidade` AS `cidade`,`e`.`uf` AS `uf`,row_number() OVER (PARTITION BY `ci`.`id_cliente` ORDER BY (case when (`e`.`tipo_endereco` = 'Residencial') then 1 else 2 end),`e`.`created_at` desc )  AS `rn` from (`cliente_idade` `ci` join `enderecos` `e` on((`ci`.`id_cliente` = `e`.`id_cliente`)))) select `ep`.`cidade` AS `Municipio`,`ep`.`uf` AS `UF`,count(`ep`.`id_cliente`) AS `Qtd_Clientes_Acima_50_Anos` from `endereco_prioritario` `ep` where (`ep`.`rn` = 1) group by `ep`.`cidade`,`ep`.`uf` order by `Qtd_Clientes_Acima_50_Anos` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_volumetria_cliente_genero_idade_regiao`
--

/*!50001 DROP VIEW IF EXISTS `vw_volumetria_cliente_genero_idade_regiao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`camberra`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_volumetria_cliente_genero_idade_regiao` AS select `e`.`cidade` AS `cidade`,`e`.`uf` AS `estado`,`c`.`genero_cliente` AS `genero_cliente`,timestampdiff(YEAR,`c`.`dt_nasc_cliente`,curdate()) AS `idade`,count(distinct `c`.`id_cliente`) AS `quantidade_clientes` from (`clientes` `c` join `enderecos` `e` on((`c`.`id_cliente` = `e`.`id_cliente`))) group by `e`.`cidade`,`e`.`uf`,`c`.`genero_cliente`,`idade` order by `e`.`uf`,`e`.`cidade`,`idade`,`quantidade_clientes` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_idade_genero_regiao`
--

/*!50001 DROP VIEW IF EXISTS `media_idade_genero_regiao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`camberra`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `media_idade_genero_regiao` AS select `C`.`genero_cliente` AS `genero_cliente`,concat(round(avg(timestampdiff(YEAR,`C`.`dt_nasc_cliente`,curdate())),1),' anos') AS `media_idade`,(case when (`E`.`uf` in ('AC','AP','AM','PA','RO','RR','TO')) then 'Norte' when (`E`.`uf` in ('AL','BA','CE','MA','PB','PE','PI','RN','SE')) then 'Nordeste' when (`E`.`uf` in ('DF','GO','MT','MS')) then 'Centro-Oeste' when (`E`.`uf` in ('ES','MG','RJ','SP')) then 'Sudeste' when (`E`.`uf` in ('PR','RS','SC')) then 'Sul' else 'Outras / Desconhecido' end) AS `Regiao_Geografica` from (`clientes` `C` join `enderecos` `E` on((`E`.`id_cliente` = `C`.`id_cliente`))) group by `C`.`genero_cliente`,`E`.`uf` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_idade_menos_21`
--

/*!50001 DROP VIEW IF EXISTS `clientes_idade_menos_21`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`camberra`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_idade_menos_21` AS select count(`clientes`.`id_cliente`) AS `clientes_idade_Menos_21` from `clientes` where (`clientes`.`dt_nasc_cliente` > (curdate() - interval 21 year)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'camberra'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_verificar_criticidade_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin_user`@`%` FUNCTION `fn_verificar_criticidade_cliente`(p_id_cliente INT) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_ultima_atualizacao TIMESTAMP;
    DECLARE v_meses INT;
    DECLARE v_resultado VARCHAR(50);

    -- Busca a data da última atualização do endereço mais recente do cliente
    SELECT MAX(updated_at) 
    INTO v_ultima_atualizacao
    FROM enderecos
    WHERE id_cliente = p_id_cliente;

    -- Se não encontrar nenhum endereço ou data, considera crítico
    IF v_ultima_atualizacao IS NULL THEN
        SET v_resultado = 'CRÍTICO (Sem Endereço)';
    ELSE
        -- Calcula a diferença em meses
        SET v_meses = TIMESTAMPDIFF(MONTH, v_ultima_atualizacao, NOW());

        -- Aplica a regra de negócio (> 6 meses)
        IF v_meses > 6 THEN
            SET v_resultado = CONCAT('CRÍTICO (', v_meses, ' meses)');
        ELSE
            SET v_resultado = CONCAT('NORMAL (', v_meses, ' meses)');
        END IF;
    END IF;

    RETURN v_resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-19 10:42:33
