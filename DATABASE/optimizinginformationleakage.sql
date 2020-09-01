/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - optimizinginformationleakage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`optimizinginformationleakage` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `optimizinginformationleakage`;

/*Table structure for table `clientfile` */

DROP TABLE IF EXISTS `clientfile`;

CREATE TABLE `clientfile` (
  `filename` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `filedata` longtext,
  `filestatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `clientfile` */

insert  into `clientfile`(`filename`,`owner`,`filedata`,`filestatus`) values ('cloud','nikhith.1000projects@gmail.com','Distributing data over multiple cloud storage providers automatically provides users with a certain degree of information leakage control, for no single point of attack can leak all the information. However, unplanned distribution of data chunks can lead to high information disclosure even while using multiple clouds.\n','Uploaded'),('nikith','mail.1000projects@gmail.com','Students Wikipedia project is implemented using JDK, apache tomcat server using MY SQL. Main idea of this project is to develop a website like Wikipedia which will contain information for students as reference for different topics on technology of different branches.\n','Uploaded');

/*Table structure for table `clientrequest` */

DROP TABLE IF EXISTS `clientrequest`;

CREATE TABLE `clientrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `part1data` longtext,
  `part2data` longtext,
  `part1key` varchar(100) DEFAULT NULL,
  `part2key` varchar(100) DEFAULT NULL,
  `part1status` varchar(100) DEFAULT NULL,
  `part2status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `clientrequest` */

insert  into `clientrequest`(`id`,`filename`,`owner`,`user`,`part1data`,`part2data`,`part1key`,`part2key`,`part1status`,`part2status`) values (2,'cloud','mail.1000projects@gmail.com','nikhith.1000projects@gmail.com','zhsoisk8cfin3sfclrktRMr8MRP16Y6NdScCCT+6pwm2nW84bHN1dmeVs+aAifhieiRfOu+ykpFE\r\nWevE1zwncxMjrmmL7IxrfsuwS9J5bBKShl/94HC/GHd97mUgTyB9YPjLJNFw69o1pVUVHVKFNyjR\r\nfq5sKbxGJba1CZojzq1XwsTqSmE1q9L+02dmmxeNa0Ced0CruUkYSpCD/a/NfgNyuPjlHKacUx+6\r\nkzm1UalnWvIOkm7mz9SouXCwfewR8ioZ4aahzNeKKpmTlbtnYe3QFChsfareorx4d349jl3KYR2c\r\nD04hJA6wunOrB/s8WYBVdf5+/PKZrceKH2fHLfAyFIuyQOK7lqAFxGIew+/wEM39uyHuIEd97WcN\r\nMjqMSSHT3xS8E82zK70Q8WyVTum9MYLKfmhg8r3Db88BFO/KaXxQWKS9d5PBvkucF6q/AbifDVwZ\r\neSAgE1bReTlerVpiwVYobKPdiNqv4ZtUXBSi+3KmoFuznG5amcIXIs7DoNKOJHu1Z2/vOtkq8Qzm\r\n5XWJIAiTluzWakXG65SyeLB6GoGfA2HDg8Y1hLH3uWS2HNoR93ZqgaMBwRHwL08OSnTM7c24HmEW\r\nYoeHNvLL7MporriLoOc6h5fmRmoGqrrh','C7IIDds6+42NTLdwBnsV4OSyN2C8phHIURrk+g62nzZcS4XBX66TmpSRUH2lQRVpQbStfZ6Hxhf6\r\nzrUicB359hbFa0pHM8tT+oMn91xmF0fPvs72tAVpaMfKxc7y2s/QDqxAZ5jllZCEVf+wd30B/SNY\r\nN31UjRf7X6GZkplMIjwjErYhki+0IgX+s455Bei6GSiFl7V81QI0BGNkRFxWvJHJx0xzukr2Bb8j\r\nmbEs4OY=','cm9vjuUcWkmsDoacJxQwmQ==','wzkIfMfgDwbK8/OmwhHkxA==','Pending','Pending');

/*Table structure for table `clientupload` */

DROP TABLE IF EXISTS `clientupload`;

CREATE TABLE `clientupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `filedata` longtext,
  `cloud` longtext,
  `fkey` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `clientupload` */

insert  into `clientupload`(`id`,`filename`,`owner`,`filedata`,`cloud`,`fkey`,`fname`) values (27,'cloud2.txt','nikhith.1000projects@gmail.com','C7IIDds6+42NTLdwBnsV4OSyN2C8phHIURrk+g62nzZcS4XBX66TmpSRUH2lQRVpQbStfZ6Hxhf6\r\nzrUicB359hbFa0pHM8tT+oMn91xmF0fPvs72tAVpaMfKxc7y2s/QDqxAZ5jllZCEVf+wd30B/SNY\r\nN31UjRf7X6GZkplMIjwjErYhki+0IgX+s455Bei6GSiFl7V81QI0BGNkRFxWvJHJx0xzukr2Bb8j\r\nmbEs4OY=','cloud2','wzkIfMfgDwbK8/OmwhHkxA==','cloud'),(28,'cloud1.txt','nikhith.1000projects@gmail.com','zhsoisk8cfin3sfclrktRMr8MRP16Y6NdScCCT+6pwm2nW84bHN1dmeVs+aAifhieiRfOu+ykpFE\r\nWevE1zwncxMjrmmL7IxrfsuwS9J5bBKShl/94HC/GHd97mUgTyB9YPjLJNFw69o1pVUVHVKFNyjR\r\nfq5sKbxGJba1CZojzq1XwsTqSmE1q9L+02dmmxeNa0Ced0CruUkYSpCD/a/NfgNyuPjlHKacUx+6\r\nkzm1UalnWvIOkm7mz9SouXCwfewR8ioZ4aahzNeKKpmTlbtnYe3QFChsfareorx4d349jl3KYR2c\r\nD04hJA6wunOrB/s8WYBVdf5+/PKZrceKH2fHLfAyFIuyQOK7lqAFxGIew+/wEM39uyHuIEd97WcN\r\nMjqMSSHT3xS8E82zK70Q8WyVTum9MYLKfmhg8r3Db88BFO/KaXxQWKS9d5PBvkucF6q/AbifDVwZ\r\neSAgE1bReTlerVpiwVYobKPdiNqv4ZtUXBSi+3KmoFuznG5amcIXIs7DoNKOJHu1Z2/vOtkq8Qzm\r\n5XWJIAiTluzWakXG65SyeLB6GoGfA2HDg8Y1hLH3uWS2HNoR93ZqgaMBwRHwL08OSnTM7c24HmEW\r\nYoeHNvLL7MporriLoOc6h5fmRmoGqrrh','cloud1','cm9vjuUcWkmsDoacJxQwmQ==','cloud'),(29,'nikith2.txt','mail.1000projects@gmail.com','9qdqC+6uwln/bOFSpi+FSNyWvxHHwBLu0AXm0H350PtIjl8jc9hSFohWdO1di9LbqLCyy8zbs6IL\r\n4JzPzSo4D9DiyUYNmbHxMb8xqyXiBDAiXDthrn8UT6V1d1/wDhrEBjGbVLNoGGS+ImprsYh82ZMf\r\nMfSstnT9oO4z/RQN/ZH+qQOtAmPUre9YPUG+IL9o','cloud2','BnrRIAIp7LvpBhfArYXgcg==','nikith'),(30,'nikith1.txt','mail.1000projects@gmail.com','pUzjIcN9fTrykjnkcLS+4+SFvr9Vcp0Jnm0cZ/ei/kfywhOi4WZGV47liqM9sXh77EvDE1FbHzCY\r\npAX/AS1h+U3vGkykFr3j6ZGTSX1WJEziCRnbKrGm9Du5BKNZ9fwi9VbLhqbh5ri7v2FJOhsUCUVt\r\nDVnmQOxBjPscouoR/AMGG99d5HDNzU1t/HeoF0P1','cloud1','HQzE3Bt3TX/501xgcwmThA==','nikith');

/*Table structure for table `ms` */

DROP TABLE IF EXISTS `ms`;

CREATE TABLE `ms` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ms` */

insert  into `ms`(`username`,`password`) values ('ms','ms');

/*Table structure for table `ss` */

DROP TABLE IF EXISTS `ss`;

CREATE TABLE `ss` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ss` */

insert  into `ss`(`username`,`password`) values ('ss','ss');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `filename` varchar(100) DEFAULT NULL,
  `CDate` text,
  `email` varchar(100) DEFAULT NULL,
  `fcipher` longtext,
  `scipher` longtext,
  `tcipher` longtext,
  `skey` varchar(100) DEFAULT NULL,
  `fhash` int(11) DEFAULT NULL,
  `shash` int(11) DEFAULT NULL,
  `thash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`name`,`password`,`email`,`dob`,`address`) values ('nikith','123','nikhith.1000projects@gmail.com','1994-05-04','1000Projects'),('1000p','123','mail.1000projects@gmail.com','1994-05-04','1000projects\r\n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
