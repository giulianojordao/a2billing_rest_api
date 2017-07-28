-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: a2billing_rest_api_test
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Table structure for table `cc_agent`
--

DROP TABLE IF EXISTS `cc_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_agent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `datecreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'f',
  `login` char(20) COLLATE utf8_bin NOT NULL,
  `passwd` char(40) COLLATE utf8_bin DEFAULT NULL,
  `location` text COLLATE utf8_bin,
  `language` char(5) COLLATE utf8_bin DEFAULT 'en',
  `id_tariffgroup` int(11) DEFAULT NULL,
  `options` int(11) NOT NULL DEFAULT '0',
  `credit` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `currency` char(3) COLLATE utf8_bin DEFAULT 'USD',
  `locale` char(10) COLLATE utf8_bin DEFAULT 'C',
  `commission` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `vat` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `banner` text COLLATE utf8_bin,
  `perms` int(11) DEFAULT NULL,
  `lastname` char(50) COLLATE utf8_bin DEFAULT NULL,
  `firstname` char(50) COLLATE utf8_bin DEFAULT NULL,
  `address` char(100) COLLATE utf8_bin DEFAULT NULL,
  `city` char(40) COLLATE utf8_bin DEFAULT NULL,
  `state` char(40) COLLATE utf8_bin DEFAULT NULL,
  `country` char(40) COLLATE utf8_bin DEFAULT NULL,
  `zipcode` char(20) COLLATE utf8_bin DEFAULT NULL,
  `phone` char(20) COLLATE utf8_bin DEFAULT NULL,
  `email` char(70) COLLATE utf8_bin DEFAULT NULL,
  `fax` char(20) COLLATE utf8_bin DEFAULT NULL,
  `company` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `com_balance` decimal(15,5) NOT NULL,
  `threshold_remittance` decimal(15,5) NOT NULL,
  `bank_info` mediumtext COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_agent`
--

LOCK TABLES `cc_agent` WRITE;
/*!40000 ALTER TABLE `cc_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_agent_commission`
--

DROP TABLE IF EXISTS `cc_agent_commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_agent_commission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_payment` bigint(20) DEFAULT NULL,
  `id_card` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(15,5) NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `id_agent` int(11) NOT NULL,
  `commission_type` tinyint(4) NOT NULL,
  `commission_percent` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_agent_commission`
--

