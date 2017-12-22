-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2013 at 11:21 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoutit`
--

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE `shouts` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `time`) VALUES
(1, 'Brad', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet.', '11:23:22'),
(2, 'Johne', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain', '11:24:01'),
(6, 'sam', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', '11:30:12'),
(7, 'paul', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', '11:37:54'),
(8, 'jen', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', '12:01:36'),
(9, 'ali ', 'my name is ali labib mohamed omar this is my first message', '10:35:16'),
(10, 'Daddy ', 'Welcome to our room chat guys ', '10:38:55'),
(11, 'mena ', 'thnx to your invitation ', '10:39:20'),
(12, 'many ', 'hello people i''m very pleasure to talk to you ', '10:40:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
