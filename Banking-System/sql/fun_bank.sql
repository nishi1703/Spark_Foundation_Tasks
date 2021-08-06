-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Aug 06, 2021 at 09:09 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fun_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Nishi Singh', 'Arti', 2000, '2021-07-28 13:00:37'),
(2, 'Shruti', 'Dhirendra Singh', 600, '2021-07-28 14:33:44'),
(3, 'Nishi', 'varsha kumari', 2000, '2021-07-30 16:09:03'),
(4, 'Sakshi', 'Ayush Singh', 100, '2021-07-31 11:47:36'),
(5, 'Aliya', 'Nishi Singh', 50, '2021-07-31 11:57:53'),
(6, 'Deepak', 'Nishi Singh', 5500, '2021-08-06 12:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Ayush Singh', 'ayush@gmail.com', 5100),
(2, 'Aliya', 'aliya@gmail.com', 2950),
(3, 'Rama Singh', 'rama@gmail.com', 7000),
(4, 'Dhirendra Singh', 'singh@gmail.com', 50600),
(5, 'Arti Singh', 'arti@gmail.com', 40000),
(6, 'varsha kumari', 'kumari@gmail.com', 32000),
(7, 'Deepak', 'deepak@gmail.com', 44500),
(8, 'Nishant singh', 'nis@gmail.com', 40000),
(9, 'Nihal', 'nih@gmail.com', 30000),
(10, 'Aditya Singh', 'adi@gmail.com', 50000),
(11, 'Nishi Singh', 'nishisingh1703@gmail.com', 7550),
(12, 'Akanksha Singh', 'akansha@mail.com', 10000),
(13, 'Akanksha Singh', 'akansha@mail.com', 10000),
(14, 'Anurag', 'anu@mail.com', 9000),
(15, 'Shruti', 'shru@mail.com', 69400),
(16, 'Riya', 'Ria@mail.com', 70000),
(17, 'Riya', 'Ria@mail.com', 70000),
(18, 'Nishi', 'nisi@mail.com', 243600),
(19, 'Sakshi', 'sak@mail.com', 3400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
