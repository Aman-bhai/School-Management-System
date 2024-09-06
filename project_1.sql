-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 09:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminis`
--

CREATE TABLE `adminis` (
  `aid` int(11) NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `authority` varchar(20) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminis`
--

INSERT INTO `adminis` (`aid`, `Name`, `authority`, `mobile`) VALUES
(1, 'Aman Sharma', 'Director', '9898989898'),
(2, 'Rajiv Soni', 'Pricipale', '7878787878'),
(3, 'Sonia gupta', 'Assi. Principal', '9977889897'),
(4, 'Pooja rajput', 'Academic Coor.', '8989878685'),
(5, 'Harry shankar', 'Coor.', '7778797674'),
(6, 'Shrinivas soni', 'Coor.', '8749823465'),
(7, 'Jai Panday', 'Sports Coor.', '9092897645'),
(8, 'Vinay Shreevas.', 'Curicu. Coor.', '9693283034'),
(9, 'Ajay Saraswat', 'School Coor.', '9897098900');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cid` varchar(5) NOT NULL,
  `c_teacher` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cid`, `c_teacher`) VALUES
('11', 3),
('6', 4),
('8', 5),
('12', 8),
('9', 13),
('10', 14),
('2', 17),
('4', 18),
('1', 19),
('3', 20),
('7', 21),
('LKG', 22),
('UKG', 23),
('5', 24);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `pid` int(11) NOT NULL,
  `father_name` varchar(25) DEFAULT NULL,
  `father_occu` varchar(25) DEFAULT NULL,
  `father_dept` varchar(25) DEFAULT NULL,
  `father_desig` varchar(25) DEFAULT NULL,
  `mother_name` varchar(25) DEFAULT NULL,
  `mother_occu` varchar(25) DEFAULT NULL,
  `mother_dept` varchar(25) DEFAULT NULL,
  `mother_desig` varchar(25) DEFAULT NULL,
  `fath_mob` varchar(10) DEFAULT NULL,
  `m_mobile` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`pid`, `father_name`, `father_occu`, `father_dept`, `father_desig`, `mother_name`, `mother_occu`, `mother_dept`, `mother_desig`, `fath_mob`, `m_mobile`) VALUES
