-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 05:39 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicant`
--

CREATE TABLE `tbl_applicant` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `p_address` varchar(60) DEFAULT NULL,
  `contact_no` int(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `last_exampass` varchar(50) DEFAULT NULL,
  `pass_year` int(20) DEFAULT NULL,
  `nos_c` varchar(50) DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `applied_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_applicant`
--

INSERT INTO `tbl_applicant` (`id`, `f_name`, `gender`, `dob`, `p_address`, `contact_no`, `email`, `father_name`, `occupation`, `mother_name`, `last_exampass`, `pass_year`, `nos_c`, `percentage`, `applied_date`) VALUES
(1, 'Pokhrel', 'male', '1996-02-21', 'Satungal', 2147483647, 'gwan@gmail.com', 'Balananda', 'Businessman', 'Rita', '+2', 0, 'LIC', 80, '2017-12-13 19:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_by` varchar(50) DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `rank`, `status`, `created_by`, `modified_by`, `created_date`, `modified_date`) VALUES
(1, 'ABOUT', 2, 1, 'Gwan', NULL, '2017-12-11 05:32:36', NULL),
(3, 'PROGRAMS', 3, 1, 'Gwan', NULL, '2017-12-11 05:36:53', NULL),
(4, 'NOTICES', 4, 1, 'Gwan', NULL, '2017-12-11 05:37:08', NULL),
(7, 'CONTACT', 7, 1, 'Gwan', NULL, '2017-12-11 05:38:20', NULL),
(8, 'GALLERY ', 5, 1, 'Gwan', 'Gwan', '2017-12-14 15:53:02', '2017-12-14 15:53:18'),
(9, 'TEAM', 6, 1, 'Gwan', 'Gwan', '2017-12-14 15:53:34', '2017-12-14 15:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text,
  `submit_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `f_name`, `l_name`, `email`, `subject`, `message`, `submit_date`) VALUES
(2, 'jeevan', 'pokhrel', 'jeevanpokhrel5364@gmail.com', 'checking', 'just to check if it works or not', '2018-12-19 12:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `feature_image` varchar(90) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `feature_key` tinyint(1) DEFAULT '0',
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `feature_image`, `title`, `feature_key`, `description`) VALUES
(13, '5a2fe19948f6e_521782_382016711877615_773078924_n.jpg', 'orientation', 1, 'Student giving speech'),
(14, '5a2fe1f120e27_154242_382014555211164_196728348_n.jpg', 'orientation', 1, 'Teachers and Staffs'),
(15, '5a2fe20c24aea_522364_382015851877701_956906650_n.jpg', 'orientation', 1, 'Principle\'s Speech'),
(16, '5a2fe248e22f1_968931_473887609357191_1540726884_n.jpg', 'prize', 1, 'Cheque received for class topper of 4th sem 2013'),
(17, '5a2fe2e1828b5_13879346_1071857966226816_1684493312790044232_n.jpg', 'prize', 1, '<p>Great student Sushil of 1st sem receiving award</p>\r\n'),
(19, '5a2fe397a9a2f_16425948_1256819947730616_645947320691497483_n.jpg', 'sports', 1, '<p>Basketball Game of sports event</p>\r\n'),
(20, '5a2fe3bc390f1_16298541_1256820811063863_4115405609248957856_n.jpg', 'sports', 1, '<p>Chess genius</p>\r\n'),
(21, '5a2fe3df3dd39_16426226_1256820561063888_4817001293875725582_n.jpg', 'sports', 1, '<p>All basketball teams group photo</p>\r\n'),
(22, '5a2fe3fc98c3e_16427754_1255934391152505_1500239283780710293_n.jpg', 'sports', 1, '<p>Just look the badminton pose</p>\r\n'),
(23, '5a3264493106f_16473925_1255933407819270_2881074589603597766_n.jpg', 'sports', 0, '<p>Basketball Clash(looking awesome)</p>\r\n'),
(24, '5a2fe460b3087_welcome-farewell-20.jpg', 'welcome', 1, '<p>Award Ceremony</p>\r\n'),
(25, '5a2fe48d83f8b_17264177_1294992500580027_6938549500848278778_n.jpg', 'welcome', 1, '<p>Farewell to one of the great semester</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `id` int(11) NOT NULL,
  `feature_image` varchar(80) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `feature_key` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`id`, `feature_image`, `title`, `feature_key`) VALUES
(1, '5a2f9ae773281_184090_433781676701118_1569432169_n.jpg', 'Img1', 1),
(2, '5a2f9b1017e12_welcome-farewell-20.jpg', 'img2', 1),
(3, '5a2f9b2bef371_147d4f1a751cd88f6c2249ffa4e0995a58d4c474615d06.98694356.jpg', 'img3', 1),
(4, '5a2f9b4ba1fa5_17264177_1294992500580027_6938549500848278778_n.jpg', 'img4', 1),
(5, '5a2f9b649b15c_19657335_1413710215374921_408443643224932473_n.jpg', 'img5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `feature_image` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `feature_key` tinyint(1) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `modified_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`id`, `title`, `short_description`, `description`, `feature_image`, `status`, `feature_key`, `created_by`, `modified_by`, `created_date`, `modified_date`) VALUES
(8, 'Admission Open !!!', 'NCIT announces the admission open for the courses like BScCSIT, BIM etc', '<p>Nagarjuna College has officially announces the admission for BScCSIT, BIM, BBS for the next new semester. Application forms are available in colleges and online registration is also available. All the program qualifications should be fulfilled to apply for the college.</p>\r\n', '5a329d0789958_14055036_1086974281381851_1087203912530876867_n.png', 1, 1, 'Gwan', 'Gwan', '2017-12-14', '2017-12-14'),
(9, 'BScCSIT 6th semester routine has been published', 'TU has officially announced the routine for 6th semester of BScCSIT', '<p>Institute of Science and Technology(IOST) of TU has published the routine for the BScCSIT students of 6th semester. The centre for the exam will be published before the week of the board exam.Best of luck!!! for all the exam appearing students.</p>\r\n', '5c19c0435579f_48203725_2127880090602081_1795318345730359296_n.jpg', 1, 1, 'Gwan', 'Gwan', '2017-12-14', '2018-12-19'),
(10, 'Sports Week', 'NCIT has announced the date for the sports week of the year 2018..', '<p>Nagarjuna college has announced the date for the sports week which is going to be held in 14th,15th,16th of the poush. Sports events will be started in 7:00am and all the students are informed to attend the events at the time.Thank you!!</p>\r\n', '5c19c0faae0e6_5a329f2c3f31b_rrr.jpg', 1, 1, 'Gwan', 'Gwan', '2017-12-14', '2018-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_program`
--

CREATE TABLE `tbl_program` (
  `id` int(11) NOT NULL,
  `course_name` varchar(20) DEFAULT NULL,
  `academic_requirement` text,
  `description` text,
  `syllables` text,
  `credit_hours` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_program`
--

INSERT INTO `tbl_program` (`id`, `course_name`, `academic_requirement`, `description`, `syllables`, `credit_hours`) VALUES
(4, 'BIM', '<ul>\r\n	<li>Successfully completed +2 schooling</li>\r\n	<li>Secured a minimum of second division in the +2 schooling</li>\r\n	<li>Compiled with all the application procedures</li>\r\n</ul>\r\n', '<p>NCIT offers 4-year(8-semesters) undergraduate course in Information Technology of Tribhuvan University(TU).BIM is an integrated course with a blend of Mangement education with recent developments in Information Technology.</p>\r\n\r\n<p>NCIT plays a frontal role among the TU affiliated institutions as the drive to changesin the teaching pedagogies.These changes in the techniques have enabled NCIT to run BIM program effectively and have brought a rich dividend to NCIT. The results of BIM students have been outstanding among similar Tu affiliates.</p>\r\n', '<p>later</p>\r\n', '120'),
(5, 'BScCSIT', '<ul>\r\n	<li>Successfully completed +2 schooling in Science</li>\r\n	<li>Secured a minimum of second division in the +2 schooling</li>\r\n	<li>Compiled with all the application procedures</li>\r\n</ul>\r\n', '<p>BScCSIT is comparatively a new program NCIT has introduced for students. This is a 4-year(8 semester) course of IOST of TU, and is a highly competitive degree in IT. After completion of this course, students shall have threefold opportunity to pursue higher studies for career advancement.&nbsp;</p>\r\n\r\n<p>BScCSIT is the degree with national and international prospect.</p>\r\n', '<p>processing</p>\r\n', '126');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribe`
--

CREATE TABLE `tbl_subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subscribe`
--

INSERT INTO `tbl_subscribe` (`id`, `email`, `created_date`) VALUES
(3, 'gwan5@gmail.com', '2018-12-19 05:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE `tbl_team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `post` varchar(40) DEFAULT NULL,
  `message` text,
  `feature_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`id`, `name`, `post`, `message`, `feature_image`) VALUES
(3, 'Mr. Ramesh Saud', 'IT Co-ordinator', '<p>Emerging Course like BScCSIT, BIM should be more practical. Make your decision to choose the right college so as to be one you&nbsp;dreamt to be.</p>\r\n', '5a31887031379_r.jpg'),
(4, 'Mr. JayMangal Gupta', 'Director', '<p>One of the well rated and qualified for its faculty members and facilities.</p>\r\n', '5a317f3061e24_jj.jpg'),
(5, 'Mr. Sunil Bikram Prajapati', 'Founder', '<p>Dont miss the chance to gain great knowledge from great college</p>\r\n', '5a317f48b7a4f_s.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `role` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `last_login`, `role`) VALUES
(4, 'Jeevan', 'Gwan', '0192023a7bbd73250516f069df18b500', 'gwan@gmail.com', '2017-11-25 17:25:08', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_applicant`
--
ALTER TABLE `tbl_applicant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `modified_by` (`modified_by`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `modified_by` (`modified_by`);

--
-- Indexes for table `tbl_program`
--
ALTER TABLE `tbl_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_name_2` (`course_name`);

--
-- Indexes for table `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post` (`post`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_applicant`
--
ALTER TABLE `tbl_applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_program`
--
ALTER TABLE `tbl_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD CONSTRAINT `tbl_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`username`),
  ADD CONSTRAINT `tbl_category_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `tbl_user` (`username`);

--
-- Constraints for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD CONSTRAINT `tbl_notice_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`username`),
  ADD CONSTRAINT `tbl_notice_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `tbl_user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
