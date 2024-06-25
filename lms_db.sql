-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 12:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Admin Kumar', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(9, 'Complete React Bootcamp', 'Embark on your journey to mobile app development mastery with our React Native course! Dive into the cutting-edge technology that allows you to build stunning, high-performance mobile applications for both iOS and Android platforms with a single codebase', 'Rajesh Kumar', '../image/courseimg/react.JPEG', '3 Months', 700, 1700),
(10, 'Learn Python A-Z', 'Dive into the versatile and beginner-friendly programming language renowned for its simplicity and readability, and embark on a journey to master everything from web development and data analysis to artificial intelligence and automation, empowering you to turn your ideas into reality with ease.', 'Rajesh Shetty', '../image/courseimg/Python.jpg', '4 Months', 800, 1800),
(11, 'Learn Robotics', 'In simple terms, robotics combines science, engineering, and technology to design, construct, operate, and use machines programmed to replicate, substitute, or assist humans in completing tasks of varying complexity', 'Amit ', '../image/courseimg/robotics.JPEG', '2 Months', 900, 1900),
(12, 'Learn Machine Learning', ' Explore the realm where algorithms meet data to create intelligent systems, and unleash the power to revolutionize industries, from healthcare to finance, through predictive analytics and intelligent decision-making.\r\n\r\n\r\n\r\n', 'Jay Shukla', '../image/courseimg/machine learning.JPEG', '2 Months', 100, 1000),
(13, 'Software Testing', 'Elevate your career with our Software Testing course! Dive into the essential techniques and methodologies to ensure quality and reliability in software products, mastering the art of identifying bugs, writing test cases, and ensuring seamless user experiences, becoming an indispensable asset in the tech industry.', 'Sonam Gupta', '../image/courseimg/software1.JPEG', '3 Month', 800, 1600),
(16, 'Learn Database', 'Explore the essential concepts and technologies that power the storage, organization, retrieval, and manipulation of vast amounts of information, equipping yourself with the skills to design efficient databases, optimize queries, and ensure data integrity, and become a master of data-driven decision-making.', 'RK', '../image/courseimg/database.JPEG', '3 Week', 500, 4000),
(17, 'Learn Operating System ', 'Delve into the essential software that powers every digital device, mastering the intricacies of managing hardware resources, optimizing performance, and providing a user-friendly interface, and embark on a journey to understanding the backbone of modern technology.', 'GeekyShows', '../image/courseimg/os.JPEG', '2 months', 200, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `respmsg` text NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(3, 'ORDS98956453', 'ant@example.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-12'),
(7, 'ORDS57717951', 'jay@ischool.com', 14, 'TXN_SUCCESS', 'Txn Success', 400, '2019-09-13'),
(8, 'ORDS22968322', 'mario@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-13'),
(9, 'ORDS78666589', 'ignou@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-19'),
(10, 'ORDS59885531', 'sonam@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2020-07-04'),
(11, 'ORDS57155910', 'gorgemendis884@gmail.com', 8, 'Success', 'Done', 1655, '2020-04-24'),
(12, 'ORDS27103245', 'gorgemendis884@gmail.com', 9, 'Success', 'Done', 700, '2020-04-24'),
(13, 'ORDS83965523', 'gorgemendis884@gmail.com', 9, 'Success', 'Done', 700, '2020-04-24'),
(14, 'ORDS30346073', 'gorgemendis884@gmail.com', 17, 'Success', 'Done', 200, '2020-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(12, 'Knowledge is power. Information is liberating. Education is the premise of progress, in every society, in every family.', 180),
(13, 'This is Awesome GeekySHows Jindabaad', 182);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(32, 'Introduction to Python ', 'Introduction to Python Desc', '../lessonvid/video2.mp4', 10, 'Learn Python A-Z'),
(33, 'How Python Works', 'How Python Works Descc', '../lessonvid/video3.mp4', 10, 'Learn Python A-Z'),
(34, 'Why Python is powerful', 'Why Python is powerful Desc', '../lessonvid/video9.mp4', 10, 'Learn Python A-Z'),
(35, 'Everyone should learn Python', 'Everyone should learn python  Desccc', '../lessonvid/video1.mp4', 10, 'Learn python A-Z'),
(36, 'Introduction to React', 'Introduction to React Desc', '../lessonvid/video4.mp4', 9, 'Complete React Bootcamp'),
(37, 'How React works', 'How React works Desc', '../lessonvid/video5.mp4', 9, 'Complete React Bootcamp'),
(38, 'is React really easy ?', 'is React really easy ? desc', '../lessonvid/video6.mp4', 9, 'Complete React Bootcamp'),
(39, 'Introduction to java', 'Introduction to Java ', '../lessonvid/video7.mp4', 8, 'Learn java The Easy Way'),
(40, 'Type of Java programming language', 'Type of java programming language ', '../lessonvid/video8.mp4', 8, 'Learn java in a easy way'),
(41, 'Intro Hands-on Robotics', 'Intro Hands-on Robotics desc', '../lessonvid/video10.mp4', 11, 'Hands-on Robotics'),
(42, 'How it works', 'How it works descccccc', '../lessonvid/video11.mp4', 11, 'Hands-on Artificial Intelligence'),
(43, 'Inro Learn machine learning', 'Inro Learn machine learning desc', '../lessonvid/video12.mp4', 12, 'Learn machine learning techniques'),
(44, 'intro Software Testing', 'intro Software Testing', '../lessonvid/video13.mp4', 13, 'software Testing'),
(48, 'Intro to Database Complete', 'This is lesson number 1', '../lessonvid/video11.mp4', 16, 'Database Complete'),
(49, 'Introduction to Operating Systems', 'This intro video of Operating System', '../lessonvid/video11.mp4', 17, 'Learn Operating System');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(171, 'Captain Marvel', 'cap@example.com', '123456', ' Web Designer', '../image/stu/student2.jpg'),
(172, 'Ant Man', 'ant@example.com', '123456', ' Web Developer', '../image/stu/student4.jpg'),
(173, ' Dr Strange', 'doc@example.com', '123456', ' Web Developer', '../image/stu/student1.jpg'),
(174, 'Scarlet Witch', 'witch@example.com', '123456', 'Web Designer', '../image/stu/student3.jpg'),
(176, ' Shaktiman', 'shaktiman@ischool.com', '123456', 'Software ENgg', '../image/stu/shaktiman.jpg'),
(178, ' Mario', 'mario@ischool.com', '1234567', ' Web Dev', '../image/stu/super-mario-2690254_1280.jpg'),
(182, ' sonam', 'sonam@gmail.com', '123456', ' Web Dev', '../image/stu/student2.jpg'),
(183, 'Samir pathan', 'gorgemendis884@gmail.com', '123', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
