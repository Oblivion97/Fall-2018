-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2018 at 07:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `first_name`, `last_name`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'Oblivion', '97');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(250) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `credit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `credit`) VALUES
(9, 'PHY105', 'Physics', '3.00'),
(10, 'PHY 106', 'Physics Lab', '1.00'),
(11, 'SOC 101', 'Society, Technology and Engineering Ethics', '3.00'),
(12, 'ACT 111', 'Financial and Managerial Accounting', '3.00'),
(13, 'ECO 213', 'Economics', '3.00'),
(14, 'IPE 401', 'Industrial Management', '3.00'),
(15, 'PSY 101', 'Psychology', '3.00'),
(16, 'MGT 101', 'Principles of Management', '3.00'),
(17, 'SOC 103', 'Sociology', '3.00'),
(18, 'ENG 005', 'Spoken English', '3.00'),
(19, 'ENG 101', 'English I', '3.00'),
(20, 'ENG 103', 'English II', '3.00'),
(21, 'MATH 003', 'Elementary Calculus', '3.00'),
(22, 'MATH 151', 'Differential and Integral Calculus', '3.00'),
(23, 'MATH 183', 'Linear Algebra, Ordinary & Partial Differential Equations', '3.00'),
(24, 'MATH 187', 'Fourier and Laplace Transformations and Complex Variables', '3.00'),
(25, 'MATH 201', 'Coordinate geometry and Vector Analysis', '3.00'),
(26, 'STAT 205', 'Probability and Statistics', '3.00'),
(27, 'CSI 121', 'Structured Programming Language', '3.00'),
(28, 'CSI 122', 'Structured Programming Language Lab', '1.00'),
(29, 'CSI 124', 'Advanced Programming Laboratory', '1.00'),
(30, 'CSI 211', 'Object-Oriented Programming', '3.00'),
(31, 'CSI 212', 'Object-Oriented Programming Laboratory', '1.00'),
(32, 'CSI 217', 'Data Structure', '3.00'),
(33, 'CSI 218', 'Data Structure Laboratory', '1.00'),
(34, 'CSI 219', 'Discrete Mathematics', '3.00'),
(35, 'CSI 221', 'Database Management Systems', '3.00'),
(36, 'CSI 222', 'Database Management Systems Laboratory', '1.00'),
(37, 'CSI 227', 'Algorithms', '3.00'),
(38, 'CSI 228', 'Algorithms Laboratory', '1.00'),
(39, 'CSI 229', 'Numerical Methods', '3.00'),
(40, 'CSI 233', 'Theory of Computing', '3.00'),
(41, 'CSI 309', 'Operating System Concepts', '3.00'),
(42, 'CSI 310', 'Operating System Concepts Laboratory', '1.00'),
(43, 'CSI 311', 'System Analysis and Design', '3.00'),
(44, 'CSI 312', 'System Analysis and Design Laboratory', '1.00'),
(45, 'CSI 321', 'Software Engineering', '3.00'),
(46, 'CSI 322', 'Software Engineering Laboratory', '1.00'),
(47, 'CSI 341 ', 'Artificial Intelligence', '3.00'),
(48, 'CSI 342 ', 'Artificial Intelligence Laboratory', '1.00'),
(49, 'CSI 411  ', 'Compiler', '3.00'),
(50, 'CSI 412  ', 'Compiler Laboratory', '1.00'),
(51, 'CSE 113 ', 'Electrical Circuits', '3.00'),
(52, 'CSE 123   ', 'Electronics', '3.00'),
(53, 'CSE 124   ', 'Electronics Laboratory', '1.00'),
(54, 'CSE 225   ', 'Digital Logic Design', '3.00'),
(55, 'CSE 226   ', 'Digital Logic Design Laboratory', '1.00'),
(56, 'CSE 236  ', 'Assembly Programming Laboratory', '1.00'),
(57, 'CSE 313  ', ' Computer Architecture', '3.00'),
(58, 'CSE 315   ', 'Data Communication', '3.00'),
(59, 'CSE 323   ', 'Computer Networks', '3.00'),
(60, 'CSE 324   ', 'Computer Networks Laboratory', '1.00'),
(61, 'CSE 429   ', 'Digital System Design', '3.00'),
(62, 'CSE 430   ', 'Digital System Design Laboratory', '1.00'),
(63, 'CSE 425   ', 'Microprocessor, Microcontroller and Interfacing', '3.00'),
(64, 'CSE 426   ', 'Microprocessor, Microcontroller and Interfacing Laboratory', '1.00'),
(65, 'CSI 415   ', 'Pattern Recognition ', '3.00'),
(66, 'CSI 416   ', 'Pattern Recognition Laboratory ', '1.00'),
(67, 'CSI 421     ', 'Computer Graphics', '3.00'),
(68, 'CSI 422    ', 'Computer Graphics Laboratory', '1.00'),
(69, 'CSI 423    ', 'Simulation & Modeling', '3.00'),
(70, 'CSI 424 ', '   Simulation & Modeling Laboratory', '1.00'),
(71, 'CSI 447    ', 'Multimedia Systems Design', '3.00'),
(72, 'CSI 448   ', ' Multimedia Systems Design Laboratory', '1.00'),
(73, 'CSE 427   ', 'VLSI Design', '3.00'),
(74, 'CSE 428  ', ' VLSI Design Laboratory', '1.00'),
(75, 'CSE 471   ', 'Advanced Object Oriented Programming', '3.00'),
(76, 'CSE 472   ', 'Advanced Object Oriented Programming Laboratory', '1.00'),
(77, 'CSE 453   ', 'Optical Fiber Communication', '3.00'),
(78, 'CSE 457  ', ' Mobile Cellular Communication', '3.00'),
(79, 'CSE 461   ', 'Wireless Communication', '3.00'),
(80, 'CSE 463   ', 'E-Commerce', '3.00'),
(81, 'CSE 465   ', 'Web Programming', '3.00'),
(82, 'CSE 467   ', 'Advanced DBMS', '3.00'),
(83, 'CSE 469   ', 'Project Management', '3.00'),
(84, 'CSE 473   ', 'Advanced Network Services and Management', '3.00'),
(85, 'CSE 475   ', 'Mobile Computing', '3.00'),
(86, 'CSE 477   ', 'Network Security', '3.00'),
(87, 'CSE 479   ', 'Embedded Systems', '3.00'),
(88, 'CSE 481   ', 'Mobile Application Development', '3.00'),
(89, 'CSE 483   ', 'Digital Image Processing', '3.00'),
(90, 'CSE 485   ', 'Game Design & Development', '3.00'),
(91, 'CSE 487   ', 'Cloud Computing', '3.00');

-- --------------------------------------------------------

--
-- Table structure for table `course_profile`
--

CREATE TABLE `course_profile` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_profile`
--

