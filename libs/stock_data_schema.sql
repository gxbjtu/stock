-- MySQL dump 10.16  Distrib 10.2.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: stock_data
-- ------------------------------------------------------
-- Server version	10.2.11-MariaDB-10.2.11+maria~jessie

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
-- Table structure for table `apscheduler_jobs`
--

DROP TABLE IF EXISTS `apscheduler_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apscheduler_jobs` (
  `id` varchar(191) NOT NULL,
  `next_run_time` double DEFAULT NULL,
  `job_state` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_apscheduler_jobs_next_run_time` (`next_run_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guess_indicators_daily`
--

DROP TABLE IF EXISTS `guess_indicators_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_indicators_daily` (
  `date` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `changepercent` varchar(255) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `open` varchar(255) DEFAULT NULL,
  `high` varchar(255) DEFAULT NULL,
  `low` varchar(255) DEFAULT NULL,
  `settlement` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `turnoverratio` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `per` varchar(255) DEFAULT NULL,
  `pb` varchar(255) DEFAULT NULL,
  `mktcap` varchar(255) DEFAULT NULL,
  `nmc` varchar(255) DEFAULT NULL,
  `adx` varchar(255) DEFAULT NULL,
  `adxr` varchar(255) DEFAULT NULL,
  `boll` varchar(255) DEFAULT NULL,
  `boll_lb` varchar(255) DEFAULT NULL,
  `boll_ub` varchar(255) DEFAULT NULL,
  `cci` varchar(255) DEFAULT NULL,
  `cci_20` varchar(255) DEFAULT NULL,
  `close_-1_r` varchar(255) DEFAULT NULL,
  `close_-2_r` varchar(255) DEFAULT NULL,
  `cr` varchar(255) DEFAULT NULL,
  `cr-ma1` varchar(255) DEFAULT NULL,
  `cr-ma2` varchar(255) DEFAULT NULL,
  `cr-ma3` varchar(255) DEFAULT NULL,
  `dma` varchar(255) DEFAULT NULL,
  `dx` varchar(255) DEFAULT NULL,
  `kdjd` varchar(255) DEFAULT NULL,
  `kdjj` varchar(255) DEFAULT NULL,
  `kdjk` varchar(255) DEFAULT NULL,
  `macd` varchar(255) DEFAULT NULL,
  `macdh` varchar(255) DEFAULT NULL,
  `macds` varchar(255) DEFAULT NULL,
  `mdi` varchar(255) DEFAULT NULL,
  `pdi` varchar(255) DEFAULT NULL,
  `rsi_12` varchar(255) DEFAULT NULL,
  `rsi_6` varchar(255) DEFAULT NULL,
  `trix` varchar(255) DEFAULT NULL,
  `trix_9_sma` varchar(255) DEFAULT NULL,
  `vr` varchar(255) DEFAULT NULL,
  `vr_6_sma` varchar(255) DEFAULT NULL,
  `wr_10` varchar(255) DEFAULT NULL,
  `wr_6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`date`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guess_indicators_lite_buy_daily`
--

DROP TABLE IF EXISTS `guess_indicators_lite_buy_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_indicators_lite_buy_daily` (
  `buy_date` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `changepercent` varchar(255) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `turnoverratio` varchar(255) DEFAULT NULL,
  `pb` varchar(255) DEFAULT NULL,
  `kdjj` varchar(255) DEFAULT NULL,
  `rsi_6` varchar(255) DEFAULT NULL,
  `cci` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `wave_base` varchar(255) DEFAULT NULL,
  `wave_crest` varchar(255) DEFAULT NULL,
  `wave_mean` varchar(255) DEFAULT NULL,
  `up_rate` varchar(255) DEFAULT NULL,
  `buy` varchar(255) DEFAULT NULL,
  `sell` varchar(255) DEFAULT NULL,
  `today_trade` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guess_indicators_lite_daily`
--

DROP TABLE IF EXISTS `guess_indicators_lite_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_indicators_lite_daily` (
  `date` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `changepercent` varchar(255) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `open` varchar(255) DEFAULT NULL,
  `high` varchar(255) DEFAULT NULL,
  `low` varchar(255) DEFAULT NULL,
  `settlement` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `turnoverratio` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `per` varchar(255) DEFAULT NULL,
  `pb` varchar(255) DEFAULT NULL,
  `mktcap` varchar(255) DEFAULT NULL,
  `nmc` varchar(255) DEFAULT NULL,
  `kdjj` varchar(255) DEFAULT NULL,
  `rsi_6` varchar(255) DEFAULT NULL,
  `cci` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`date`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guess_period_daily`
--

DROP TABLE IF EXISTS `guess_period_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_period_daily` (
  `date` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `changepercent` varchar(255) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `open` varchar(255) DEFAULT NULL,
  `high` varchar(255) DEFAULT NULL,
  `low` varchar(255) DEFAULT NULL,
  `settlement` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `turnoverratio` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `per` varchar(255) DEFAULT NULL,
  `pb` varchar(255) DEFAULT NULL,
  `mktcap` varchar(255) DEFAULT NULL,
  `nmc` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `wave_base` varchar(255) DEFAULT NULL,
  `wave_crest` varchar(255) DEFAULT NULL,
  `wave_mean` varchar(255) DEFAULT NULL,
  `up_rate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`date`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guess_return_daily`
--

DROP TABLE IF EXISTS `guess_return_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_return_daily` (
  `date` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `changepercent` varchar(255) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `open` varchar(255) DEFAULT NULL,
  `high` varchar(255) DEFAULT NULL,
  `low` varchar(255) DEFAULT NULL,
  `settlement` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `turnoverratio` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `per` varchar(255) DEFAULT NULL,
  `pb` varchar(255) DEFAULT NULL,
  `mktcap` varchar(255) DEFAULT NULL,
  `nmc` varchar(255) DEFAULT NULL,
  `10d` varchar(255) DEFAULT NULL,
  `20d` varchar(255) DEFAULT NULL,
  `5-10d` varchar(255) DEFAULT NULL,
  `5-20d` varchar(255) DEFAULT NULL,
  `5d` varchar(255) DEFAULT NULL,
  `60d` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `mov_vol` varchar(255) DEFAULT NULL,
  `return` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`date`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_cashflow_data`
--

DROP TABLE IF EXISTS `ts_cashflow_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_cashflow_data` (
  `quarter` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cf_sales` varchar(255) DEFAULT NULL,
  `rateofreturn` varchar(255) DEFAULT NULL,
  `cf_nm` varchar(255) DEFAULT NULL,
  `cf_liabilities` varchar(255) DEFAULT NULL,
  `cashflowratio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quarter`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_cpi`
--

DROP TABLE IF EXISTS `ts_cpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_cpi` (
  `month` varchar(255) NOT NULL,
  `cpi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_debtpaying_data`
--

DROP TABLE IF EXISTS `ts_debtpaying_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_debtpaying_data` (
  `quarter` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `currentratio` varchar(255) DEFAULT NULL,
  `quickratio` varchar(255) DEFAULT NULL,
  `cashratio` varchar(255) DEFAULT NULL,
  `icratio` varchar(255) DEFAULT NULL,
  `sheqratio` varchar(255) DEFAULT NULL,
  `adratio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quarter`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_deposit_rate`
--

DROP TABLE IF EXISTS `ts_deposit_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_deposit_rate` (
  `date` varchar(255) NOT NULL,
  `deposit_type` varchar(255) NOT NULL,
  `rate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`date`,`deposit_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_gdp_contrib`
--

DROP TABLE IF EXISTS `ts_gdp_contrib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_gdp_contrib` (
  `year` varchar(255) NOT NULL,
  `gdp_yoy` varchar(255) DEFAULT NULL,
  `pi` varchar(255) DEFAULT NULL,
  `si` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `ti` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_gdp_for`
--

DROP TABLE IF EXISTS `ts_gdp_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_gdp_for` (
  `year` varchar(255) NOT NULL,
  `end_for` varchar(255) DEFAULT NULL,
  `for_rate` varchar(255) DEFAULT NULL,
  `asset_for` varchar(255) DEFAULT NULL,
  `asset_rate` varchar(255) DEFAULT NULL,
  `goods_for` varchar(255) DEFAULT NULL,
  `goods_rate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_gdp_pull`
--

DROP TABLE IF EXISTS `ts_gdp_pull`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_gdp_pull` (
  `year` varchar(255) NOT NULL,
  `gdp_yoy` varchar(255) DEFAULT NULL,
  `pi` varchar(255) DEFAULT NULL,
  `si` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `ti` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_gdp_year`
--

DROP TABLE IF EXISTS `ts_gdp_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_gdp_year` (
  `year` varchar(255) NOT NULL,
  `gdp` varchar(255) DEFAULT NULL,
  `pc_gdp` varchar(255) DEFAULT NULL,
  `gnp` varchar(255) DEFAULT NULL,
  `pi` varchar(255) DEFAULT NULL,
  `si` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `cons_industry` varchar(255) DEFAULT NULL,
  `ti` varchar(255) DEFAULT NULL,
  `trans_industry` varchar(255) DEFAULT NULL,
  `lbdy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_get_gdp_quarter`
--

DROP TABLE IF EXISTS `ts_get_gdp_quarter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_get_gdp_quarter` (
  `quarter` varchar(255) NOT NULL,
  `gdp` varchar(255) DEFAULT NULL,
  `gdp_yoy` varchar(255) DEFAULT NULL,
  `pi` varchar(255) DEFAULT NULL,
  `pi_yoy` varchar(255) DEFAULT NULL,
  `si` varchar(255) DEFAULT NULL,
  `si_yoy` varchar(255) DEFAULT NULL,
  `ti` varchar(255) DEFAULT NULL,
  `ti_yoy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quarter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_growth_data`
--

DROP TABLE IF EXISTS `ts_growth_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_growth_data` (
  `quarter` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mbrg` varchar(255) DEFAULT NULL,
  `nprg` varchar(255) DEFAULT NULL,
  `nav` varchar(255) DEFAULT NULL,
  `targ` varchar(255) DEFAULT NULL,
  `epsg` varchar(255) DEFAULT NULL,
  `seg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quarter`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_index_all`
--

DROP TABLE IF EXISTS `ts_index_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_index_all` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `change` varchar(255) DEFAULT NULL,
  `open` varchar(255) DEFAULT NULL,
  `preclose` varchar(255) DEFAULT NULL,
  `close` varchar(255) DEFAULT NULL,
  `high` varchar(255) DEFAULT NULL,
  `low` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`date`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_loan_rate`
--

DROP TABLE IF EXISTS `ts_loan_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_loan_rate` (
  `date` varchar(255) NOT NULL,
  `loan_type` varchar(255) NOT NULL,
  `rate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`date`,`loan_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_money_supply`
--

DROP TABLE IF EXISTS `ts_money_supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_money_supply` (
  `month` varchar(255) NOT NULL,
  `m2` varchar(255) DEFAULT NULL,
  `m2_yoy` varchar(255) DEFAULT NULL,
  `m1` varchar(255) DEFAULT NULL,
  `m1_yoy` varchar(255) DEFAULT NULL,
  `m0` varchar(255) DEFAULT NULL,
  `m0_yoy` varchar(255) DEFAULT NULL,
  `cd` varchar(255) DEFAULT NULL,
  `cd_yoy` varchar(255) DEFAULT NULL,
  `qm` varchar(255) DEFAULT NULL,
  `qm_yoy` varchar(255) DEFAULT NULL,
  `ftd` varchar(255) DEFAULT NULL,
  `ftd_yoy` varchar(255) DEFAULT NULL,
  `sd` varchar(255) DEFAULT NULL,
  `sd_yoy` varchar(255) DEFAULT NULL,
  `rests` varchar(255) DEFAULT NULL,
  `rests_yoy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_money_supply_bal`
--

DROP TABLE IF EXISTS `ts_money_supply_bal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_money_supply_bal` (
  `year` varchar(255) NOT NULL,
  `m2` varchar(255) DEFAULT NULL,
  `m1` varchar(255) DEFAULT NULL,
  `m0` varchar(255) DEFAULT NULL,
  `cd` varchar(255) DEFAULT NULL,
  `qm` varchar(255) DEFAULT NULL,
  `ftd` varchar(255) DEFAULT NULL,
  `sd` varchar(255) DEFAULT NULL,
  `rests` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_operation_data`
--

DROP TABLE IF EXISTS `ts_operation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_operation_data` (
  `quarter` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `arturnover` varchar(255) DEFAULT NULL,
  `arturndays` varchar(255) DEFAULT NULL,
  `inventory_turnover` varchar(255) DEFAULT NULL,
  `inventory_days` varchar(255) DEFAULT NULL,
  `currentasset_turnover` varchar(255) DEFAULT NULL,
  `currentasset_days` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quarter`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_ppi`
--

DROP TABLE IF EXISTS `ts_ppi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_ppi` (
  `month` varchar(255) NOT NULL,
  `ppiip` varchar(255) DEFAULT NULL,
  `ppi` varchar(255) DEFAULT NULL,
  `qm` varchar(255) DEFAULT NULL,
  `rmi` varchar(255) DEFAULT NULL,
  `pi` varchar(255) DEFAULT NULL,
  `cg` varchar(255) DEFAULT NULL,
  `food` varchar(255) DEFAULT NULL,
  `clothing` varchar(255) DEFAULT NULL,
  `roeu` varchar(255) DEFAULT NULL,
  `dcg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_profit_data`
--

DROP TABLE IF EXISTS `ts_profit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_profit_data` (
  `quarter` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `roe` varchar(255) DEFAULT NULL,
  `net_profit_ratio` varchar(255) DEFAULT NULL,
  `gross_profit_rate` varchar(255) DEFAULT NULL,
  `net_profits` varchar(255) DEFAULT NULL,
  `eps` varchar(255) DEFAULT NULL,
  `business_income` varchar(255) DEFAULT NULL,
  `bips` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quarter`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_report_data`
--

DROP TABLE IF EXISTS `ts_report_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_report_data` (
  `quarter` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `eps` varchar(255) DEFAULT NULL,
  `eps_yoy` varchar(255) DEFAULT NULL,
  `bvps` varchar(255) DEFAULT NULL,
  `roe` varchar(255) DEFAULT NULL,
  `epcf` varchar(255) DEFAULT NULL,
  `net_profits` varchar(255) DEFAULT NULL,
  `profits_yoy` varchar(255) DEFAULT NULL,
  `distrib` varchar(255) DEFAULT NULL,
  `report_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`quarter`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_rrr`
--

DROP TABLE IF EXISTS `ts_rrr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_rrr` (
  `date` varchar(255) NOT NULL,
  `before` varchar(255) DEFAULT NULL,
  `now` varchar(255) DEFAULT NULL,
  `changed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_stock_basics`
--

DROP TABLE IF EXISTS `ts_stock_basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_stock_basics` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `pe` varchar(255) DEFAULT NULL,
  `outstanding` varchar(255) DEFAULT NULL,
  `totals` varchar(255) DEFAULT NULL,
  `totalAssets` varchar(255) DEFAULT NULL,
  `liquidAssets` varchar(255) DEFAULT NULL,
  `fixedAssets` varchar(255) DEFAULT NULL,
  `reserved` varchar(255) DEFAULT NULL,
  `reservedPerShare` varchar(255) DEFAULT NULL,
  `esp` varchar(255) DEFAULT NULL,
  `bvps` varchar(255) DEFAULT NULL,
  `pb` varchar(255) DEFAULT NULL,
  `timeToMarket` varchar(255) DEFAULT NULL,
  `undp` varchar(255) DEFAULT NULL,
  `perundp` varchar(255) DEFAULT NULL,
  `rev` varchar(255) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `gpr` varchar(255) DEFAULT NULL,
  `npr` varchar(255) DEFAULT NULL,
  `holders` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `ix_stock_data_ts_stock_basics_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_today_all`
--

DROP TABLE IF EXISTS `ts_today_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_today_all` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `changepercent` varchar(255) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `open` varchar(255) DEFAULT NULL,
  `high` varchar(255) DEFAULT NULL,
  `low` varchar(255) DEFAULT NULL,
  `settlement` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `turnoverratio` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `per` varchar(255) DEFAULT NULL,
  `pb` varchar(255) DEFAULT NULL,
  `mktcap` varchar(255) DEFAULT NULL,
  `nmc` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`date`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_top_list`
--

DROP TABLE IF EXISTS `ts_top_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_top_list` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pchange` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `buy` varchar(255) DEFAULT NULL,
  `sell` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `bratio` varchar(255) DEFAULT NULL,
  `sratio` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`date`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-02  8:15:06