LOCK TABLES `cc_agent_commission` WRITE;
/*!40000 ALTER TABLE `cc_agent_commission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_agent_commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_agent_signup`
--

DROP TABLE IF EXISTS `cc_agent_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_agent_signup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_agent` int(11) NOT NULL,
  `code` varchar(30) COLLATE utf8_bin NOT NULL,
  `id_tariffgroup` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_agent_signup`
--

LOCK TABLES `cc_agent_signup` WRITE;
/*!40000 ALTER TABLE `cc_agent_signup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_agent_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_agent_tariffgroup`
--

DROP TABLE IF EXISTS `cc_agent_tariffgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_agent_tariffgroup` (
  `id_agent` bigint(20) NOT NULL,
  `id_tariffgroup` int(11) NOT NULL,
  PRIMARY KEY (`id_agent`,`id_tariffgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_agent_tariffgroup`
--

LOCK TABLES `cc_agent_tariffgroup` WRITE;
/*!40000 ALTER TABLE `cc_agent_tariffgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_agent_tariffgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_alarm`
--

DROP TABLE IF EXISTS `cc_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_alarm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin NOT NULL,
  `periode` int(11) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '1',
  `maxvalue` float NOT NULL,
  `minvalue` float NOT NULL DEFAULT '-1',
  `id_trunk` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `numberofrun` int(11) NOT NULL DEFAULT '0',
  `numberofalarm` int(11) NOT NULL DEFAULT '0',
  `datecreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datelastrun` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emailreport` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_alarm`
--

LOCK TABLES `cc_alarm` WRITE;
/*!40000 ALTER TABLE `cc_alarm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_alarm_report`
--

DROP TABLE IF EXISTS `cc_alarm_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_alarm_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cc_alarm_id` bigint(20) NOT NULL,
  `calculatedvalue` float NOT NULL,
  `daterun` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_alarm_report`
--

LOCK TABLES `cc_alarm_report` WRITE;
/*!40000 ALTER TABLE `cc_alarm_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_alarm_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_autorefill_report`
--

DROP TABLE IF EXISTS `cc_autorefill_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_autorefill_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `daterun` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `totalcardperform` int(11) DEFAULT NULL,
  `totalcredit` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_autorefill_report`
--

LOCK TABLES `cc_autorefill_report` WRITE;
/*!40000 ALTER TABLE `cc_autorefill_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_autorefill_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_backup`
--

DROP TABLE IF EXISTS `cc_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_backup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `path` varchar(255) COLLATE utf8_bin NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_backup_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_backup`
--

LOCK TABLES `cc_backup` WRITE;
/*!40000 ALTER TABLE `cc_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_billing_customer`
--

DROP TABLE IF EXISTS `cc_billing_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_billing_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_card` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_invoice` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_billing_customer`
--

LOCK TABLES `cc_billing_customer` WRITE;
/*!40000 ALTER TABLE `cc_billing_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_billing_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_call`
--

DROP TABLE IF EXISTS `cc_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_call` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(40) COLLATE utf8_bin NOT NULL,
  `uniqueid` varchar(30) COLLATE utf8_bin NOT NULL,
  `card_id` bigint(20) NOT NULL,
  `nasipaddress` varchar(30) COLLATE utf8_bin NOT NULL,
  `starttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stoptime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sessiontime` int(11) DEFAULT NULL,
  `calledstation` varchar(30) COLLATE utf8_bin NOT NULL,
  `sessionbill` float DEFAULT NULL,
  `id_tariffgroup` int(11) DEFAULT NULL,
  `id_tariffplan` int(11) DEFAULT NULL,
  `id_ratecard` int(11) DEFAULT NULL,
  `id_trunk` int(11) DEFAULT NULL,
  `sipiax` int(11) DEFAULT '0',
  `src` varchar(40) COLLATE utf8_bin NOT NULL,
  `id_did` int(11) DEFAULT NULL,
  `buycost` decimal(15,5) DEFAULT '0.00000',
  `id_card_package_offer` int(11) DEFAULT '0',
  `real_sessiontime` int(11) DEFAULT NULL,
  `dnid` varchar(40) COLLATE utf8_bin NOT NULL,
  `terminatecauseid` int(1) DEFAULT '1',
  `destination` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `starttime` (`starttime`),
  KEY `calledstation` (`calledstation`),
  KEY `terminatecauseid` (`terminatecauseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_call`
--

LOCK TABLES `cc_call` WRITE;
/*!40000 ALTER TABLE `cc_call` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_callback_spool`
--

DROP TABLE IF EXISTS `cc_callback_spool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_callback_spool` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uniqueid` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `server_ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `num_attempt` int(11) NOT NULL DEFAULT '0',
  `last_attempt_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `manager_result` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `agi_result` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `callback_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `exten` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `context` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `priority` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `application` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `data` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `timeout` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `callerid` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `variable` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `account` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `async` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `actionid` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `id_server` int(11) DEFAULT NULL,
  `id_server_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cc_callback_spool_uniqueid_key` (`uniqueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_callback_spool`
--

LOCK TABLES `cc_callback_spool` WRITE;
/*!40000 ALTER TABLE `cc_callback_spool` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_callback_spool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_callerid`
--

DROP TABLE IF EXISTS `cc_callerid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_callerid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cid` varchar(100) COLLATE utf8_bin NOT NULL,
  `id_cc_card` bigint(20) NOT NULL,
  `activated` char(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_callerid_cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_callerid`
--

LOCK TABLES `cc_callerid` WRITE;
/*!40000 ALTER TABLE `cc_callerid` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_callerid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `cc_callplan_lcr`
--

DROP TABLE IF EXISTS `cc_callplan_lcr`;
/*!50001 DROP VIEW IF EXISTS `cc_callplan_lcr`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cc_callplan_lcr` AS SELECT
 1 AS `id`,
 1 AS `destination`,
 1 AS `dialprefix`,
 1 AS `buyrate`,
 1 AS `rateinitial`,
 1 AS `startdate`,
 1 AS `stopdate`,
 1 AS `initblock`,
 1 AS `connectcharge`,
 1 AS `id_trunk`,
 1 AS `idtariffplan`,
 1 AS `ratecard_id`,
 1 AS `tariffgroup_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cc_campaign`
--

DROP TABLE IF EXISTS `cc_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) COLLATE utf8_bin NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startingdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expirationdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8_bin,
  `id_card` bigint(20) NOT NULL DEFAULT '0',
  `secondusedreal` int(11) DEFAULT '0',
  `nb_callmade` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `frequency` int(11) NOT NULL DEFAULT '20',
  `forward_number` char(50) COLLATE utf8_bin DEFAULT NULL,
  `daily_start_time` time NOT NULL DEFAULT '10:00:00',
  `daily_stop_time` time NOT NULL DEFAULT '18:00:00',
  `monday` tinyint(4) NOT NULL DEFAULT '1',
  `tuesday` tinyint(4) NOT NULL DEFAULT '1',
  `wednesday` tinyint(4) NOT NULL DEFAULT '1',
  `thursday` tinyint(4) NOT NULL DEFAULT '1',
  `friday` tinyint(4) NOT NULL DEFAULT '1',
  `saturday` tinyint(4) NOT NULL DEFAULT '0',
  `sunday` tinyint(4) NOT NULL DEFAULT '0',
  `id_cid_group` int(11) NOT NULL,
  `id_campaign_config` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_campaign_campaign_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_campaign`
--

LOCK TABLES `cc_campaign` WRITE;
/*!40000 ALTER TABLE `cc_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_campaign_config`
--

DROP TABLE IF EXISTS `cc_campaign_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_campaign_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  `flatrate` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `context` varchar(40) COLLATE utf8_bin NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_campaign_config`
--

LOCK TABLES `cc_campaign_config` WRITE;
/*!40000 ALTER TABLE `cc_campaign_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_campaign_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_campaign_phonebook`
--

DROP TABLE IF EXISTS `cc_campaign_phonebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_campaign_phonebook` (
  `id_campaign` int(11) NOT NULL,
  `id_phonebook` int(11) NOT NULL,
  PRIMARY KEY (`id_campaign`,`id_phonebook`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_campaign_phonebook`
--

LOCK TABLES `cc_campaign_phonebook` WRITE;
/*!40000 ALTER TABLE `cc_campaign_phonebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_campaign_phonebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_campaign_phonestatus`
--

DROP TABLE IF EXISTS `cc_campaign_phonestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_campaign_phonestatus` (
  `id_phonenumber` bigint(20) NOT NULL,
  `id_campaign` int(11) NOT NULL,
  `id_callback` varchar(40) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lastuse` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_phonenumber`,`id_campaign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_campaign_phonestatus`
--

LOCK TABLES `cc_campaign_phonestatus` WRITE;
/*!40000 ALTER TABLE `cc_campaign_phonestatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_campaign_phonestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_campaignconf_cardgroup`
--

DROP TABLE IF EXISTS `cc_campaignconf_cardgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_campaignconf_cardgroup` (
  `id_campaign_config` int(11) NOT NULL,
  `id_card_group` int(11) NOT NULL,
  PRIMARY KEY (`id_campaign_config`,`id_card_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_campaignconf_cardgroup`
--

LOCK TABLES `cc_campaignconf_cardgroup` WRITE;
/*!40000 ALTER TABLE `cc_campaignconf_cardgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_campaignconf_cardgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_card`
--

DROP TABLE IF EXISTS `cc_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstusedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expirationdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enableexpire` int(11) DEFAULT '0',
  `expiredays` int(11) DEFAULT '0',
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `useralias` varchar(50) COLLATE utf8_bin NOT NULL,
  `uipass` varchar(50) COLLATE utf8_bin NOT NULL,
  `credit` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `tariff` int(11) DEFAULT '0',
  `id_didgroup` int(11) DEFAULT '0',
  `activated` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'f',
  `status` int(11) NOT NULL DEFAULT '1',
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `city` varchar(40) COLLATE utf8_bin NOT NULL,
  `state` varchar(40) COLLATE utf8_bin NOT NULL,
  `country` varchar(40) COLLATE utf8_bin NOT NULL,
  `zipcode` varchar(20) COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(70) COLLATE utf8_bin NOT NULL,
  `fax` varchar(20) COLLATE utf8_bin NOT NULL,
  `inuse` int(11) DEFAULT '0',
  `simultaccess` int(11) DEFAULT '0',
  `currency` char(3) COLLATE utf8_bin DEFAULT 'USD',
  `lastuse` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nbused` int(11) DEFAULT '0',
  `typepaid` int(11) DEFAULT '0',
  `creditlimit` int(11) DEFAULT '0',
  `voipcall` int(11) DEFAULT '0',
  `sip_buddy` int(11) DEFAULT '0',
  `iax_buddy` int(11) DEFAULT '0',
  `language` char(5) COLLATE utf8_bin DEFAULT 'en',
  `redial` varchar(50) COLLATE utf8_bin NOT NULL,
  `runservice` int(11) DEFAULT '0',
  `nbservice` int(11) DEFAULT '0',
  `id_campaign` int(11) DEFAULT '0',
  `num_trials_done` bigint(20) DEFAULT '0',
  `vat` float NOT NULL DEFAULT '0',
  `servicelastrun` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initialbalance` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `invoiceday` int(11) DEFAULT '1',
  `autorefill` int(11) DEFAULT '0',
  `loginkey` varchar(40) COLLATE utf8_bin NOT NULL,
  `mac_addr` char(17) COLLATE utf8_bin NOT NULL DEFAULT '00-00-00-00-00-00',
  `id_timezone` int(11) DEFAULT '0',
  `tag` varchar(50) COLLATE utf8_bin NOT NULL,
  `voicemail_permitted` int(11) NOT NULL DEFAULT '0',
  `voicemail_activated` smallint(6) NOT NULL DEFAULT '0',
  `last_notification` timestamp NULL DEFAULT NULL,
  `email_notification` varchar(70) COLLATE utf8_bin NOT NULL,
  `notify_email` smallint(6) NOT NULL DEFAULT '0',
  `credit_notification` int(11) NOT NULL DEFAULT '-1',
  `id_group` int(11) NOT NULL DEFAULT '1',
  `company_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `company_website` varchar(60) COLLATE utf8_bin NOT NULL,
  `vat_rn` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `traffic` bigint(20) DEFAULT NULL,
  `traffic_target` varchar(300) COLLATE utf8_bin NOT NULL,
  `discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `restriction` tinyint(4) NOT NULL DEFAULT '0',
  `id_seria` int(11) DEFAULT NULL,
  `serial` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_card_username` (`username`),
  UNIQUE KEY `cons_cc_card_useralias` (`useralias`),
  KEY `creationdate` (`creationdate`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_card`
--

LOCK TABLES `cc_card` WRITE;
/*!40000 ALTER TABLE `cc_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
  /*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cc_card_serial_set` BEFORE INSERT ON `cc_card`
 FOR EACH ROW BEGIN
	UPDATE cc_card_seria set value=value+1  where id=NEW.id_seria ;
	SELECT value INTO @serial from cc_card_seria where id=NEW.id_seria ;
	SET NEW.serial=@serial;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cc_card_serial_update` BEFORE UPDATE ON `cc_card`
 FOR EACH ROW BEGIN
	IF NEW.id_seria<>OLD.id_seria OR OLD.id_seria IS NULL THEN
		UPDATE cc_card_seria set value=value+1  where id=NEW.id_seria ;
		SELECT value INTO @serial from cc_card_seria where id=NEW.id_seria ;
		SET NEW.serial=@serial;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cc_card_archive`
--

DROP TABLE IF EXISTS `cc_card_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_card_archive` (
  `id` bigint(20) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstusedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expirationdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enableexpire` int(11) DEFAULT '0',
  `expiredays` int(11) DEFAULT '0',
  `username` char(50) COLLATE utf8_bin NOT NULL,
  `useralias` char(50) COLLATE utf8_bin NOT NULL,
  `uipass` char(50) COLLATE utf8_bin DEFAULT NULL,
  `credit` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `tariff` int(11) DEFAULT '0',
  `id_didgroup` int(11) DEFAULT '0',
  `activated` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'f',
  `status` int(11) DEFAULT '1',
  `lastname` char(50) COLLATE utf8_bin DEFAULT NULL,
  `firstname` char(50) COLLATE utf8_bin DEFAULT NULL,
  `address` char(100) COLLATE utf8_bin DEFAULT NULL,
  `city` char(40) COLLATE utf8_bin DEFAULT NULL,
  `state` char(40) COLLATE utf8_bin DEFAULT NULL,
  `country` char(40) COLLATE utf8_bin DEFAULT NULL,
  `zipcode` char(20) COLLATE utf8_bin DEFAULT NULL,
  `phone` char(20) COLLATE utf8_bin DEFAULT NULL,
  `email` char(70) COLLATE utf8_bin DEFAULT NULL,
  `fax` char(20) COLLATE utf8_bin DEFAULT NULL,
  `inuse` int(11) DEFAULT '0',
  `simultaccess` int(11) DEFAULT '0',
  `currency` char(3) COLLATE utf8_bin DEFAULT 'USD',
  `lastuse` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nbused` int(11) DEFAULT '0',
  `typepaid` int(11) DEFAULT '0',
  `creditlimit` int(11) DEFAULT '0',
  `voipcall` int(11) DEFAULT '0',
  `sip_buddy` int(11) DEFAULT '0',
  `iax_buddy` int(11) DEFAULT '0',
  `language` char(5) COLLATE utf8_bin DEFAULT 'en',
  `redial` char(50) COLLATE utf8_bin DEFAULT NULL,
  `runservice` int(11) DEFAULT '0',
  `nbservice` int(11) DEFAULT '0',
  `id_campaign` int(11) DEFAULT '0',
  `num_trials_done` bigint(20) DEFAULT '0',
  `vat` float NOT NULL DEFAULT '0',
  `servicelastrun` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initialbalance` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `invoiceday` int(11) DEFAULT '1',
  `autorefill` int(11) DEFAULT '0',
  `loginkey` char(40) COLLATE utf8_bin DEFAULT NULL,
  `activatedbyuser` char(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `id_timezone` int(11) DEFAULT '0',
  `tag` char(50) COLLATE utf8_bin DEFAULT NULL,
  `voicemail_permitted` int(11) NOT NULL DEFAULT '0',
  `voicemail_activated` smallint(6) NOT NULL DEFAULT '0',
  `last_notification` timestamp NULL DEFAULT NULL,
  `email_notification` char(70) COLLATE utf8_bin DEFAULT NULL,
  `notify_email` smallint(6) NOT NULL DEFAULT '0',
  `credit_notification` int(11) NOT NULL DEFAULT '-1',
  `id_group` int(11) NOT NULL DEFAULT '1',
  `company_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `company_website` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `VAT_RN` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `traffic` bigint(20) DEFAULT NULL,
  `traffic_target` mediumtext COLLATE utf8_bin,
  `discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `restriction` tinyint(4) NOT NULL DEFAULT '0',
  `mac_addr` char(17) COLLATE utf8_bin NOT NULL DEFAULT '00-00-00-00-00-00',
  PRIMARY KEY (`id`),
  KEY `creationdate` (`creationdate`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_card_archive`
--

LOCK TABLES `cc_card_archive` WRITE;
/*!40000 ALTER TABLE `cc_card_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_card_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_card_group`
--

DROP TABLE IF EXISTS `cc_card_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_card_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) COLLATE utf8_bin NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `users_perms` int(11) NOT NULL DEFAULT '0',
  `id_agent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_card_history`
--

DROP TABLE IF EXISTS `cc_card_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_card_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cc_card` bigint(20) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_card_package_offer`
--

DROP TABLE IF EXISTS `cc_card_package_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_card_package_offer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cc_card` bigint(20) NOT NULL,
  `id_cc_package_offer` bigint(20) NOT NULL,
  `date_consumption` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `used_secondes` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_cc_card_package_offer_id_card` (`id_cc_card`),
  KEY `ind_cc_card_package_offer_id_package_offer` (`id_cc_package_offer`),
  KEY `ind_cc_card_package_offer_date_consumption` (`date_consumption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_card_seria`
--

DROP TABLE IF EXISTS `cc_card_seria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_card_seria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) COLLATE utf8_bin NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `value` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_card_subscription`
--

DROP TABLE IF EXISTS `cc_card_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_card_subscription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cc_card` bigint(20) DEFAULT NULL,
  `id_subscription_fee` int(11) DEFAULT NULL,
  `startdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stopdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `product_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_card_subscription`
--

LOCK TABLES `cc_card_subscription` WRITE;
/*!40000 ALTER TABLE `cc_card_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_card_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_cardgroup_service`
--

DROP TABLE IF EXISTS `cc_cardgroup_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_cardgroup_service` (
  `id_card_group` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  PRIMARY KEY (`id_card_group`,`id_service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_cardgroup_service`
--

LOCK TABLES `cc_cardgroup_service` WRITE;
/*!40000 ALTER TABLE `cc_cardgroup_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_cardgroup_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_charge`
--

DROP TABLE IF EXISTS `cc_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_charge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cc_card` bigint(20) NOT NULL,
  `iduser` int(11) NOT NULL DEFAULT '0',
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` float NOT NULL DEFAULT '0',
  `chargetype` int(11) DEFAULT '0',
  `description` mediumtext COLLATE utf8_bin,
  `id_cc_did` bigint(20) DEFAULT '0',
  `id_cc_card_subscription` bigint(20) DEFAULT NULL,
  `cover_from` date DEFAULT NULL,
  `cover_to` date DEFAULT NULL,
  `charged_status` tinyint(4) NOT NULL DEFAULT '0',
  `invoiced_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ind_cc_charge_id_cc_card` (`id_cc_card`),
  KEY `ind_cc_charge_creationdate` (`creationdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_charge`
--

LOCK TABLES `cc_charge` WRITE;
/*!40000 ALTER TABLE `cc_charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_config`
--

DROP TABLE IF EXISTS `cc_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_title` varchar(100) COLLATE utf8_bin NOT NULL,
  `config_key` varchar(100) COLLATE utf8_bin NOT NULL,
  `config_value` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `config_description` text COLLATE utf8_bin NOT NULL,
  `config_valuetype` int(11) NOT NULL DEFAULT '0',
  `config_listvalues` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `config_group_title` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `cc_config` DISABLE KEYS */;