(1, 'Mr Ram Kumar', 'Priv.', 'IT depart', 'worker', 'Mrs Suneeta Devi', 'House Wife', 'NULL', 'NULL', '9898990012', '9878778866'),
(2, 'Mr Harry Shankar', 'Govt.ser.', 'Educa.', 'clerk', 'Mrs Ramkumari Devi', 'Priv. Emp', 'NULL', 'Worker', '9989786673', '7789878909'),
(3, 'Mr Rajendra Singh', 'Govt.ser', 'Education', 'Principal', 'Mrs Meena Devi', 'Govt.ser.', 'Educat.', 'Teacher', '9898786756', '8878987827'),
(4, 'Mr Harsh Gupta', 'Self', 'Business', 'owner', 'Mrs Kavita gupta', 'House Wife', 'NULL', 'NULL', '8878675644', '8878986756'),
(5, 'Mr Shreeniwas Shar.', 'Govt.ser', 'PHE', 'Manager', 'Mrs Sheetal Shar.', 'House Wife', 'NULL', 'NULL', '9989780908', '7877987767'),
(6, 'Mr Shuseel Shriva.', 'Self', 'Business', 'owner', 'Mrs Sandhya Shriva.', 'Self', 'Business', 'Owner', '7787675664', '7787788767'),
(7, 'Mr Sooraj kapoor', 'NULL', 'NULL', 'NULL', 'Mrs Kavya kapoor', 'Govt.ser.', 'Civil Serv.', 'IAS', '8878679876', '7876757310'),
(8, 'Mr Ajay Oberoy', 'Priv.', 'IT depart', 'Manager', 'Mrs Anjali Oberoy', 'Priv.', 'IT depart', 'Employee', '8897675622', '9811223374'),
(9, 'Mr Dharmendra Jadon', 'Self', 'Business', 'NULL', 'Mrs Damini Devi', 'Self', 'Business', 'NULL', '8787987866', '9989786756'),
(10, 'Mr Inder Singh', 'Priv.', 'NULL', 'Security Guar.', 'Mrs Indira Singh', 'Govt.ser.', 'Civil Serv.', 'IPS', '8878980123', '9807129222'),
(11, 'Mr Jai Mathur', 'Govt.Ser', 'Civil Serv.', 'SI', 'Mrs Jaya Mathur', 'House Wife', 'NULL', 'NULL', '9897912345', '9807012345'),
(12, 'Mr Kailash Verma', 'NULL', 'NULL', 'NULL', 'Mrs Kalpana Verma', 'NULL', 'NULL', 'NULL', '7878070798', '8907896756'),
(13, 'Mr Lokesh Gurjar', 'NULL', 'NULL', 'NULL', 'Mrs Lata Gurjar', 'Singer', 'NULL', 'NULL', '9897098078', '9955667786'),
(14, 'Mr Manish Soni', 'Doctor', 'NULL', 'NULL', 'Mrs Neha Soni', 'House Wife', 'NULL', 'NULL', '9989564534', '7767564534'),
(15, 'Mr Naresh Mishra', 'Self', 'Dance Academy', 'Dancer', 'Mrs Naina Mishra', 'Self', 'NULL', 'Dancer', '9989795717', '9987652342'),
(16, 'Mr Omprakash Trivedi', 'Self', 'Driving School', 'Driver', 'Mrs Pinky Trivedi', 'Self', 'NULL', 'NULL', '8898789865', '8877987654'),
(17, 'Mr Ravi Tiwari', ' Priv.', ' Soap Indust.', 'worker', 'Mrs Suhana Tiwari', 'Govt.Servi', 'Civil Service', 'Officer', '7799880011', '7890978800'),
(18, 'Mr Satish Jain', 'Self', 'Shoap', 'Owner', 'Mrs Vinita Jain', 'House Wife', 'NULL', 'NULL', '9988770989', '9977089789'),
(19, 'Mr Deepak Bajaj', 'Self', 'Bajaj Indust.', 'Owner', 'Mrs Seema Bajaj', 'Self', 'Business', 'Busi. Women', '9988096756', '8878452314'),
(21, 'Mr Anuj Rajput', 'Self', 'Shoap', 'Owner', 'Mrs Shristi Rajput', 'NULL', 'NULL', 'NULL', '9988907654', '7788987678'),
(22, 'Mr Rudra Bhadoriya', 'Priv.', 'Coaching Center', 'Teacher', 'Mrs Roshini Bhadoriya', 'House Wife', 'NULL', 'NULL', '9988775544', '9911223365'),
(23, 'Mr Mukesh Malwani', 'Priv.', 'Malwani Indus.', 'Owner', 'Mrs Kavita Malwani', 'House Wife', 'NULL', 'NULL', '9966554467', '8877999876'),
(24, 'Mr. Vivek Dubey', 'Self', 'Shoap', 'Owner', 'Mrs. Shreya Dubey', 'House Wife', 'NULL', 'NULL', '9988776655', '778876656'),
(25, 'Mr Rajeev bhalla', 'Govt.Serv.', 'Health', 'Doctor', 'Mrs Tanushka Bhalla', 'House Wife', 'NULL', 'NULL', '6798767897', '8897965434'),
(26, 'Mr R.S Rastogi', 'Priv.', 'Health', 'Chief Doctor', 'Mrs Rastogi', 'Priv.', 'Health', 'Doctor', '7898765434', '7787876756'),
(27, 'Mr A.K Modi', 'Govt.Serv.', 'Municipal Coop.', 'Cleaner', 'Mrs Modi', 'Priv.', 'NULL', 'House Maid', '8898787656', '7788987656'),
(28, 'Mr Gaurav Chauhan', 'Farmar', 'NULL', 'NULL', 'Mrs Shruti Chauhan', 'House Wife', 'NULL', 'NULL', '8987675665', '7898765676'),
(29, 'Mr Shivam Yadav', 'NULL', 'NULL', 'NULL', 'Mrs Anushka Yadav', 'Govt.Ser.', 'Educat.', 'NULL', '7878980989', '7898709878'),
(30, 'Mr Firoz Mohammad', 'Govt.Serv.', 'Police', 'Constable', 'Mrs Shashi Mohammad', 'House Wife', 'NULL', 'NULL', '7898787787', '8878564322');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `rid` int(11) NOT NULL,
  `pyr` varchar(25) DEFAULT NULL,
  `stid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`rid`, `pyr`, `stid`, `tid`, `cid`) VALUES
(1, 'Pass (90%)', 5, 3, '11'),
(2, 'Pass (60%)', 1, 8, '12'),
(3, 'Pass (50%)', 24, 3, '11'),
(4, 'Pass (70%)', 43, 3, '11'),
(5, 'Pass (80%)', 2, 8, '12'),
(6, 'Pass (96%)', 3, 8, '12'),
(7, 'Pass (93%)', 42, 8, '12'),
(8, 'Pass (85%)', 10, 4, '6'),
(9, 'Pass (65%)', 29, 4, '6'),
(10, 'Pass (85%)', 48, 4, '6'),
(11, 'Pass (45%)', 8, 5, '8'),
(12, 'Pass (75%)', 27, 5, '8'),
(13, 'Pass (85%)', 46, 5, '8'),
(14, 'Pass (92%)', 7, 13, '9'),
(15, 'Pass (82%)', 26, 13, '9'),
(16, 'Pass (98%)', 45, 13, '9'),
(17, 'Pass (72%)', 6, 14, '10'),
(18, 'Pass (49%)', 25, 14, '10'),
(19, 'Pass (78%)', 44, 14, '10'),
(20, 'Pass (92%)', 14, 17, '2'),
(21, 'Pass (98%)', 16, 17, '2'),
(22, 'Pass (92%)', 33, 17, '2'),
(23, 'Pass (92%)', 35, 17, '2'),
(24, 'Pass (72%)', 52, 17, '2'),
(25, 'Pass (92%)', 53, 17, '2'),
(26, 'Pass (87%)', 12, 18, '4'),
(27, 'Pass (82%)', 31, 18, '4'),
(28, 'Pass (81%)', 50, 18, '4'),
(29, 'Pass (71%)', 18, 19, '1'),
(30, 'Pass (71%)', 26, 19, '1'),
(31, 'Pass (91%)', 37, 19, '1'),
(32, 'Pass (79%)', 55, 19, '1'),
(33, 'Pass (97%)', 56, 19, '1'),
(34, 'Pass (81%)', 13, 20, '3'),
(35, 'Pass (89%)', 32, 20, '3'),
(36, 'Pass (81%)', 51, 20, '3'),
(37, 'Pass (51%)', 9, 21, '7'),
(38, 'Pass (41%)', 28, 21, '7'),
(39, 'Pass (71%)', 47, 21, '7'),
(40, 'Pass (56%)', 4, 22, 'LKG'),
(41, 'Pass (65%)', 22, 22, 'LKG'),
(42, 'Pass (59%)', 41, 22, 'LKG'),
(43, 'Pass (67%)', 59, 22, 'LKG'),
(44, 'Pass (76%)', 60, 22, 'LKG'),
(45, 'Pass (45%)', 19, 23, 'UKG'),
(46, 'Pass (59%)', 20, 23, 'UKG'),
(47, 'Pass (69%)', 38, 23, 'UKG'),
(48, 'Pass (79%)', 39, 23, 'UKG'),
(49, 'Pass (89%)', 58, 23, 'UKG'),
(50, 'Pass (99%)', 11, 24, '5'),
(51, 'Pass (79.95%)', 30, 24, '5'),
(52, 'Pass (39%)', 50, 24, '5'),
(53, 'Pass (88%)', 23, 8, '12'),
(54, 'Pass (94 %)', 15, 24, '5'),
(55, 'Pass (57%)', 17, 21, '7'),
(56, 'Pass (98%)', 21, 17, '2'),
(57, 'Pass (84%)', 34, 20, '3'),
(58, 'Pass (79%)', 36, 11, '8'),
(59, 'Pass (89%)', 40, 17, '2'),
(60, 'Pass (55%)', 54, 4, '6'),
(61, 'Pass (97%)', 57, 4, '6');

-- --------------------------------------------------------

--
-- Table structure for table `sttacl`
--

CREATE TABLE `sttacl` (
  `stid` int(11) NOT NULL,
  `cid` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sttacl`