INSERT INTO `course_profile` (`id`, `username`, `course_code`, `course_name`) VALUES
(174, 'username_1', 'CSI 222', 'Database Management Systems Laboratory'),
(175, 'username_1', 'CSE 315   ', 'Data Communication'),
(176, 'username_1', 'CSI 309', 'Operating System Concepts'),
(177, 'username_1', 'CSI 310', 'Operating System Concepts Laboratory'),
(178, 'username_1', 'CSE 236  ', 'Assembly Programming Laboratory'),
(179, 'fatiha_islam', 'PHY105', 'Physics'),
(180, 'fatiha_islam', 'SOC 101', 'Society, Technology and Engineering Ethics'),
(181, 'fatiha_islam', 'ECO 213', 'Economics');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `options` varchar(100) NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `options`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'imam sir', 'Database Management Systems Laboratory', 'username_1', 'non', '2018-12-15 23:30:36', 'no', 'no', 0),
(2, 'imam sir', 'Database Management Systems Laboratory', 'username_1', 'non', '2018-12-15 23:32:17', 'no', 'no', 0),
(3, 'l/ckbn \r\ndlfjkn', 'Data Communication', 'username_1', 'non', '2018-12-15 23:33:14', 'no', 'no', 0),
(4, 'l/ckbn \r\ndlfjkn', 'Data Communication', 'username_1', 'non', '2018-12-15 23:34:22', 'no', 'no', 0),
(5, 'l/ckbn \r\ndlfjkn', 'Data Communication', 'username_1', 'non', '2018-12-15 23:34:52', 'no', 'no', 0),
(6, 'dfpghm f;gikonhmftgolp;jm, f;lh,rh,rfh;fh;fm; ;\'r yhjm,tp\' ymtpymt, ;\'l ,jtp;\'jm,t\'p;,', 'Database Management Systems Laboratory', 'username_1', 'non', '2018-12-15 23:35:09', 'no', 'no', 0),
(7, 'dfol;khgn', 'Physics', 'fatiha_islam', 'non', '2018-12-15 23:54:36', 'no', 'no', 0),
(8, 'dfol;khgn', 'Physics', 'fatiha_islam', 'non', '2018-12-15 23:55:24', 'no', 'no', 0),
(9, 'seiow``dofgndlgm eorkgmdl;\'rgm edl;krmg', 'Society, Technology and Engineering Ethics', 'fatiha_islam', 'non', '2018-12-15 23:56:11', 'no', 'no', 0),
(10, 'dgl;hmd', 'Economics', 'fatiha_islam', 'non', '2018-12-15 23:57:20', 'no', 'no', 0),
(11, 'f;hlj fgm\'fl, ;flghm,fop;\'hk m,f;, p[hp[o fmpohm p mptmhdfpo thmp', 'Physics', 'fatiha_islam', 'non', '2018-12-15 23:58:25', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL,
  `userpreferences` varchar(7) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`, `userpreferences`, `student_id`) VALUES
(11, 'Hmmahmudul', 'Hasan', 'username_1', 'Mahmudulmmmm@gmail.com', '7c79dd68b400e6b0c9f99f8f221dae26', '2018-11-08', 'assets/images/profile_pics/defaults/head_belize_hole.png', 0, 0, 'no', ',', 'Student', 23456789),
(12, 'Imam', 'Hasan', 'imam_hasan', 'Imam@gmail.com', '7c79dd68b400e6b0c9f99f8f221dae26', '2018-11-08', 'assets/images/profile_pics/defaults/head_wet_asphalt.png', 0, 0, 'no', ',', 'Teacher', 0),
(13, 'Mdtoufiquehasan', 'Hemel', 'mdtoufiquehasan_hemel', 'Hemel@gmail.com', 'dbe17e15bbab4931a65982bb79222ec0', '2018-12-06', 'assets/images/profile_pics/defaults/head_belize_hole.png', 0, 0, 'no', ',', 'Student', 11152036),
(14, 'Ross', 'Geller', 'ross_geller', 'Ross@gmail.com', 'e3db88713cfd1c2eddf44713264f71ad', '2018-12-08', 'assets/images/profile_pics/defaults/propic.png', 0, 0, 'no', ',', 'Student', 11152041),
(15, 'Reachel', 'Green', 'reachel_green', 'Green@gmail.com', '560384b50874de4cf78837014c0f5687', '2018-12-08', 'assets/images/profile_pics/defaults/propic.png', 0, 0, 'no', ',', 'Student', 11152041),
(16, 'Monica', 'Geller', 'monica_geller', 'Monica@gmail.com', 'b93be39aa05d221a0c358a6371ba0664', '2018-12-08', 'assets/images/profile_pics/defaults/head_belize_hole.png', 0, 0, 'no', ',', 'Teacher', 0),
(17, 'Fatiha', 'Islam', 'fatiha_islam', 'Fatiha@gmail.com', '97d6cc2f3ea40ce063a5f7c46825ff7e', '2018-12-15', 'assets/images/profile_pics/defaults/head_wet_asphalt.png', 2, 0, 'no', ',', 'Student', 11152041);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_profile`
--
ALTER TABLE `course_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `course_profile`
--
ALTER TABLE `course_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