--
-- Table structure for table `cc_config_group`
--

DROP TABLE IF EXISTS `cc_config_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_config_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_title` varchar(64) COLLATE utf8_bin NOT NULL,
  `group_description` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_title` (`group_title`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_configuration`
--

DROP TABLE IF EXISTS `cc_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_configuration` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_title` varchar(64) COLLATE utf8_bin NOT NULL,
  `configuration_key` varchar(64) COLLATE utf8_bin NOT NULL,
  `configuration_value` varchar(255) COLLATE utf8_bin NOT NULL,
  `configuration_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `configuration_type` int(11) NOT NULL DEFAULT '0',
  `use_function` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `set_function` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_country`
--

DROP TABLE IF EXISTS `cc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `countrycode` char(80) COLLATE utf8_bin NOT NULL,
  `countryprefix` char(80) COLLATE utf8_bin NOT NULL,
  `countryname` char(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_currencies`
--

DROP TABLE IF EXISTS `cc_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_currencies` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `currency` char(3) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` decimal(12,5) unsigned NOT NULL DEFAULT '0.00000',
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `basecurrency` char(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_currencies_currency` (`currency`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_currencies`
--

--
-- Table structure for table `cc_did`
--

DROP TABLE IF EXISTS `cc_did`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_did` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cc_didgroup` bigint(20) NOT NULL,
  `id_cc_country` int(11) NOT NULL,
  `activated` int(11) NOT NULL DEFAULT '1',
  `reserved` int(11) DEFAULT '0',
  `iduser` bigint(20) NOT NULL DEFAULT '0',
  `did` char(50) COLLATE utf8_bin NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startingdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expirationdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8_bin,
  `secondusedreal` int(11) DEFAULT '0',
  `billingtype` int(11) DEFAULT '0',
  `fixrate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_did_did` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_did`
--

LOCK TABLES `cc_did` WRITE;
/*!40000 ALTER TABLE `cc_did` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_did` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_did_destination`
--

DROP TABLE IF EXISTS `cc_did_destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_did_destination` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `destination` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `id_cc_card` bigint(20) NOT NULL,
  `id_cc_did` bigint(20) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activated` int(11) NOT NULL DEFAULT '1',
  `secondusedreal` int(11) DEFAULT '0',
  `voip_call` int(11) DEFAULT '0',
  `validated` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_did_use`
--

DROP TABLE IF EXISTS `cc_did_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_did_use` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cc_card` bigint(20) DEFAULT NULL,
  `id_did` bigint(20) NOT NULL,
  `reservationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `releasedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` int(11) DEFAULT '0',
  `month_payed` int(11) DEFAULT '0',
  `reminded` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_didgroup`
--

DROP TABLE IF EXISTS `cc_didgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_didgroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL DEFAULT '0',
  `didgroupname` char(50) COLLATE utf8_bin NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_ecommerce_product`
--

DROP TABLE IF EXISTS `cc_ecommerce_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_ecommerce_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` mediumtext COLLATE utf8_bin,
  `expirationdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enableexpire` int(11) DEFAULT '0',
  `expiredays` int(11) DEFAULT '0',
  `mailtype` varchar(50) COLLATE utf8_bin NOT NULL,
  `credit` float NOT NULL DEFAULT '0',
  `tariff` int(11) DEFAULT '0',
  `id_didgroup` int(11) DEFAULT '0',
  `activated` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'f',
  `simultaccess` int(11) DEFAULT '0',
  `currency` char(3) COLLATE utf8_bin DEFAULT 'USD',
  `typepaid` int(11) DEFAULT '0',
  `creditlimit` int(11) DEFAULT '0',
  `language` char(5) COLLATE utf8_bin DEFAULT 'en',
  `runservice` int(11) DEFAULT '0',
  `sip_friend` int(11) DEFAULT '0',
  `iax_friend` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_epayment_log`
--

DROP TABLE IF EXISTS `cc_epayment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_epayment_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cardid` bigint(20) NOT NULL DEFAULT '0',
  `amount` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `vat` float NOT NULL DEFAULT '0',
  `paymentmethod` char(50) COLLATE utf8_bin NOT NULL,
  `cc_owner` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `cc_expires` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  `cvv` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `credit_card_type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `currency` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `transaction_detail` longtext COLLATE utf8_bin,
  `item_type` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_epayment_log_agent`
--

DROP TABLE IF EXISTS `cc_epayment_log_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_epayment_log_agent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `agent_id` bigint(20) NOT NULL DEFAULT '0',
  `amount` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `vat` float NOT NULL DEFAULT '0',
  `paymentmethod` char(50) COLLATE utf8_bin NOT NULL,
  `cc_owner` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `cc_expires` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  `cvv` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `credit_card_type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `currency` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `transaction_detail` longtext COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_iax_buddies`
--

DROP TABLE IF EXISTS `cc_iax_buddies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_iax_buddies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cc_card` int(11) NOT NULL DEFAULT '0',
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  `accountcode` varchar(20) COLLATE utf8_bin NOT NULL,
  `regexten` varchar(20) COLLATE utf8_bin NOT NULL,
  `amaflags` char(7) COLLATE utf8_bin DEFAULT NULL,
  `callgroup` char(10) COLLATE utf8_bin DEFAULT NULL,
  `callerid` varchar(80) COLLATE utf8_bin NOT NULL,
  `canreinvite` varchar(20) COLLATE utf8_bin NOT NULL,
  `context` varchar(80) COLLATE utf8_bin NOT NULL,
  `DEFAULTip` char(15) COLLATE utf8_bin DEFAULT NULL,
  `dtmfmode` char(7) COLLATE utf8_bin NOT NULL DEFAULT 'RFC2833',
  `fromuser` varchar(80) COLLATE utf8_bin NOT NULL,
  `fromdomain` varchar(80) COLLATE utf8_bin NOT NULL,
  `host` varchar(31) COLLATE utf8_bin NOT NULL,
  `insecure` varchar(20) COLLATE utf8_bin NOT NULL,
  `language` char(2) COLLATE utf8_bin DEFAULT NULL,
  `mailbox` varchar(50) COLLATE utf8_bin NOT NULL,
  `md5secret` varchar(80) COLLATE utf8_bin NOT NULL,
  `nat` char(3) COLLATE utf8_bin DEFAULT 'yes',
  `deny` varchar(95) COLLATE utf8_bin NOT NULL,
  `permit` varchar(95) COLLATE utf8_bin DEFAULT NULL,
  `mask` varchar(95) COLLATE utf8_bin NOT NULL,
  `pickupgroup` char(10) COLLATE utf8_bin DEFAULT NULL,
  `port` char(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `qualify` char(7) COLLATE utf8_bin DEFAULT 'yes',
  `restrictcid` char(1) COLLATE utf8_bin DEFAULT NULL,
  `rtptimeout` char(3) COLLATE utf8_bin DEFAULT NULL,
  `rtpholdtimeout` char(3) COLLATE utf8_bin DEFAULT NULL,
  `secret` varchar(80) COLLATE utf8_bin NOT NULL,
  `type` char(6) COLLATE utf8_bin NOT NULL DEFAULT 'friend',
  `username` varchar(80) COLLATE utf8_bin NOT NULL,
  `disallow` varchar(100) COLLATE utf8_bin NOT NULL,
  `allow` varchar(100) COLLATE utf8_bin NOT NULL,
  `musiconhold` varchar(100) COLLATE utf8_bin NOT NULL,
  `regseconds` int(11) NOT NULL DEFAULT '0',
  `ipaddr` char(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cancallforward` char(3) COLLATE utf8_bin DEFAULT 'yes',
  `trunk` char(3) COLLATE utf8_bin DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_iax_buddies_name` (`name`),
  KEY `name` (`name`),
  KEY `host` (`host`),
  KEY `ipaddr` (`ipaddr`),
  KEY `port` (`port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_invoice`
--

DROP TABLE IF EXISTS `cc_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_invoice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reference` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `id_card` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paid_status` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_invoice_conf`
--

DROP TABLE IF EXISTS `cc_invoice_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_invoice_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_val` varchar(50) COLLATE utf8_bin NOT NULL,
  `value` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_val` (`key_val`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_invoice_item`
--

DROP TABLE IF EXISTS `cc_invoice_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_invoice_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_invoice` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `VAT` decimal(4,2) NOT NULL DEFAULT '0.00',
  `description` mediumtext COLLATE utf8_bin NOT NULL,
  `id_ext` bigint(20) DEFAULT NULL,
  `type_ext` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_invoice_payment`
--

DROP TABLE IF EXISTS `cc_invoice_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_invoice_payment` (
  `id_invoice` bigint(20) NOT NULL,
  `id_payment` bigint(20) NOT NULL,
  PRIMARY KEY (`id_invoice`,`id_payment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_iso639`
--

DROP TABLE IF EXISTS `cc_iso639`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_iso639` (
  `code` char(2) COLLATE utf8_bin NOT NULL,
  `name` char(16) COLLATE utf8_bin NOT NULL,
  `lname` char(16) COLLATE utf8_bin DEFAULT NULL,
  `charset` char(16) COLLATE utf8_bin NOT NULL DEFAULT 'ISO-8859-1',
  PRIMARY KEY (`code`),
  UNIQUE KEY `iso639_name_key` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_logpayment`
--

DROP TABLE IF EXISTS `cc_logpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_logpayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment` decimal(15,5) NOT NULL,
  `card_id` bigint(20) NOT NULL,
  `id_logrefill` bigint(20) DEFAULT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `added_refill` smallint(6) NOT NULL DEFAULT '0',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0',
  `added_commission` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_logpayment_agent`
--

DROP TABLE IF EXISTS `cc_logpayment_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_logpayment_agent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment` decimal(15,5) NOT NULL,
  `agent_id` bigint(20) NOT NULL,
  `id_logrefill` bigint(20) DEFAULT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `added_refill` tinyint(4) NOT NULL DEFAULT '0',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_logrefill`
--

DROP TABLE IF EXISTS `cc_logrefill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_logrefill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credit` decimal(15,5) NOT NULL,
  `card_id` bigint(20) NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `refill_type` tinyint(4) NOT NULL DEFAULT '0',
  `added_invoice` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_logrefill_agent`
--

DROP TABLE IF EXISTS `cc_logrefill_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_logrefill_agent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credit` decimal(15,5) NOT NULL,
  `agent_id` bigint(20) NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `refill_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_message_agent`
--

DROP TABLE IF EXISTS `cc_message_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_message_agent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_agent` int(11) NOT NULL,
  `message` longtext COLLATE utf8_bin,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `logo` tinyint(4) NOT NULL DEFAULT '1',
  `order_display` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_notification`
--

DROP TABLE IF EXISTS `cc_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_value` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `from_type` tinyint(4) NOT NULL,
  `from_id` bigint(20) DEFAULT '0',
  `link_id` bigint(20) DEFAULT NULL,
  `link_type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_notification_admin`
--

DROP TABLE IF EXISTS `cc_notification_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_notification_admin` (
  `id_notification` bigint(20) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `viewed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_notification`,`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_outbound_cid_group`
--

DROP TABLE IF EXISTS `cc_outbound_cid_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_outbound_cid_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `group_name` varchar(70) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_outbound_cid_list`
--

DROP TABLE IF EXISTS `cc_outbound_cid_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_outbound_cid_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outbound_cid_group` int(11) NOT NULL,
  `cid` char(100) COLLATE utf8_bin DEFAULT NULL,
  `activated` int(11) NOT NULL DEFAULT '0',
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_package_group`
--

DROP TABLE IF EXISTS `cc_package_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_package_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) COLLATE utf8_bin NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_package_group`
--

LOCK TABLES `cc_package_group` WRITE;
/*!40000 ALTER TABLE `cc_package_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_package_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_package_offer`
--

DROP TABLE IF EXISTS `cc_package_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_package_offer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` varchar(70) COLLATE utf8_bin NOT NULL,
  `packagetype` int(11) NOT NULL,
  `billingtype` int(11) NOT NULL,
  `startday` int(11) NOT NULL,
  `freetimetocall` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_package_offer`
--

LOCK TABLES `cc_package_offer` WRITE;
/*!40000 ALTER TABLE `cc_package_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_package_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_package_rate`
--

DROP TABLE IF EXISTS `cc_package_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_package_rate` (
  `package_id` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL,
  PRIMARY KEY (`package_id`,`rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_package_rate`
--

LOCK TABLES `cc_package_rate` WRITE;
/*!40000 ALTER TABLE `cc_package_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_package_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_packgroup_package`
--

DROP TABLE IF EXISTS `cc_packgroup_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_packgroup_package` (
  `packagegroup_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  PRIMARY KEY (`packagegroup_id`,`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_packgroup_package`
--

LOCK TABLES `cc_packgroup_package` WRITE;
/*!40000 ALTER TABLE `cc_packgroup_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_packgroup_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_payment_methods`
--

DROP TABLE IF EXISTS `cc_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` char(100) COLLATE utf8_bin NOT NULL,
  `payment_filename` char(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_payments`
--

DROP TABLE IF EXISTS `cc_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customers_id` bigint(20) NOT NULL DEFAULT '0',
  `customers_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `customers_email_address` varchar(96) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(127) COLLATE utf8_bin DEFAULT NULL,
  `item_id` varchar(127) COLLATE utf8_bin DEFAULT NULL,
  `item_quantity` int(11) NOT NULL DEFAULT '0',
  `payment_method` varchar(32) COLLATE utf8_bin NOT NULL,
  `cc_type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `cc_owner` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_amount` decimal(14,6) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_bin DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_payments`
--

LOCK TABLES `cc_payments` WRITE;
/*!40000 ALTER TABLE `cc_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_payments_agent`
--

DROP TABLE IF EXISTS `cc_payments_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_payments_agent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `agent_id` bigint(20) NOT NULL,
  `agent_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `agent_email_address` varchar(96) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(127) COLLATE utf8_bin DEFAULT NULL,
  `item_id` varchar(127) COLLATE utf8_bin DEFAULT NULL,
  `item_quantity` int(11) NOT NULL DEFAULT '0',
  `payment_method` varchar(32) COLLATE utf8_bin NOT NULL,
  `cc_type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `cc_owner` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_amount` decimal(14,6) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_bin DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_payments_agent`
--

LOCK TABLES `cc_payments_agent` WRITE;
/*!40000 ALTER TABLE `cc_payments_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_payments_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_payments_status`
--

DROP TABLE IF EXISTS `cc_payments_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_payments_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL,
  `status_name` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_paypal`
--

DROP TABLE IF EXISTS `cc_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_paypal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payer_id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `payment_date` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `txn_id` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `first_name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `payer_email` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `payer_status` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `payment_type` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `memo` tinytext COLLATE utf8_bin,
  `item_name` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `item_number` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `mc_gross` decimal(9,2) DEFAULT NULL,
  `mc_fee` decimal(9,2) DEFAULT NULL,
  `tax` decimal(9,2) DEFAULT NULL,
  `mc_currency` char(3) COLLATE utf8_bin DEFAULT NULL,
  `address_name` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_street` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_city` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_state` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_zip` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_country` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_status` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payer_business_name` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_status` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pending_reason` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_code` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `txn_type` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `txn_id` (`txn_id`),
  KEY `txn_id_2` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_paypal`
--

LOCK TABLES `cc_paypal` WRITE;
/*!40000 ALTER TABLE `cc_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_phonebook`
--

DROP TABLE IF EXISTS `cc_phonebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_phonebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) COLLATE utf8_bin NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `id_card` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_phonebook`
--

LOCK TABLES `cc_phonebook` WRITE;
/*!40000 ALTER TABLE `cc_phonebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_phonebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_phonenumber`
--

DROP TABLE IF EXISTS `cc_phonenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_phonenumber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_phonebook` int(11) NOT NULL,
  `number` char(30) COLLATE utf8_bin NOT NULL,
  `name` char(40) COLLATE utf8_bin DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `info` mediumtext COLLATE utf8_bin,
  `amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_phonenumber`
--

LOCK TABLES `cc_phonenumber` WRITE;
/*!40000 ALTER TABLE `cc_phonenumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_phonenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_prefix`
--

DROP TABLE IF EXISTS `cc_prefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_prefix` (
  `prefix` bigint(20) NOT NULL AUTO_INCREMENT,
  `destination` varchar(60) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`prefix`),
  KEY `destination` (`destination`)
) ENGINE=InnoDB AUTO_INCREMENT=998795791 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_provider`
--

DROP TABLE IF EXISTS `cc_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_name` char(30) COLLATE utf8_bin NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` mediumtext COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_provider_provider_name` (`provider_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_provider`
--

LOCK TABLES `cc_provider` WRITE;
/*!40000 ALTER TABLE `cc_provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_ratecard`
--

DROP TABLE IF EXISTS `cc_ratecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_ratecard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtariffplan` int(11) NOT NULL DEFAULT '0',
  `dialprefix` char(30) COLLATE utf8_bin NOT NULL,
  `buyrate` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `buyrateinitblock` int(11) NOT NULL DEFAULT '0',
  `buyrateincrement` int(11) NOT NULL DEFAULT '0',
  `rateinitial` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `initblock` int(11) NOT NULL DEFAULT '0',
  `billingblock` int(11) NOT NULL DEFAULT '0',
  `connectcharge` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `disconnectcharge` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `stepchargea` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `chargea` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `timechargea` int(11) NOT NULL DEFAULT '0',
  `billingblocka` int(11) NOT NULL DEFAULT '0',
  `stepchargeb` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `chargeb` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `timechargeb` int(11) NOT NULL DEFAULT '0',
  `billingblockb` int(11) NOT NULL DEFAULT '0',
  `stepchargec` float NOT NULL DEFAULT '0',
  `chargec` float NOT NULL DEFAULT '0',
  `timechargec` int(11) NOT NULL DEFAULT '0',
  `billingblockc` int(11) NOT NULL DEFAULT '0',
  `startdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stopdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `starttime` smallint(5) unsigned DEFAULT '0',
  `endtime` smallint(5) unsigned DEFAULT '10079',
  `id_trunk` int(11) DEFAULT '-1',
  `musiconhold` char(100) COLLATE utf8_bin NOT NULL,
  `id_outbound_cidgroup` int(11) DEFAULT '-1',
  `rounding_calltime` int(11) NOT NULL DEFAULT '0',
  `rounding_threshold` int(11) NOT NULL DEFAULT '0',
  `additional_block_charge` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `additional_block_charge_time` int(11) NOT NULL DEFAULT '0',
  `tag` char(50) COLLATE utf8_bin DEFAULT NULL,
  `disconnectcharge_after` int(11) NOT NULL DEFAULT '0',
  `is_merged` int(11) DEFAULT '0',
  `additional_grace` int(11) NOT NULL DEFAULT '0',
  `minimal_cost` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `announce_time_correction` decimal(5,3) NOT NULL DEFAULT '1.000',
  `destination` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ind_cc_ratecard_dialprefix` (`dialprefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cc_ratecard_validate_regex_ins` BEFORE INSERT ON `cc_ratecard`
 FOR EACH ROW BEGIN
  DECLARE valid INTEGER;
  SELECT '0' REGEXP REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONCAT('^', NEW.dialprefix, '$'), 'X', '[0-9]'), 'Z', '[1-9]'), 'N', '[2-9]'), '.', '.+'), '_', '') INTO valid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cc_ratecard_validate_regex_upd` BEFORE UPDATE ON `cc_ratecard`
 FOR EACH ROW BEGIN
  DECLARE valid INTEGER;
  SELECT '0' REGEXP REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONCAT('^', NEW.dialprefix, '$'), 'X', '[0-9]'), 'Z', '[1-9]'), 'N', '[2-9]'), '.', '.+'), '_', '') INTO valid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cc_receipt`
--

DROP TABLE IF EXISTS `cc_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_receipt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_card` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` mediumtext COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_receipt_item`
--

DROP TABLE IF EXISTS `cc_receipt_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_receipt_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_receipt` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `description` mediumtext COLLATE utf8_bin NOT NULL,
  `id_ext` bigint(20) DEFAULT NULL,
  `type_ext` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_receipt_item`
--

LOCK TABLES `cc_receipt_item` WRITE;
/*!40000 ALTER TABLE `cc_receipt_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_receipt_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_remittance_request`
--

DROP TABLE IF EXISTS `cc_remittance_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_remittance_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_agent` bigint(20) NOT NULL,
  `amount` decimal(15,5) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_remittance_request`
--

LOCK TABLES `cc_remittance_request` WRITE;
/*!40000 ALTER TABLE `cc_remittance_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_remittance_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_restricted_phonenumber`
--

DROP TABLE IF EXISTS `cc_restricted_phonenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_restricted_phonenumber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) COLLATE utf8_bin NOT NULL,
  `id_card` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_restricted_phonenumber`
--

LOCK TABLES `cc_restricted_phonenumber` WRITE;
/*!40000 ALTER TABLE `cc_restricted_phonenumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_restricted_phonenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_server_group`
--

DROP TABLE IF EXISTS `cc_server_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_server_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `description` mediumtext COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_server_manager`
--

DROP TABLE IF EXISTS `cc_server_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_server_manager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_group` int(11) DEFAULT '1',
  `server_ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `manager_host` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `manager_username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `manager_secret` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `lasttime_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `cc_service`
--

DROP TABLE IF EXISTS `cc_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_service` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` char(100) COLLATE utf8_bin NOT NULL,
  `amount` float NOT NULL,
  `period` int(11) NOT NULL DEFAULT '1',
  `rule` int(11) NOT NULL DEFAULT '0',
  `daynumber` int(11) NOT NULL DEFAULT '0',
  `stopmode` int(11) NOT NULL DEFAULT '0',
  `maxnumbercycle` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `numberofrun` int(11) NOT NULL DEFAULT '0',
  `datecreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datelastrun` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emailreport` char(100) COLLATE utf8_bin NOT NULL,
  `totalcredit` float NOT NULL DEFAULT '0',
  `totalcardperform` int(11) NOT NULL DEFAULT '0',
  `operate_mode` tinyint(4) DEFAULT '0',
  `dialplan` int(11) DEFAULT '0',
  `use_group` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_service`
--

LOCK TABLES `cc_service` WRITE;
/*!40000 ALTER TABLE `cc_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_service_report`
--

DROP TABLE IF EXISTS `cc_service_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_service_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cc_service_id` bigint(20) NOT NULL,
  `daterun` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `totalcardperform` int(11) DEFAULT NULL,
  `totalcredit` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_service_report`
--

LOCK TABLES `cc_service_report` WRITE;
/*!40000 ALTER TABLE `cc_service_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_service_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_sip_buddies`
--

DROP TABLE IF EXISTS `cc_sip_buddies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_sip_buddies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cc_card` int(11) NOT NULL DEFAULT '0',
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  `accountcode` varchar(20) COLLATE utf8_bin NOT NULL,
  `regexten` varchar(20) COLLATE utf8_bin NOT NULL,
  `amaflags` char(7) COLLATE utf8_bin DEFAULT NULL,
  `callgroup` char(10) COLLATE utf8_bin DEFAULT NULL,
  `callerid` varchar(80) COLLATE utf8_bin NOT NULL,
  `canreinvite` varchar(20) COLLATE utf8_bin NOT NULL,
  `context` varchar(80) COLLATE utf8_bin NOT NULL,
  `DEFAULTip` char(15) COLLATE utf8_bin DEFAULT NULL,
  `dtmfmode` char(7) COLLATE utf8_bin NOT NULL DEFAULT 'RFC2833',
  `fromuser` varchar(80) COLLATE utf8_bin NOT NULL,
  `fromdomain` varchar(80) COLLATE utf8_bin NOT NULL,
  `host` varchar(31) COLLATE utf8_bin NOT NULL,
  `insecure` varchar(20) COLLATE utf8_bin NOT NULL,
  `language` char(2) COLLATE utf8_bin DEFAULT NULL,
  `mailbox` varchar(50) COLLATE utf8_bin NOT NULL,
  `md5secret` varchar(80) COLLATE utf8_bin NOT NULL,
  `nat` char(3) COLLATE utf8_bin DEFAULT 'yes',
  `deny` varchar(95) COLLATE utf8_bin NOT NULL,
  `permit` varchar(95) COLLATE utf8_bin DEFAULT NULL,
  `mask` varchar(95) COLLATE utf8_bin NOT NULL,
  `pickupgroup` char(10) COLLATE utf8_bin DEFAULT NULL,
  `port` char(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `qualify` char(7) COLLATE utf8_bin DEFAULT 'yes',
  `restrictcid` char(1) COLLATE utf8_bin DEFAULT NULL,
  `rtptimeout` char(3) COLLATE utf8_bin DEFAULT NULL,
  `rtpholdtimeout` char(3) COLLATE utf8_bin DEFAULT NULL,
  `secret` varchar(80) COLLATE utf8_bin NOT NULL,
  `type` char(6) COLLATE utf8_bin NOT NULL DEFAULT 'friend',
  `username` varchar(80) COLLATE utf8_bin NOT NULL,
  `disallow` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'ALL',
  `allow` varchar(100) COLLATE utf8_bin NOT NULL,
  `musiconhold` varchar(100) COLLATE utf8_bin NOT NULL,
  `regseconds` int(11) NOT NULL DEFAULT '0',
  `ipaddr` char(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cancallforward` char(3) COLLATE utf8_bin DEFAULT 'yes',
  `fullcontact` varchar(80) COLLATE utf8_bin NOT NULL,
  `setvar` varchar(100) COLLATE utf8_bin NOT NULL,
  `regserver` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `lastms` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `useragent` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `callbackextension` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_sip_buddies_name` (`name`),
  KEY `name` (`name`),
  KEY `host` (`host`),
  KEY `ipaddr` (`ipaddr`),
  KEY `port` (`port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_sip_buddies`
--

LOCK TABLES `cc_sip_buddies` WRITE;
/*!40000 ALTER TABLE `cc_sip_buddies` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_sip_buddies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `cc_sip_buddies_empty`
--

DROP TABLE IF EXISTS `cc_sip_buddies_empty`;
/*!50001 DROP VIEW IF EXISTS `cc_sip_buddies_empty`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cc_sip_buddies_empty` AS SELECT
 1 AS `id`,
 1 AS `id_cc_card`,
 1 AS `name`,
 1 AS `accountcode`,
 1 AS `regexten`,
 1 AS `amaflags`,
 1 AS `callgroup`,
 1 AS `callerid`,
 1 AS `canreinvite`,
 1 AS `context`,
 1 AS `DEFAULTip`,
 1 AS `dtmfmode`,
 1 AS `fromuser`,
 1 AS `fromdomain`,
 1 AS `host`,
 1 AS `insecure`,
 1 AS `language`,
 1 AS `mailbox`,
 1 AS `md5secret`,
 1 AS `nat`,
 1 AS `permit`,
 1 AS `deny`,
 1 AS `mask`,
 1 AS `pickupgroup`,
 1 AS `port`,
 1 AS `qualify`,
 1 AS `restrictcid`,
 1 AS `rtptimeout`,
 1 AS `rtpholdtimeout`,
 1 AS `secret`,
 1 AS `type`,
 1 AS `username`,
 1 AS `disallow`,
 1 AS `allow`,
 1 AS `musiconhold`,
 1 AS `regseconds`,
 1 AS `ipaddr`,
 1 AS `cancallforward`,
 1 AS `fullcontact`,
 1 AS `setvar`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cc_speeddial`
--

DROP TABLE IF EXISTS `cc_speeddial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_speeddial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cc_card` bigint(20) NOT NULL DEFAULT '0',
  `phone` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `speeddial` int(11) DEFAULT '0',
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_speeddial_id_cc_card_speeddial` (`id_cc_card`,`speeddial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_speeddial`
--

LOCK TABLES `cc_speeddial` WRITE;
/*!40000 ALTER TABLE `cc_speeddial` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_speeddial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_status_log`
--

DROP TABLE IF EXISTS `cc_status_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_status_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `id_cc_card` bigint(20) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_status_log`
--

LOCK TABLES `cc_status_log` WRITE;
/*!40000 ALTER TABLE `cc_status_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_status_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_subscription_fee`
--

DROP TABLE IF EXISTS `cc_subscription_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_subscription_fee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` text COLLATE utf8_bin NOT NULL,
  `fee` float NOT NULL DEFAULT '0',
  `currency` char(3) COLLATE utf8_bin DEFAULT 'USD',
  `status` int(11) NOT NULL DEFAULT '0',
  `numberofrun` int(11) NOT NULL DEFAULT '0',
  `datecreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datelastrun` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emailreport` text COLLATE utf8_bin,
  `totalcredit` float NOT NULL DEFAULT '0',
  `totalcardperform` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_subscription_fee`
--

LOCK TABLES `cc_subscription_fee` WRITE;
/*!40000 ALTER TABLE `cc_subscription_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_subscription_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_support`
--

DROP TABLE IF EXISTS `cc_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_support` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `language` char(5) COLLATE utf8_bin NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_support_component`
--

DROP TABLE IF EXISTS `cc_support_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_support_component` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `id_support` smallint(5) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `activated` smallint(6) NOT NULL DEFAULT '1',
  `type_user` tinyint(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_system_log`
--

DROP TABLE IF EXISTS `cc_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL DEFAULT '0',
  `loglevel` int(11) NOT NULL DEFAULT '0',
  `action` text COLLATE utf8_bin NOT NULL,
  `description` mediumtext COLLATE utf8_bin,
  `data` blob,
  `tablename` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pagename` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ipaddress` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_system_log`
--

LOCK TABLES `cc_system_log` WRITE;
/*!40000 ALTER TABLE `cc_system_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_tariffgroup`
--

DROP TABLE IF EXISTS `cc_tariffgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_tariffgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL DEFAULT '0',
  `idtariffplan` int(11) NOT NULL DEFAULT '0',
  `tariffgroupname` char(50) COLLATE utf8_bin NOT NULL,
  `lcrtype` int(11) NOT NULL DEFAULT '0',
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `removeinterprefix` int(11) NOT NULL DEFAULT '0',
  `id_cc_package_offer` bigint(20) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_tariffgroup`
--

LOCK TABLES `cc_tariffgroup` WRITE;
/*!40000 ALTER TABLE `cc_tariffgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_tariffgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_tariffgroup_plan`
--

DROP TABLE IF EXISTS `cc_tariffgroup_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_tariffgroup_plan` (
  `idtariffgroup` int(11) NOT NULL,
  `idtariffplan` int(11) NOT NULL,
  PRIMARY KEY (`idtariffgroup`,`idtariffplan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_tariffgroup_plan`
--

LOCK TABLES `cc_tariffgroup_plan` WRITE;
/*!40000 ALTER TABLE `cc_tariffgroup_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_tariffgroup_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_tariffplan`
--

DROP TABLE IF EXISTS `cc_tariffplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_tariffplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL DEFAULT '0',
  `tariffname` char(50) COLLATE utf8_bin NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startingdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expirationdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8_bin,
  `id_trunk` int(11) DEFAULT '0',
  `secondusedreal` int(11) DEFAULT '0',
  `secondusedcarrier` int(11) DEFAULT '0',
  `secondusedratecard` int(11) DEFAULT '0',
  `reftariffplan` int(11) DEFAULT '0',
  `idowner` int(11) DEFAULT '0',
  `dnidprefix` char(30) COLLATE utf8_bin NOT NULL DEFAULT 'all',
  `calleridprefix` char(30) COLLATE utf8_bin NOT NULL DEFAULT 'all',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_tariffplan_iduser_tariffname` (`iduser`,`tariffname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_tariffplan`
--

LOCK TABLES `cc_tariffplan` WRITE;
/*!40000 ALTER TABLE `cc_tariffplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_tariffplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_templatemail`
--

DROP TABLE IF EXISTS `cc_templatemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_templatemail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` char(20) COLLATE utf8_bin NOT NULL DEFAULT 'en',
  `mailtype` char(50) COLLATE utf8_bin DEFAULT NULL,
  `fromemail` char(70) COLLATE utf8_bin DEFAULT NULL,
  `fromname` char(70) COLLATE utf8_bin DEFAULT NULL,
  `subject` char(70) COLLATE utf8_bin DEFAULT NULL,
  `messagetext` longtext COLLATE utf8_bin,
  `messagehtml` longtext COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_templatemail_id_language` (`mailtype`,`id_language`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_ticket`
--

DROP TABLE IF EXISTS `cc_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_ticket` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `id_component` smallint(5) NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `priority` smallint(6) NOT NULL DEFAULT '0',
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creator` bigint(20) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `creator_type` tinyint(4) NOT NULL DEFAULT '0',
  `viewed_cust` tinyint(4) NOT NULL DEFAULT '1',
  `viewed_agent` tinyint(4) NOT NULL DEFAULT '1',
  `viewed_admin` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_ticket`
--

LOCK TABLES `cc_ticket` WRITE;
/*!40000 ALTER TABLE `cc_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_ticket_comment`
--

DROP TABLE IF EXISTS `cc_ticket_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_ticket_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ticket` bigint(10) NOT NULL,
  `description` text COLLATE utf8_bin,
  `creator` bigint(20) NOT NULL,
  `creator_type` tinyint(4) NOT NULL DEFAULT '0',
  `viewed_cust` tinyint(4) NOT NULL DEFAULT '1',
  `viewed_agent` tinyint(4) NOT NULL DEFAULT '1',
  `viewed_admin` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_ticket_comment`
--

LOCK TABLES `cc_ticket_comment` WRITE;
/*!40000 ALTER TABLE `cc_ticket_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_ticket_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_timezone`
--

DROP TABLE IF EXISTS `cc_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_timezone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmtzone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gmttime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gmtoffset` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_trunk`
--

DROP TABLE IF EXISTS `cc_trunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_trunk` (
  `id_trunk` int(11) NOT NULL AUTO_INCREMENT,
  `trunkcode` char(20) COLLATE utf8_bin NOT NULL,
  `trunkprefix` char(20) COLLATE utf8_bin DEFAULT NULL,
  `providertech` char(20) COLLATE utf8_bin NOT NULL,
  `providerip` char(80) COLLATE utf8_bin NOT NULL,
  `removeprefix` char(20) COLLATE utf8_bin DEFAULT NULL,
  `secondusedreal` int(11) DEFAULT '0',
  `secondusedcarrier` int(11) DEFAULT '0',
  `secondusedratecard` int(11) DEFAULT '0',
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `failover_trunk` int(11) DEFAULT NULL,
  `addparameter` char(120) COLLATE utf8_bin DEFAULT NULL,
  `id_provider` int(11) DEFAULT NULL,
  `inuse` int(11) DEFAULT '0',
  `maxuse` int(11) DEFAULT '-1',
  `status` int(11) DEFAULT '1',
  `if_max_use` int(11) DEFAULT '0',
  PRIMARY KEY (`id_trunk`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cc_ui_authen`
--

DROP TABLE IF EXISTS `cc_ui_authen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_ui_authen` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` char(50) COLLATE utf8_bin NOT NULL,
  `pwd_encoded` varchar(250) COLLATE utf8_bin NOT NULL,
  `groupid` int(11) DEFAULT NULL,
  `perms` int(11) DEFAULT NULL,
  `confaddcust` int(11) DEFAULT NULL,
  `name` char(50) COLLATE utf8_bin DEFAULT NULL,
  `direction` char(80) COLLATE utf8_bin DEFAULT NULL,
  `zipcode` char(20) COLLATE utf8_bin DEFAULT NULL,
  `state` char(20) COLLATE utf8_bin DEFAULT NULL,
  `phone` char(30) COLLATE utf8_bin DEFAULT NULL,
  `fax` char(30) COLLATE utf8_bin DEFAULT NULL,
  `datecreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `cons_cc_ui_authen_login` (`login`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cc_voucher`
--

DROP TABLE IF EXISTS `cc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_voucher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expirationdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `voucher` char(50) COLLATE utf8_bin NOT NULL,
  `usedcardnumber` char(50) COLLATE utf8_bin DEFAULT NULL,
  `tag` char(50) COLLATE utf8_bin DEFAULT NULL,
  `credit` float NOT NULL DEFAULT '0',
  `activated` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'f',
  `used` int(11) DEFAULT '0',
  `currency` char(3) COLLATE utf8_bin DEFAULT 'USD',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cons_cc_voucher_voucher` (`voucher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_voucher`
--

LOCK TABLES `cc_voucher` WRITE;
/*!40000 ALTER TABLE `cc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username` (`username`),
  UNIQUE KEY `user_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `cc_callplan_lcr`
--

/*!50001 DROP VIEW IF EXISTS `cc_callplan_lcr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cc_callplan_lcr` AS select `cc_ratecard`.`id` AS `id`,`cc_prefix`.`destination` AS `destination`,`cc_ratecard`.`dialprefix` AS `dialprefix`,`cc_ratecard`.`buyrate` AS `buyrate`,`cc_ratecard`.`rateinitial` AS `rateinitial`,`cc_ratecard`.`startdate` AS `startdate`,`cc_ratecard`.`stopdate` AS `stopdate`,`cc_ratecard`.`initblock` AS `initblock`,`cc_ratecard`.`connectcharge` AS `connectcharge`,`cc_ratecard`.`id_trunk` AS `id_trunk`,`cc_ratecard`.`idtariffplan` AS `idtariffplan`,`cc_ratecard`.`id` AS `ratecard_id`,`cc_tariffgroup`.`id` AS `tariffgroup_id` from ((((`cc_tariffgroup_plan` left join `cc_tariffgroup` on((`cc_tariffgroup_plan`.`idtariffgroup` = `cc_tariffgroup`.`id`))) join `cc_tariffplan` on((`cc_tariffplan`.`id` = `cc_tariffgroup_plan`.`idtariffplan`))) left join `cc_ratecard` on((`cc_ratecard`.`idtariffplan` = `cc_tariffplan`.`id`))) left join `cc_prefix` on((`cc_prefix`.`prefix` = `cc_ratecard`.`destination`))) where (`cc_ratecard`.`id` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cc_sip_buddies_empty`
--

/*!50001 DROP VIEW IF EXISTS `cc_sip_buddies_empty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cc_sip_buddies_empty` AS select `cc_sip_buddies`.`id` AS `id`,`cc_sip_buddies`.`id_cc_card` AS `id_cc_card`,`cc_sip_buddies`.`name` AS `name`,`cc_sip_buddies`.`accountcode` AS `accountcode`,`cc_sip_buddies`.`regexten` AS `regexten`,`cc_sip_buddies`.`amaflags` AS `amaflags`,`cc_sip_buddies`.`callgroup` AS `callgroup`,`cc_sip_buddies`.`callerid` AS `callerid`,`cc_sip_buddies`.`canreinvite` AS `canreinvite`,`cc_sip_buddies`.`context` AS `context`,`cc_sip_buddies`.`DEFAULTip` AS `DEFAULTip`,`cc_sip_buddies`.`dtmfmode` AS `dtmfmode`,`cc_sip_buddies`.`fromuser` AS `fromuser`,`cc_sip_buddies`.`fromdomain` AS `fromdomain`,`cc_sip_buddies`.`host` AS `host`,`cc_sip_buddies`.`insecure` AS `insecure`,`cc_sip_buddies`.`language` AS `language`,`cc_sip_buddies`.`mailbox` AS `mailbox`,`cc_sip_buddies`.`md5secret` AS `md5secret`,`cc_sip_buddies`.`nat` AS `nat`,`cc_sip_buddies`.`permit` AS `permit`,`cc_sip_buddies`.`deny` AS `deny`,`cc_sip_buddies`.`mask` AS `mask`,`cc_sip_buddies`.`pickupgroup` AS `pickupgroup`,`cc_sip_buddies`.`port` AS `port`,`cc_sip_buddies`.`qualify` AS `qualify`,`cc_sip_buddies`.`restrictcid` AS `restrictcid`,`cc_sip_buddies`.`rtptimeout` AS `rtptimeout`,`cc_sip_buddies`.`rtpholdtimeout` AS `rtpholdtimeout`,'' AS `secret`,`cc_sip_buddies`.`type` AS `type`,`cc_sip_buddies`.`username` AS `username`,`cc_sip_buddies`.`disallow` AS `disallow`,`cc_sip_buddies`.`allow` AS `allow`,`cc_sip_buddies`.`musiconhold` AS `musiconhold`,`cc_sip_buddies`.`regseconds` AS `regseconds`,`cc_sip_buddies`.`ipaddr` AS `ipaddr`,`cc_sip_buddies`.`cancallforward` AS `cancallforward`,`cc_sip_buddies`.`fullcontact` AS `fullcontact`,`cc_sip_buddies`.`setvar` AS `setvar` from `cc_sip_buddies` */;
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

-- Dump completed on 2017-07-28 10:10:26
