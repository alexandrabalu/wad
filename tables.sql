

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE IF NOT EXISTS `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(90) NOT NULL,
  `LNAME` varchar(90) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `CONTACT` varchar(30) NOT NULL,
  `EMAIL` varchar(90) NOT NULL,
  `USER_NAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;


INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `ADDRESS`, `CONTACT`, `EMAIL`, `USER_NAME`, `PASS`) VALUES
(61, 'Christian', 'diLeo', 'Ship Bottom', '09784639621', 'christiandiLeo@yahoo.com', 'cdl', 'beer');


CREATE TABLE IF NOT EXISTS `tblgallery` (
  `ID` int(11) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL,
  `CAPTION` varchar(30) NOT NULL,
  `LOCATION` varchar(125) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;



INSERT INTO `tblgallery` (`ID`, `CATEGORY`, `CAPTION`, `LOCATION`) VALUES
(1, 'Single', 'For Couple Room', 'img/couple.jpg'),
(7, 'Double', 'For lover room', 'img/double.jpg'),
(8, 'Suite', 'For single who want peace', 'img/suite2.jpg'),
(9, 'Single', 'For Couple Room', 'img/couple1.jpg'),
(13, 'Single', 'For Couple Room', 'img/couple2.jpg'),
(14, 'Double', 'For lovers who want to enjoy ', 'img/duoble2.jpg'),
(15, 'Suite', 'For single who want peace', 'img/suite1.jpg'),
(16, 'Double', 'For lovers who want to enjoy ', 'img/duoble1.jpg'),
(17, 'Suite', 'For single who want  peace', 'img/suite.jpg');



CREATE TABLE IF NOT EXISTS `tblpackage` (
  `PACKAGEID` int(11) NOT NULL,
  `PACKAGE` varchar(90) NOT NULL,
  `CATEGORY` varchar(90) NOT NULL,
  `PHOTOGRAPHER` varchar(90) NOT NULL,
  `PHOTOBOOK` varchar(90) NOT NULL,
  `MAXPHOTO` varchar(90) NOT NULL,
  `COVERAGE` varchar(90) NOT NULL,
  `ADDONS` varchar(90) NOT NULL,
  `PIC` varchar(255) NOT NULL,
  `PRICE` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;


INSERT INTO `tblpackage` (`PACKAGEID`, `PACKAGE`, `CATEGORY`, `PHOTOGRAPHER`, `PHOTOBOOK`, `MAXPHOTO`, `COVERAGE`, `ADDONS`, `PIC`, `PRICE`) VALUES
(18, 'Aircon and Fresh', 'Single', 'For couple', '2', '3', '8', '', 'img/couple.jpg', 5000),
(19, 'Fresh and Love', 'Single', 'For couple', '3', '4', '9', '', 'img/couple1.jpg', 6000),
(20, 'Amaze and Glaze', 'Single', 'For couple', '5', '5', '12', '', 'img/couple2.jpg', 7800),
(21, 'Freely Love and Deepest Love', 'Double', 'For lovers ', '2', '2', '6', '', 'img/duoble2.jpg', 8000),
(22, 'Relationship and Harder Lover', 'Double', 'For lovers ', '3', '3', '8', '', 'img/duoble1.jpg', 9000),
(23, 'Tell me how deepest your love', 'Double', 'For lovers ', '4', '4', '10', '', 'img/double.jpg', 10000),
(24, 'Consume by asking no where ', 'Suite', 'For people want to lie their for a while', '2', '2', '6', '', 'img/suite.jpg', 12000),
(25, 'Even walk away they need', 'Suite', 'For set them free for broking pain', '4', '4', '10', '', 'img/suite1.jpg', 23000),
(26, 'We teke you home', 'Suite', 'for forever take you alone', '5', '5', '15', '', 'img/suite2.jpg', 15500);


CREATE TABLE IF NOT EXISTS `tblreservation` (
  `RESERVEID` int(11) NOT NULL,
  `PACKAGEID` int(11) NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ARRIVAL` date NOT NULL,
  `DEPARTURE` date NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `CHILD` int(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;



INSERT INTO `tblreservation` (`RESERVEID`, `PACKAGEID`, `CUSTOMERID`, `ARRIVAL`, `DEPARTURE`, `STATUS`, `CHILD`) VALUES
(1, 18, 61, '2018-11-01', '2018-11-08', 'Check Out', 0),
(2, 19, 61, '2018-10-01', '2018-10-03', 'Check Out', 0);



CREATE TABLE IF NOT EXISTS `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `UPIC` varchar(255) NOT NULL,
  `U_NAME` varchar(90) NOT NULL,
  `U_USERNAME` varchar(90) NOT NULL,
  `UPASS` varchar(90) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;



INSERT INTO `tbluseraccount` (`USERID`, `UPIC`, `U_NAME`, `U_USERNAME`, `UPASS`) VALUES
(13, 'img/CHRIS.jpg', 'CHRIS', 'CHRIS', 'CHRISS'),
(15, 'img/BALU.jpg', 'BALU', 'BALU', 'BALU');


ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);


ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblpackage`
  ADD PRIMARY KEY (`PACKAGEID`);


ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`RESERVEID`);


ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);


ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;

ALTER TABLE `tblgallery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;

ALTER TABLE `tblpackage`
  MODIFY `PACKAGEID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;

ALTER TABLE `tblreservation`
  MODIFY `RESERVEID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;

ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;

