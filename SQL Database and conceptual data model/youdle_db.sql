-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2023 at 02:02 AM
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
-- Database: `youdle_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sender` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `parent_id`, `comment`, `sender`, `date`) VALUES
(489, 0, 'Hey guys, how is everyone doing ', 'Clifford', '2023-03-28 23:23:25'),
(490, 0, 'Has anyone attempted the medium quiz?', 'Clifford', '2023-03-28 23:23:47'),
(491, 489, 'hello Clifford im doing well, what about yourself?', 'aziz', '2023-03-28 23:35:41'),
(492, 490, 'no I am just about to', 'aziz', '2023-03-28 23:35:50'),
(493, 0, 'hey guys saahil here!', 'Saahil', '2023-03-28 23:41:25'),
(494, 490, 'I just attempted it and I faired quite well!', 'Saahil', '2023-03-28 23:41:51'),
(495, 493, 'hey saahil how are you, im miracle', 'Miracle', '2023-03-28 23:47:04'),
(496, 0, 'guys these quizzes are so helpful!!!', 'Miracle', '2023-03-28 23:47:38'),
(497, 0, 'hey guys im tope', 'Tope', '2023-03-28 23:51:05'),
(498, 496, 'ikr It really tested my computing knowledge!', 'Tope', '2023-03-28 23:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `login_form`
--

CREATE TABLE `login_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'male',
  `secquestion` varchar(200) NOT NULL,
  `secanswer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_form`
--

INSERT INTO `login_form` (`id`, `name`, `email`, `password`, `gender`, `secquestion`, `secanswer`) VALUES
(88, 'Saahil', 'ss2357@kent.ac.uk', '$2y$10$RrrUJ/quS09EDdww.7ADjetG0DmEaL6zyXZX9ifEkuj39KgFgKITy', 'Male', 'What was the name of your first pet?', 'Prince'),
(89, 'aziz', 'aas49@kent.ac.uk', '$2y$10$xd5pMTogYxq5GDuW.n3JwutTKbMGRYMlrSvkWTVI.pSyhHHunALe6', 'Male', 'What is your favourite book?', 'Harry Potter'),
(90, 'Miracle', 'mico2@kent.ac.uk', '$2y$10$rh2fQ5a0zGoMT77LgdMCb.8H8WkdkxgBtAozSsngcktMGmWPz3USe', 'Female', 'What is your favourite movie?', 'Creed 3'),
(91, 'Tope', 'tb520@kent.ac.uk', '$2y$10$iaNKxr2h1WSVtJCZlGu8OuUBCGJJjuj/XN07gyNs4JzESMIlxbRTi', 'Male', 'At what age did start university?', '18'),
(92, 'Clifford', 'ca517@kent.ac.uk', '$2y$10$18aGIjFyfapSeYFXPw0XRuQzAyAjKa6swboDaT2gSTZWSGm0z.ahm', 'Male', 'What was the name of your first pet?', 'fluffy');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `score` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `name`, `score`) VALUES
(102, 'Clifford', 50),
(103, 'aziz', 10),
(104, 'Saahil', 20),
(105, 'Miracle', 30),
(106, 'Tope', 110);

-- --------------------------------------------------------

--
-- Table structure for table `scoreshard`
--

CREATE TABLE `scoreshard` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `score` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scoreshard`
--

INSERT INTO `scoreshard` (`id`, `name`, `score`) VALUES
(42, 'Clifford', 20),
(43, 'aziz', 30),
(44, 'Saahil', 90),
(45, 'Miracle', 70),
(46, 'Tope', 130);

-- --------------------------------------------------------

--
-- Table structure for table `scoresmedium`
--

CREATE TABLE `scoresmedium` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `score` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scoresmedium`
--

INSERT INTO `scoresmedium` (`id`, `name`, `score`) VALUES
(53, 'Clifford', 50),
(54, 'aziz', 110),
(55, 'Saahil', 70),
(56, 'Miracle', 30),
(57, 'Tope', 40);

-- --------------------------------------------------------

--
-- Table structure for table `user_comments`
--

CREATE TABLE `user_comments` (
  `id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_comment` varchar(200) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_comments`
--

INSERT INTO `user_comments` (`id`, `user_name`, `user_email`, `user_comment`, `date_time`) VALUES
(9, 'Clifford', 'ca517@kent.ac.uk', 'Wonderfull videos, it really helped', '2023-03-28 23:29:23'),
(10, 'aziz', 'aas49@kent.ac.uk', 'could you post a video about for loops please?', '2023-03-28 23:37:08'),
(11, 'saahil', 'ss2357@kent.ac.uk', 'amazing videos!', '2023-03-28 23:42:37'),
(12, 'miracle', 'mico2@kent.ac.uk', 'love the content!', '2023-03-28 23:48:16'),
(13, 'tope', 'tb520@kent.c.uk', 'love this! please add more videos', '2023-03-28 23:52:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_form`
--
ALTER TABLE `login_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scoreshard`
--
ALTER TABLE `scoreshard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scoresmedium`
--
ALTER TABLE `scoresmedium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_comments`
--
ALTER TABLE `user_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `login_form`
--
ALTER TABLE `login_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `scoreshard`
--
ALTER TABLE `scoreshard`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `scoresmedium`
--
ALTER TABLE `scoresmedium`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_comments`
--
ALTER TABLE `user_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
