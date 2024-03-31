-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_bd
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Temporary view structure for view `informacion_personal_medico`
--

DROP TABLE IF EXISTS `informacion_personal_medico`;
/*!50001 DROP VIEW IF EXISTS `informacion_personal_medico`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `informacion_personal_medico` AS SELECT 
 1 AS `id_medico`,
 1 AS `nombre_medico`,
 1 AS `apellido_medico`,
 1 AS `especialidad_medico`,
 1 AS `telefono_medico`,
 1 AS `id_enfermero`,
 1 AS `nombre_enfermero`,
 1 AS `apellido_enfermero`,
 1 AS `telefono_enfermero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `historial_procedimientos`
--

DROP TABLE IF EXISTS `historial_procedimientos`;
/*!50001 DROP VIEW IF EXISTS `historial_procedimientos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historial_procedimientos` AS SELECT 
 1 AS `id_medico`,
 1 AS `nombre_medico`,
 1 AS `apellido_medico`,
 1 AS `especialidad`,
 1 AS `id_enfermero`,
 1 AS `nombre_enfermero`,
 1 AS `apellido_enfermero`,
 1 AS `tipo_procedimiento`,
 1 AS `nombre_paciente`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `historial_paciente_procedimiento_medicamento`
--

DROP TABLE IF EXISTS `historial_paciente_procedimiento_medicamento`;
/*!50001 DROP VIEW IF EXISTS `historial_paciente_procedimiento_medicamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historial_paciente_procedimiento_medicamento` AS SELECT 
 1 AS `id_paciente`,
 1 AS `nombre_paciente`,
 1 AS `apellido_paciente`,
 1 AS `telefono_paciente`,
 1 AS `nombre_medicamento`,
 1 AS `dosis`,
 1 AS `tipo_procedimiento`,
 1 AS `fecha`,
 1 AS `valor_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `informacion_personal_medico`
--

/*!50001 DROP VIEW IF EXISTS `informacion_personal_medico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `informacion_personal_medico` AS select `m`.`id_medico` AS `id_medico`,`m`.`nombre_medico` AS `nombre_medico`,`m`.`apellido_medico` AS `apellido_medico`,`m`.`especialidad` AS `especialidad_medico`,`tm`.`telefono` AS `telefono_medico`,`e`.`id_enfermero` AS `id_enfermero`,`e`.`nombre_enfermero` AS `nombre_enfermero`,`e`.`apellido_enfermero` AS `apellido_enfermero`,`te`.`telefono` AS `telefono_enfermero` from (((`tb_medico` `m` join `telefono_medico` `tm` on((`m`.`id_medico` = `tm`.`tb_medico_id_medico`))) join `tb_enfermero` `e` on((`m`.`id_medico` = `e`.`tb_medico_id_medico`))) join `telefono_enfermero` `te` on((`e`.`id_enfermero` = `te`.`tb_enfermero_id_enfermero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historial_procedimientos`
--

/*!50001 DROP VIEW IF EXISTS `historial_procedimientos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historial_procedimientos` AS select `m`.`id_medico` AS `id_medico`,`m`.`nombre_medico` AS `nombre_medico`,`m`.`apellido_medico` AS `apellido_medico`,`m`.`especialidad` AS `especialidad`,`e`.`id_enfermero` AS `id_enfermero`,`e`.`nombre_enfermero` AS `nombre_enfermero`,`e`.`apellido_enfermero` AS `apellido_enfermero`,`pro`.`tipo_procedimiento` AS `tipo_procedimiento`,`pa`.`nombre_paciente` AS `nombre_paciente`,`fa`.`fecha` AS `fecha` from (((((`tb_medico` `m` join `tb_medico_procedimiento` `mp` on((`m`.`id_medico` = `mp`.`tb_medico_id_medico`))) join `tb_procedimiento` `pro` on((`mp`.`tb_procedimiento_id_procedimiento` = `pro`.`id_procedimiento`))) join `tb_paciente` `pa` on((`pro`.`id_procedimiento` = `pa`.`id_paciente`))) join `factura` `fa` on((`pro`.`id_procedimiento` = `fa`.`id_factura`))) join `tb_enfermero` `e` on((`fa`.`id_factura` = `e`.`tb_medico_id_medico`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historial_paciente_procedimiento_medicamento`
--

/*!50001 DROP VIEW IF EXISTS `historial_paciente_procedimiento_medicamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historial_paciente_procedimiento_medicamento` AS select `p`.`id_paciente` AS `id_paciente`,`p`.`nombre_paciente` AS `nombre_paciente`,`p`.`apellido_paciente` AS `apellido_paciente`,`t`.`telefono` AS `telefono_paciente`,`m`.`nombre_medicamento` AS `nombre_medicamento`,`m`.`dosis` AS `dosis`,`pro`.`tipo_procedimiento` AS `tipo_procedimiento`,`f`.`fecha` AS `fecha`,`f`.`valor_total` AS `valor_total` from (((((`tb_paciente` `p` join `telefono_paciente` `t` on((`p`.`id_paciente` = `t`.`tb_paciente_id_paciente`))) join `tb_paciente_medicamento` `pm` on((`p`.`id_paciente` = `pm`.`tb_paciente_id_paciente`))) join `tb_medicamento` `m` on((`pm`.`tb_medicamento_id_medicamento` = `m`.`id_medicamento`))) join `tb_procedimiento` `pro` on((`p`.`tb_procedimiento_id_procedimiento` = `pro`.`id_procedimiento`))) join `factura` `f` on((`p`.`id_paciente` = `f`.`tb_paciente_id_paciente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-31 14:13:34
