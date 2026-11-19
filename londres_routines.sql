CREATE DATABASE  IF NOT EXISTS `londres` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `londres`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 35.168.38.246    Database: londres
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
-- Temporary view structure for view `vw_quantidade_Clientes_por_Genero`
--

DROP TABLE IF EXISTS `vw_quantidade_Clientes_por_Genero`;
/*!50001 DROP VIEW IF EXISTS `vw_quantidade_Clientes_por_Genero`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_quantidade_Clientes_por_Genero` AS SELECT 
 1 AS `Genero`,
 1 AS `Quantidade_Clientes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_clientes_menor_21`
--

DROP TABLE IF EXISTS `vw_clientes_menor_21`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes_menor_21`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes_menor_21` AS SELECT 
 1 AS `Quantidade_Clientes_Menos_21`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_volumetria_Clientes_Genero_Idade_Regiao_Geografica`
--

DROP TABLE IF EXISTS `vw_volumetria_Clientes_Genero_Idade_Regiao_Geografica`;
/*!50001 DROP VIEW IF EXISTS `vw_volumetria_Clientes_Genero_Idade_Regiao_Geografica`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_volumetria_Clientes_Genero_Idade_Regiao_Geografica` AS SELECT 
 1 AS `cidade`,
 1 AS `estado`,
 1 AS `genero_cliente`,
 1 AS `idade`,
 1 AS `quantidade_clientes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_volumetria_cliente_regiao`
--

DROP TABLE IF EXISTS `vw_volumetria_cliente_regiao`;
/*!50001 DROP VIEW IF EXISTS `vw_volumetria_cliente_regiao`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_volumetria_cliente_regiao` AS SELECT 
 1 AS `cidade`,
 1 AS `estado`,
 1 AS `genero_cliente`,
 1 AS `idade`,
 1 AS `quantidade_clientes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_clientes_gmail`
--

DROP TABLE IF EXISTS `vw_clientes_gmail`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes_gmail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes_gmail` AS SELECT 
 1 AS `Quantidade_Clientes_Gmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_lista_idades`
--

DROP TABLE IF EXISTS `vw_lista_idades`;
/*!50001 DROP VIEW IF EXISTS `vw_lista_idades`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_lista_idades` AS SELECT 
 1 AS `id_cliente`,
 1 AS `dt_nasc_cliente`,
 1 AS `idade_atual`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_quantidade_Clientes_por_Genero`
--

/*!50001 DROP VIEW IF EXISTS `vw_quantidade_Clientes_por_Genero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`londres`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_quantidade_Clientes_por_Genero` AS select coalesce(`clientes`.`genero_cliente`,'Não informado') AS `Genero`,count(`clientes`.`id_cliente`) AS `Quantidade_Clientes` from `clientes` group by `clientes`.`genero_cliente` order by `Quantidade_Clientes` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_clientes_menor_21`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes_menor_21`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`londres`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes_menor_21` AS select count(`clientes`.`id_cliente`) AS `Quantidade_Clientes_Menos_21` from `clientes` where (`clientes`.`dt_nasc_cliente` > (curdate() - interval 21 year)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_volumetria_Clientes_Genero_Idade_Regiao_Geografica`
--

/*!50001 DROP VIEW IF EXISTS `vw_volumetria_Clientes_Genero_Idade_Regiao_Geografica`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`londres`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_volumetria_Clientes_Genero_Idade_Regiao_Geografica` AS select `e`.`cidade` AS `cidade`,`e`.`uf` AS `estado`,`c`.`genero_cliente` AS `genero_cliente`,timestampdiff(YEAR,`c`.`dt_nasc_cliente`,curdate()) AS `idade`,count(distinct `c`.`id_cliente`) AS `quantidade_clientes` from (`clientes` `c` join `enderecos` `e` on((`c`.`id_cliente` = `e`.`id_cliente`))) group by `e`.`cidade`,`e`.`uf`,`c`.`genero_cliente`,`idade` order by `e`.`uf`,`e`.`cidade`,`idade`,`quantidade_clientes` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_volumetria_cliente_regiao`
--

/*!50001 DROP VIEW IF EXISTS `vw_volumetria_cliente_regiao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`londres`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_volumetria_cliente_regiao` AS select `e`.`cidade` AS `cidade`,`e`.`uf` AS `estado`,`c`.`genero_cliente` AS `genero_cliente`,timestampdiff(YEAR,`c`.`dt_nasc_cliente`,curdate()) AS `idade`,count(distinct `c`.`id_cliente`) AS `quantidade_clientes` from (`clientes` `c` join `enderecos` `e` on((`c`.`id_cliente` = `e`.`id_cliente`))) group by `e`.`cidade`,`e`.`uf`,`c`.`genero_cliente`,`idade` order by `e`.`uf`,`e`.`cidade`,`idade`,`quantidade_clientes` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_clientes_gmail`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes_gmail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`londres`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes_gmail` AS select count(`clientes`.`id_cliente`) AS `Quantidade_Clientes_Gmail` from `clientes` where (`clientes`.`email_cliente` like '%@gmail.com%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_lista_idades`
--

/*!50001 DROP VIEW IF EXISTS `vw_lista_idades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`londres`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_lista_idades` AS select `clientes`.`id_cliente` AS `id_cliente`,`clientes`.`dt_nasc_cliente` AS `dt_nasc_cliente`,timestampdiff(YEAR,`clientes`.`dt_nasc_cliente`,curdate()) AS `idade_atual` from `clientes` order by `clientes`.`dt_nasc_cliente` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'londres'
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
/*!50003 DROP PROCEDURE IF EXISTS `sp_verificar_atualizacao_cadastral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`londres`@`%` PROCEDURE `sp_verificar_atualizacao_cadastral`()
BEGIN
    SELECT
        c.id_cliente,
        c.nome_completo_cliente,
        c.email_cliente,
        MAX(e.updated_at) AS ultima_atualizacao_endereco,
        COALESCE(TIMESTAMPDIFF(MONTH, MAX(e.updated_at), NOW()), 0) AS meses_sem_atualizar,
        CASE
            WHEN MAX(e.updated_at) IS NULL THEN 'CRÍTICO (Sem Endereço)'
            WHEN TIMESTAMPDIFF(MONTH, MAX(e.updated_at), NOW()) > 6 THEN 'CRÍTICO'
            ELSE 'NORMAL'
        END AS flag_criticidade
    FROM
        clientes c
    LEFT JOIN
        enderecos e ON c.id_cliente = e.id_cliente
    GROUP BY
        c.id_cliente,
        c.nome_completo_cliente,
        c.email_cliente;
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

-- Dump completed on 2026-11-19 10:37:16