--

INSERT INTO `sttacl` (`stid`, `cid`) VALUES
(1, '12'),
(2, '12'),
(3, '12'),
(4, 'LKG'),
(5, '11'),
(6, '10'),
(7, '9'),
(8, '8'),
(9, '7'),
(10, '6'),
(11, '5'),
(12, '4'),
(13, '3'),
(14, '2'),
(15, '5'),
(16, '2'),
(17, '7'),
(18, '1'),
(19, 'UKG'),
(20, 'UKG'),
(21, '2'),
(22, 'LKG'),
(23, '12'),
(24, '11'),
(25, '10'),
(26, '1'),
(26, '9'),
(27, '8'),
(28, '7'),
(29, '6'),
(30, '5'),
(31, '4'),
(32, '3'),
(33, '2'),
(34, '3'),
(35, '2'),
(36, '8'),
(37, '1'),
(38, 'UKG'),
(39, 'UKG'),
(40, '2'),
(41, 'LKG'),
(42, '12'),
(43, '11'),
(44, '10'),
(45, '9'),
(46, '8'),
(47, '7'),
(48, '6'),
(49, '5'),
(50, '4'),
(51, '3'),
(52, '2'),
(53, '2'),
(54, '6'),
(55, '1'),
(56, '1'),
(57, '6'),
(58, 'UKG'),
(59, 'LKG'),
(60, 'LKG');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stid` int(11) NOT NULL,
  `sname` varchar(25) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `addre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stid`, `sname`, `pid`, `aid`, `DOB`, `mobile`, `addre`) VALUES
(1, 'Ram Oberoy', 8, 4, '2001-11-07', '7687654455', 'Randhir Colony g.k.m.'),
(2, 'Amit Kumar', 1, 9, '2000-01-01', '9878778866', 'campu gwalior'),
(3, 'Tanu Singh', 3, 2, '2001-04-03', '8878987827', 'DD nagar gwalior'),
(4, 'Sunil Oberoy', 8, 4, '2019-01-01', '9989786756', 'sinde ki chawni'),
(5, 'Sonam kapoor', 7, 2, '2002-12-05', '8898789865', 'HanumanNagar gole ka mand'),
(6, 'Komal Verma', 12, 2, '2003-11-03', '7878070798', 'maharaja bada gwalior'),
(7, 'Vinay Shriva.', 6, 4, '2004-07-15', '8787987866', 'Randhir Colony g.k.m.'),
(8, 'Dev Mishra', 12, 9, '2005-09-25', '9989795717', 'badagao gwalior'),
(9, 'Suhana Singh', 10, 2, '2006-07-15', '9955667786', 'Phoolbagh Gwalior'),
(10, 'Puja Mathur', 11, 4, '2007-01-26', '9807129222', 'Morar gwalior'),
(11, 'Raja Gurjar', 12, 9, '2008-11-03', '9955667786', 'Khurari Gwalior'),
(12, 'Jai Mishra', 15, 2, '2009-01-18', '8877987654', 'Hazeera Gwalior'),
(13, ' Sonam Shar.', 5, 2, '2010-01-18', '7877987767', 'ShatabdiPuram Gwalior'),
(14, 'Dev Shankar', 2, 4, '2011-09-25', '9989786673', 'scindia teacher colony g.'),
(15, 'Suneeta verma', 12, 9, '2012-07-07', '7878070798', 'Purushottam bihar G.K.M'),
(16, 'Anil Jadon', 9, 2, '2013-10-13', '8787987866', ' ShatabdiPuram Gwalior'),
(17, 'Amit Trivedi', 16, 4, '2014-04-08', '8898789865', 'HanumanNagar gole ka mand'),
(18, 'Nilesh Gupta', 4, 4, '2015-12-01', '8878675644', 'Randhir Colony g.k.m.'),
(19, 'Neerja kapoor', 7, 9, '2016-11-03', '8878679876', 'scindia teacher colony g.'),
(20, 'Sheetal Soni', 14, 1, '2017-07-15', '9989564534', 'Morar Gwalior'),
(21, 'Prince Gurjar', 13, 9, '2018-09-25', '9897098078', 'DD nagar gwalior'),
(22, 'Kalpna Mathur', 11, 2, '2020-04-03', '9897912345', 'campu gwalior'),
(23, 'Shreya Jain', 18, 9, '2001-02-17', '7877988757', 'sinde ki chawni'),
(24, 'Harsh Tiwari', 17, 2, '2002-01-15', '9888679876', ' HanumanNagar gole ka man'),
(25, 'Deelip Bajaj', 19, 4, '2003-06-13', '9955667786', 'maharaja bada gwalior'),
(26, 'Shashi Rajput', 21, 2, '2004-09-25', '8877987654', 'Randhir Colony g.k.m.'),
(27, 'Jai Bhalla', 25, 9, '2005-12-15', '8897965421', 'badagao gwalior'),
(28, 'Himanshi Bhadoriya', 22, 2, '2006-12-11', '8878675645', 'Phoolbagh Gwalior'),
(29, 'Ramesh Malwani', 23, 9, '2007-05-16', '8878980010', 'Morar gwalior'),
(30, 'Sumit Rastogi', 26, 4, '2008-07-13', '8878765651', 'Morar gwalior'),
(31, 'D.S Modi', 27, 9, '2009-09-22', '9898786810', 'Khurari Gwalior'),
(32, 'Tanisha Chauhan', 28, 2, '2010-10-29', '8787878987', 'Hazeera Gwalior'),
(33, 'Rrakash Mathur', 11, 2, '2011-02-03', '9911223365', 'ShatabdiPuram Gwalior'),
(34, 'Naveen Mishra', 15, 9, '2012-11-04', '9987652342', 'HanumanNagar gole ka mand'),
(35, 'Arun Singh', 3, 2, '2013-04-05', '9898230011', 'scindia teacher colony g.'),
(36, 'Amar Singh', 10, 4, '2014-05-02', '7687678767', 'Purushottam bihar G.K.M'),
(37, 'Nikhil Tiwari', 17, 9, '2015-06-09', '8877987654', ' ShatabdiPuram Gwalior'),
(38, 'Praveen Jadon', 9, 1, '2016-07-11', '8878766656', 'HanumanNagar gole ka mand'),
(39, 'Rajkumar Yadav', 29, 2, '2017-04-12', '8787656788', 'Randhir Colony g.k.m.'),
(40, 'iqbal Mohammad', 30, 4, '2018-05-23', '8878987866', 'scindia teacher colony g.'),
(41, 'Mukesh Malwani', 23, 9, '2019-02-02', '7678767876', 'Morar Gwalior'),
(42, 'Sachin Bhadoriya', 22, 9, '2001-09-09', '8878987868', 'DD nagar gwalior'),
(43, 'Deepu Rajput', 21, 4, '2002-10-06', '8898789989', 'campu gwalior'),
(44, 'Vashuadev yadav', 29, 9, '2003-11-03', '9989876655', 'sinde ki chawni'),
(45, 'Meher Mohammad', 30, 2, '2004-09-12', '9807012345', 'HanumanNagar gole ka man'),
(46, 'Rishu Bhalla', 25, 4, '2005-03-25', '7876565544', 'maharaja bada gwalior'),
(47, 'Rishab Shreevas.', 6, 9, '2006-04-02', '7656453211', 'Randhir Colony g.k.m.'),
(48, 'Karan Rastogi', 26, 4, '2007-05-09', '8787980990', ' badagao gwalior'),
(49, 'Rishi Kumar', 1, 9, '2008-04-17', '7887098976', ' Phoolbagh Gwalior'),
(50, 'Sumit Modi', 27, 9, '2009-12-05', '9870765412', 'HanumanNagar gole ka mand'),
(51, 'Rishab Bajaj', 19, 2, '2010-10-06', '8876563412', 'Khurari Gwalior'),
(52, 'Nilesh Gupta', 4, 9, '2011-07-13', '9878987709', 'Ratwai Morar'),
(53, 'Rishi Soni', 14, 9, '2012-08-14', '9878991121', 'Randhir Colony g.k.m.'),
(54, 'Guddu Gurjar', 12, 2, '2013-09-15', '8787987809', 'HanumanNagar gole ka man'),
(55, 'Ravi Shankar', 2, 9, '2014-01-05', '9878657845', 'Narayan gole ka man'),
(56, 'Aman Sharma', 5, 9, '2015-09-06', '9900887798', 'Phoolbagh Gwalior'),
(57, 'Chotu Rastogi', 26, 9, '2016-10-09', '8987678765', 'Khurari Gwalior'),
(58, 'Sonu Oberoy', 8, 1, '2017-10-09', '8978675645', 'Near Railway Stat. Gwa.'),
(59, 'Monu Soni', 14, 4, '2018-09-10', '9876754434', 'chetakpuri Gwalior'),
(60, 'Naitik Jain', 18, 4, '2019-05-24', '9878987657', 'Govindpuri'),
(61, 'Guddu Rastogi', 26, 2, '2001-10-08', '7898789899', 'bhind M.P.'),
(62, 'Rishi Jain', 18, 9, '2002-07-02', '9876564523', 'Chetakpuri gwalior'),
(63, 'Ritika Gupta', 4, 4, '2003-07-19', '8976564315', 'near DD  mall gwalior'),
(64, 'Gaurav Soni', 14, 1, '2001-04-25', '8787980011', 'near DB mall'),
(65, 'Ghanshyam Bajaj', 19, 9, '2002-05-12', '7767870011', 'Morar gwalior'),
(66, 'Gauttam bhalla', 25, 4, '2001-12-12', '9878674564', 'Hanuman Nagar Gwalior'),
(67, 'Dev Modi', 27, 2, '2003-11-03', '6656768798', 'Govindpuri gwalior'),
(68, 'Aman Shreevas', 6, 2, '2004-10-09', '9987876785', 'Ratwai Morar'),
(69, 'Misha Mohammad', 30, 4, '2003-12-03', '8798980099', 'HanumanNagar gole ka man'),
(70, 'Kunal Rajput', 21, 9, '2004-12-29', '8878564508', 'campu gwalior'),
(71, 'Amar Soni', 14, 9, '2005-10-03', '7787987876', 'Randhir Colony g.k.m.'),
(72, 'Deepu Gurjar', 12, 4, '2006-10-05', '9989786754', 'HanumanNagar gole ka man'),
(73, 'Shiv Shankar', 2, 2, '2007-08-09', '9898937487', 'Narayan bihar gole ka man'),
(74, 'Harry Sharma', 5, 4, '2008-09-09', '7867865612', ' Phoolbagh Gwalior'),
(75, 'Soonu Oberoy', 8, 2, '2009-02-06', '8878987892', 'Near Railway Stat. Gwa.'),
(76, 'Meenu Jain', 18, 9, '2010-03-07', '9989009878', ' Chetakpuri gwalior'),
(77, 'Gaurav Jadon', 9, 2, '2011-02-01', '9898786756', 'ShatabdiPuram Gwalior');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `suid` int(11) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`suid`, `sub_name`, `aid`, `tid`) VALUES
(1, 'English', 2, 5),
(2, 'Hindi', 2, 9),
(3, 'Mathematics', 2, 6),
(4, 'Physics', 2, 7),
(5, 'Chemistry', 2, 8),
(6, 'Biology', 2, 4),
(7, 'G.K.', 2, 15),
(8, 'Computer Science', 2, 14),
(9, 'History', 2, 3),
(10, 'Polity', 1, 2),
(11, 'Geography', 1, 10),
(12, 'Economics', 2, 11),
(13, 'Psychology', 2, 1),
(14, 'Dancing', 1, 16),
(15, 'Painting', 2, 13),
(16, 'General Science', 2, 14),
(17, 'EVS', 2, 17),
(18, 'Physical Education', 2, 12),
(19, 'Sanskrit', 2, 9),
(20, 'Social Science', 2, 20),
(21, 'Hindi-Sahitya', 2, 21),
(22, 'Genaral English', 2, 19),
(23, 'General Maths', 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `tname` varchar(25) DEFAULT NULL,
  `tinterest` varchar(25) DEFAULT NULL,
  `tmobile` varchar(12) DEFAULT NULL,
  `taddre` varchar(100) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `tname`, `tinterest`, `tmobile`, `taddre`, `aid`) VALUES
(1, 'Miss Shalni singh', 'Psychology', '8978878654', 'HanumanNagar gole ka mandir', 2),
(2, 'Mrs Shelja gupta', 'Polity', '7898929349', 'Randhir Colony g.k.m.', 1),
(3, 'Mr Rajiv gupta', 'History', '7898765646', 'scindia teacher colony g.k.m', 2),
(4, 'Miss Pooja Sharma', 'Biology', '9878909234', 'Morar Gwalior', 2),
(5, 'Mr Manmohan senger', 'English', '7987890261', 'dd nagar Gwalior', 2),
(6, 'Mr Abhishek Bhargav', 'Maths', '9898675736', 'campu gwalior', 2),
(7, 'Mr Vinay Shreevas.', 'Physics', '9293949569', 'sinde ki chawni', 2),
(8, 'Mr Pusphendre Sikarw.', 'Chemistry', '9892949556', 'maharaja bada gwalior', 2),
(9, 'Mrs Deepa chokar', 'Hindi', '9897675629', 'Ratwai morar', 2),
(10, 'Mr K.N. sharma', 'Geography', '9897927865', 'badagao gwalior', 1),
(11, 'Mr Amit Kumar', 'Economics', '9578673473', 'Hanuman Nagar', 2),
(12, 'Miss Poonam bhadoriya', 'Physical Education', '9876734582', 'Morar gwalior', 2),
(13, 'Miss Suneeta verma', 'Painting', '7898765012', 'DD nagar gwalior', 2),
(14, 'Mr Vishwanath rao', 'Computer Science', '7989078945', 'Phoolbagh Gwalior', 2),
(15, 'Mrs Kalpna sharma', 'General Knowledge', '9878954755', 'Hazeera Gwalior', 2),
(16, 'Mrs Suneeta ojha', 'Dancing', '7897456633', 'campu gwalior', 1),
(17, 'Mr Dharmendra Jadon', 'environment', '9897900911', 'Khurari Gwalior', 2),
(18, 'Miss Sheetal soni', 'General Science', '8989876655', 'maharaja bada', 2),
(19, 'Miss Kirti Sharma', 'English', '9845980011', 'Gole Ka Mandir', 2),
(20, 'Mrs Nidhi Bhatnagar', 'Social Science', '7891023466', 'Purushottam bihar G.K.M', 2),
(21, 'Mr Swastik rai', 'Hindi-sahitya', '7898786655', 'AdityaPuram Gwalior', 2),
(22, 'Miss Sheleja roy', 'child_development', '7856453412', 'ShatabdiPuram Gwalior', 2),
(23, 'Mrs Neerja kapoor', 'child-pysochology', '9878085566', 'Morar Gwalior', 2),
(24, 'Mr Manish kumar', 'General Maths', '9877006545', 'hazeera gwalior', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminis`
--
ALTER TABLE `adminis`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `c_teacher` (`c_teacher`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `stid` (`stid`),
  ADD KEY `tid` (`tid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `sttacl`
--
ALTER TABLE `sttacl`
  ADD PRIMARY KEY (`stid`,`cid`),
  ADD KEY `sttack_fk2` (`cid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`suid`),
  ADD KEY `aidforeignkey` (`aid`),
  ADD KEY `tidforeignkey` (`tid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `aid_foreignkey` (`aid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`c_teacher`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`stid`) REFERENCES `student` (`stid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `class` (`cid`);

--
-- Constraints for table `sttacl`
--
ALTER TABLE `sttacl`
  ADD CONSTRAINT `sttack_fk2` FOREIGN KEY (`cid`) REFERENCES `class` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sttacl_ibfk_1` FOREIGN KEY (`stid`) REFERENCES `student` (`stid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `parents` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `adminis` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `aidforeignkey` FOREIGN KEY (`aid`) REFERENCES `adminis` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tidforeignkey` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `aid_foreignkey` FOREIGN KEY (`aid`) REFERENCES `adminis` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
