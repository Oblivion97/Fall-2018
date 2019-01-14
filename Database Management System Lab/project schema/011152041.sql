-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 07:07 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(9) NOT NULL,
  `comment_body` text,
  `date_added` datetime DEFAULT NULL,
  `REMOVE` varchar(3) DEFAULT NULL,
  `id_post` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `course_prev` varchar(50) DEFAULT NULL,
  `prerequisite` varchar(50) DEFAULT NULL,
  `user_id` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friend_req`
--

CREATE TABLE `friend_req` (
  `user_id` int(9) DEFAULT NULL,
  `user_to` varchar(255) DEFAULT NULL,
  `user_from` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likes` int(11) NOT NULL,
  `user_id` int(9) DEFAULT NULL,
  `id_post` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(9) DEFAULT NULL,
  `message_body` text,
  `added_by` varchar(255) DEFAULT NULL,
  `user_to` varchar(255) DEFAULT NULL,
  `user_from` varchar(255) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `opened` varchar(3) DEFAULT NULL,
  `viewed` varchar(3) DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `user_id` int(9) DEFAULT NULL,
  `user_to` varchar(255) DEFAULT NULL,
  `user_from` varchar(255) DEFAULT NULL,
  `notification_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` varchar(11) NOT NULL,
  `post_body` text,
  `added_by` varchar(60) DEFAULT NULL,
  `added_date` varchar(60) DEFAULT NULL,
  `delete_post` varchar(3) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `hash_tags` varchar(30) NOT NULL,
  `hits` int(9) DEFAULT NULL,
  `id_post` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(9) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `username` varchar(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `user_closed` varchar(3) DEFAULT NULL,
  `preferences` varchar(7) DEFAULT NULL,
  `academic_id` int(9) DEFAULT NULL,
  `admin` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk6` (`id_post`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`),
  ADD KEY `FK1` (`prerequisite`),
  ADD KEY `FK11` (`user_id`);

--
-- Indexes for table `friend_req`
--
ALTER TABLE `friend_req`
  ADD KEY `fk9` (`user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likes`),
  ADD KEY `fk111` (`user_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD KEY `fk` (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD KEY `fk2` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `fk3` (`likes`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`hash_tags`),
  ADD KEY `fk5` (`id_post`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK3_users` (`admin`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`prerequisite`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `FK11` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `friend_req`
--
ALTER TABLE `friend_req`
  ADD CONSTRAINT `fk9` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk111` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk` FOREIGN KEY (`id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`likes`) REFERENCES `likes` (`likes`);

--
-- Constraints for table `trends`
--
ALTER TABLE `trends`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK3_users` FOREIGN KEY (`admin`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
