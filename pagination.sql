-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 22-10-10 12:12
-- 서버 버전: 10.4.24-MariaDB
-- PHP 버전: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `pagination`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `employees`
--

CREATE TABLE `employees` (
  `Employee_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `employees`
--

INSERT INTO `employees` (`Employee_ID`, `Name`, `Email`, `Salary`) VALUES
(1, '조상호', 'cho@naver.com', 3000),
(2, '이민재', 'lee@naver.com', 2000),
(3, '지성현', 'jee@naver.com', 1500),
(4, '오성준', 'oh@naver.com', 4500),
(5, '김원준', 'kimwj@naver.com', 3900),
(6, '이성경', 'leesk@naver.com', 8000),
(7, '고재환', 'gojw@naver.com', 9200),
(8, '이재환', 'leejw@naver.com', 7400),
(9, '원종경', 'wonjk@naver.com', 3400),
(10, '김원효', 'kimwh@naver.com', 5900),
(11, '진종경', 'jinjk@naver.com', 9300),
(12, '임성호', 'limsh@naver.com', 8400);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `employees`
--
ALTER TABLE `employees`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
