-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 06:21 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bridge_transactions`
--

CREATE TABLE `bridge_transactions` (
  `id` int(11) NOT NULL,
  `userWallet` varchar(50) NOT NULL,
  `orderID` int(11) NOT NULL,
  `fromChain` int(11) NOT NULL,
  `fromCurrency` varchar(5) NOT NULL,
  `fromTxnHash` varchar(70) NOT NULL,
  `fromAmount` float NOT NULL,
  `toChain` int(11) NOT NULL,
  `toCurrency` varchar(5) NOT NULL,
  `toTxnHash` varchar(70) NOT NULL,
  `toAmount` float NOT NULL,
  `txnFee` float NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridge_transactions`
--

INSERT INTO `bridge_transactions` (`id`, `userWallet`, `orderID`, `fromChain`, `fromCurrency`, `fromTxnHash`, `fromAmount`, `toChain`, `toCurrency`, `toTxnHash`, `toAmount`, `txnFee`, `status`) VALUES
(1, '0x2B2E666e1D211e22a1Ca8a66147da16Fd6C0fc9E', 1, 126, 'BNB', '0x38cf54af596b7179c1219030d9d3d07be7deda1e85e73fe6dbb42b09d20b3a14', 0.0123, 24, 'BNB', '0x38cf54af596b7179c1219030d9d3d07be7deda1e85e73fe6dbb42b09d20b3a14', 0.0123, 0, 'Pending'),
(2, '0x2B2E666e1D211e22a1Ca8a66147da16Fd6C0fc9E', 1, 100, 'USDT', '0x38cf54af596b7179c1219030d9d3d07be7deda1e85e73fe6dbb42b09d20b3a14', 111.5, 24, 'DUSD', '0x38cf54af596b7179c1219030d9d3d07be7deda1e85e73fe6dbb42b09d20b3a14', 111.5, 0, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bridge_transactions`
--
ALTER TABLE `bridge_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bridge_transactions`
--
ALTER TABLE `bridge_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
