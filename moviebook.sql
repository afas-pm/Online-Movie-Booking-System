-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 12:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_movie`
--

CREATE TABLE `add_movie` (
  `id` int(25) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `directer` varchar(100) NOT NULL,
  `release_date` varchar(100) NOT NULL,
  `categroy` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `you_tube_link` varchar(250) NOT NULL,
  `show` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `decription` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(10) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `show_from_date` date NOT NULL,
  `show_to_date` date NOT NULL,
  `book_to` int(3) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_movie`
--

INSERT INTO `add_movie` (`id`, `movie_name`, `directer`, `release_date`, `categroy`, `language`, `you_tube_link`, `show`, `action`, `decription`, `image`, `status`, `duration`, `show_from_date`, `show_to_date`, `book_to`) VALUES
(1, 'Avengers End Game', 'Anthony and Joe Russo', 'April 26, 2019', 'Scince', 'English', 'https://www.youtube.com/embed/hA6hldpSTF8', '21:00', 'running', 'In 2018, twenty-three days after Thanos erased half of all life in the universe,[a] Carol Danvers rescues Tony Stark and Nebula from deep space. They reunite with the remaining Avengers—Bruce Banner, Steve Rogers, Thor, Natasha Romanoff, and James Rhodes—and Rocket on Earth. ', 'aven.jpg', 1, '3h 1m', '2024-10-01', '2024-10-31', 5),
(2, 'Bramayugam', 'Rahul Sadasivan', '15 February 2024', 'Horror ', 'Malayalam', 'https://www.youtube.com/embed/sL35JEzGcRc', '21:15', 'running', 'In 17th century Malabar, Thevan and Koran escape the clutches of the Portuguese slave trade in Ponnani and flee to the east. At night, they camp at the banks of the Bharathappuzha River, but Koran is killed by a Yakshi. Thevan runs away, discovering an abandoned mana in the morning.', 'bramayugam.jpeg', 1, '2h 20m', '2024-10-01', '2024-10-31', 3),
(3, 'Raabta', 'Dinesh Vijan', 'June 7, 2017', 'Drama', 'Hindi', 'https://www.youtube.com/embed/YXjYfpqg8Z0', '15:00,18:15', 'running', '                                Shiv Kakkar is a banker from Amritsar who gets a lucrative opportunity to work in Budapest along with his childhood friend, Radha. He is a fun-loving playboy back home and continues this behaviour in Budapest. Saira Singh is a young woman haunted by mysterious nightma', 'Raabta.jpg', 1, '2h 27m', '2024-10-01', '2024-10-31', 3),
(4, 'Mohenjo Daro', 'Ashutosh Gowariker\r\n', '12 August 2016.', ' Historical', 'Hindi', 'https://www.youtube.com/embed/UPZ5FKEB02I', '18:00,15:15', 'running', 'The film opens in 2016 BCE with Sarman (Hrithik Roshan), a young man from the village of Amri, who lost his parents at a young age. Sarman kills a crocodile that has been terrorizing his village\'s fishermen and is hailed as a hero. He asks his uncle, Durjan (Nitish Bharadwaj),', 'uuu.jpg', 1, '2h 35m', '2024-10-01', '2024-10-31', 3),
(5, 'Playing With Fire ', 'Andrea Sedlackova', '6 November 2019', 'Comedy', 'English', 'https://www.youtube.com/embed/fd5GlZUpfaM', '', 'upcoming', 'Playing with Fire is a 2019 American family comedy film directed by Andy Fickman from a screenplay by Dan Ewen and Matt Lieberman based on a story by Ewen. The film stars John Cena, Keegan-Michael Key, John Leguizamo, Dennis Haysbert, Brianna Hildebrand and Judy Greer,', 'movieposter_en.jpg', 1, '0', '2024-10-01', '2024-10-31', 3),
(6, 'The Dark Knight', 'Christopher Nolan', '18 july 2008', 'Action', 'English', 'https://www.youtube.com/embed/LDG9bisJEaI', '', 'upcoming', 'A gang of masked criminals rob a mafia-owned bank in Gotham City, betraying and killing each other until the sole survivor, the Joker, reveals himself as the mastermind and escapes with the money. The vigilante Batman, district attorney Harvey Dent, and police lieutenant Jim Gordon ally to eliminate', 'The Dark Night.jpg', 1, '0', '2024-10-01', '2024-10-31', 3),
(7, 'The Tomorrow War', 'Chris McKay', '30 june 2021', 'Biographical War', 'English', 'https://www.youtube.com/embed/QPistcpGB8o', '', 'upcoming', 'In December 2022, biology teacher and former Green Beret Dan Forester fails to land a job at a prestigious research center. While he watches the 2022 FIFA World Cup final, soldiers from the year 2051, through a time portal, arrive to warn that humanity is on the brink of extinction ', 'the tomorrow war.jpeg', 1, '0', '2024-10-01', '2024-10-31', 3),
(8, 'Deadpool & Wolverine', 'Shawn Levy', '26 july 2024', 'Action', 'English', 'https://www.youtube.com/embed/73_1biulkYk', '', 'upcoming', 'In 2018, Wade Wilson uses Cable\'s time-traveling device to travel from his timeline, Earth-10005,[a] to Earth-616, the \"Sacred Timeline\", where he meets Happy Hogan and requests to join the Avengers, but he is rejected.Six years later, Wilson has retired from being the masked mercenary known as Dead', 'D&V.jpg', 1, '0', '2024-10-01', '2024-10-31', 3),
(9, 'Venom The Last Dance', 'Kelly Marcel', '25 oct 2024', 'Scince', 'English', 'https://www.youtube.com/embed/__2bjWbetsA', '', 'upcoming', 'Venom: The Last Dance is an upcoming American superhero film featuring the Marvel Comics character Venom. The sequel to Venom (2018) and Venom: Let There Be Carnage (2021) and the fifth film in Sony\'s Spider-Man Universe (SSU), it was written and directed by Kelly Marcel. Tom Hardy stars as Eddie Br', 'Venom.jpeg', 1, '0', '2024-10-01', '2024-10-31', 3);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'afas ', 'afas@gmail.com', 'admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `booked_seats`
--

CREATE TABLE `booked_seats` (
  `id` int(11) NOT NULL,
  `seat` varchar(10) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `show_time` time NOT NULL,
  `booking_date` date NOT NULL,
  `status` enum('available','booked') NOT NULL DEFAULT 'available',
  `show_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked_seats`
--

INSERT INTO `booked_seats` (`id`, `seat`, `movie`, `show_time`, `booking_date`, `status`, `show_date`) VALUES
(1, 'S1', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(2, 'S2', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(3, 'S3', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(4, 'P4', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(5, 'S4', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(6, 'S14', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(7, 'S6', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(8, 'S7', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(9, 'S8', 'Bramayugam', '21:15:00', '2024-09-26', 'available', '2024-10-05'),
(10, 'S4', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(11, 'S6', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(12, 'S7', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(13, 'S8', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(14, 'S7', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(15, 'S8', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(16, 'S4', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(17, 'G4', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(18, 'S4', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(19, 'G4', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(20, 'S12', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(21, 'G2', 'Raabta', '15:00:00', '2024-09-28', 'available', '2024-10-05'),
(22, 'S5', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(23, 'S6', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(24, 'S1', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(25, 'S2', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(26, 'S3', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(27, 'S7', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(28, 'S8', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(29, 'G33', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(30, 'P3', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(31, 'G36', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(32, 'P6', 'Bramayugam', '21:15:00', '2024-09-28', 'available', '2024-10-05'),
(33, 'S4', 'Bramayugam', '21:15:00', '2024-09-29', 'available', '2024-10-05'),
(34, 'G34', 'Bramayugam', '21:15:00', '2024-09-29', 'available', '2024-10-05'),
(35, 'P5', 'Bramayugam', '21:15:00', '2024-09-29', 'available', '2024-10-05'),
(36, 'P6', 'Bramayugam', '21:15:00', '2024-09-29', 'available', '2024-10-05'),
(37, 'S5', 'Mohenjo Daro', '18:00:00', '2024-10-04', 'available', '2024-10-05'),
(38, 'S15', 'Mohenjo Daro', '18:00:00', '2024-10-04', 'available', '2024-10-05'),
(39, 'S16', 'Mohenjo Daro', '18:00:00', '2024-10-04', 'available', '2024-10-05'),
(40, 'S6', 'Mohenjo Daro', '18:00:00', '2024-10-04', 'available', '2024-10-05'),
(41, 'S7', 'Mohenjo Daro', '18:00:00', '2024-10-04', 'available', '2024-10-05'),
(42, 'S9', 'Bramayugam', '21:15:00', '2024-10-05', 'available', '2024-10-05'),
(43, 'P9', 'Bramayugam', '21:15:00', '2024-10-05', 'available', '2024-10-05'),
(44, 'P10', 'Bramayugam', '21:15:00', '2024-10-05', 'available', '2024-10-05'),
(45, 'G1', 'Avengers End Game', '21:00:00', '2024-10-05', 'available', '2024-10-05'),
(46, 'G2', 'Avengers End Game', '21:00:00', '2024-10-05', 'available', '2024-10-05'),
(47, 'P9', 'Raabta', '18:15:00', '2024-10-05', 'available', '2024-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `show_time` varchar(100) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `totalseat` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `payment_date` varchar(100) NOT NULL,
  `booking_date` varchar(100) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `card_number` varchar(25) NOT NULL,
  `ex_date` varchar(100) NOT NULL,
  `cvv` int(5) NOT NULL,
  `custemer_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `uid`, `movie`, `show_time`, `seat`, `totalseat`, `price`, `payment_date`, `booking_date`, `card_name`, `card_number`, `ex_date`, `cvv`, `custemer_id`) VALUES
(1, 1, 'Avengers End Game', '21:00', 'B4,B5,B6', '3', '450', 'Wed-07-24 ', '2024-10-05', 'afas', '4456732', '2026-06-10', 4466, 1107586363),
(2, 1, 'Raabta', '15:00', 'A5,A6', '2', '600', 'Wed-07-24 ', '2024-10-05', 'afas', '4432167', '2026-02-12', 6677, 2015146187),
(3, 1, 'Bramayugam', '21:15', 'A5,A6,A7,A8', '4', '1200', 'Wed-07-24 ', '2024-10-05', 'afas', '4456723', '2026-02-10', 6655, 1401621087),
(4, 2, 'Mohenjo Daro', '18:00', 'C7,C8,B7,B8', '4', '600', 'Wed-07-24 ', '2024-10-05', 'afas', '667543', '2025-06-10', 7776, 750315874),
(5, 2, 'Bramayugam', '21:15', 'A5,A6,A7,A8,A9', '5', '1500', 'Wed-07-24 ', '2024-10-05', 'rahul', '443321', '2027-06-15', 6655, 1787465287),
(6, 2, 'Mohenjo Daro', '15:15', 'E7,E8,D7,D8,C7,C8', '6', '900', 'Wed-07-24 ', '2024-10-05', 'rahul', '7776543', '2026-11-11', 890, 1144979429),
(7, 4, 'Bramayugam', '21:15', 'A6', '1', '300', 'Wed-08-24 ', '2024-10-05', 'joffin', '7745612', '2027-10-12', 644, 906413863),
(8, 2, 'Mohenjo Daro', '15:15', 'A4,A5,A6', '3', '900', 'Wed-08-24 ', '2024-10-05', 'rahul', '7765488', '2027-10-21', 6654, 80645987),
(9, 1, 'Bramayugam', '21:15', 'I7,I8', '2', '200', 'Wed-09-24 ', '2024-10-05', 'Afas Mohamed', '53113323', '2024-09-05', 312, 1433080580),
(10, 1, 'Raabta', '15:00', 'D9,C10,A9', '3', '600', 'Sat-09-24 ', '2024-10-05', 'Afas Mohamed', '76666637678', '2024-09-26', 543, 881766118),
(11, 1, 'Bramayugam', '21:15', 'I7,I8,B7,A7,A8', '5', '950', 'Sat-09-24 ', '2024-10-05', 'Afas Mohamed', '242445753653', '2024-09-04', 321, 849353123),
(12, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:08:27', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1319006983),
(13, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:08:34', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 642336976),
(14, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:08:35', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1758419770),
(15, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:09:37', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 69596802),
(16, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:09:37', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1128125357),
(17, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:08', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1831116574),
(18, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:08', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1618889972),
(19, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:09', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1548964299),
(20, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:10', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 235702286),
(21, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:10', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 584441481),
(22, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:10', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 53583454),
(23, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:11', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1129906224),
(24, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:11', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 981842135),
(25, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:11', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1048915846),
(26, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:11', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1320717013),
(27, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:11', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1257709612),
(28, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:11', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 847756602),
(29, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:11', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 440855308),
(30, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:12', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1807531345),
(31, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:12', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1505219971),
(32, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:12', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 1908544736),
(33, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:13', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 105892345),
(34, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:11:13', '2024-10-06', 'rahul', '4242424242424242', '2026-07-09', 321, 863338952),
(35, 2, 'Bramayugam', '21:15', 'A1,A2', '2', '600', '2024-10-06 17:12:38', '2024-10-06', 'Afas Mohamed', '4242424242424242', '2027-11-18', 543, 1460030533),
(36, 1, 'Bramayugam', '21:15', 'A10', '1', '300', '2024-10-06 17:14:43', '2024-10-08', 'Afas Mohamed', '4242424242424242', '2027-11-17', 654, 700109833),
(37, 1, 'Raabta', '15:00', 'A12', '1', '300', '2024-10-06 17:43:37', '2024-10-08', 'Afas Mohamed', '4242424242424242', '2027-11-20', 432, 785375086),
(38, 1, 'Avengers End Game', '21:00', 'H7', '1', '100', '2024-10-06 18:36:15', '2024-10-09', 'Afas Mohamed', '5656565656565656', '2027-11-17', 642, 1396574164),
(39, 1, 'Bramayugam', '21:15', 'B11', '1', '150', '2024-10-06 18:55:33', '2024-10-06', 'Afas Mohamed', '4242424242424242', '2028-11-15', 432, 685912389),
(40, 1, 'Bramayugam', '21:15', 'I12', '1', '100', '2024-10-06 19:40:27', '2024-10-08', 'Afas Mohamed', '9898989898989898', '2026-11-20', 654, 1538855662),
(41, 1, 'Avengers End Game', '21:00', 'A6', '1', '300', '2024-10-06 20:29:57', '2024-10-09', 'Afas Mohamed', '6464646464646464', '2027-10-12', 765, 340729440),
(42, 1, 'Mohenjo Daro', '15:15', 'A7', '1', '300', '2024-10-06 20:36:54', '2024-10-08', 'Afas Mohamed', '7575757575757575', '2027-07-01', 974, 1885581814),
(43, 1, 'Bramayugam', '21:15', 'G1', '1', '100', '2024-10-06 20:58:24', '2024-10-06', 'Afas Mohamed', '3232323232323232', '2027-11-16', 543, 1405820567),
(44, 1, 'Mohenjo Daro', '18:00', 'B3', '1', '150', '2024-10-06 20:59:43', '2024-10-07', 'Afas Mohamed', '6565656565656565', '2024-10-25', 543, 1769136327),
(45, 1, 'Bramayugam', '21:15', 'D9', '1', '150', '2024-10-07 03:15:19', '2024-10-07', 'Afas Mohamed', '4343434343434343', '2027-11-18', 432, 1461191720),
(46, 1, 'Avengers End Game', '21:00', 'B6', '1', '150', '2024-10-07 03:26:49', '2024-10-10', 'Afas Mohamed', '8787878787878787', '2026-10-20', 765, 1877147872),
(47, 1, 'Avengers End Game', '21:00', 'B11', '1', '150', '2024-10-07 09:11:44', '2024-10-09', 'Afas Mohamed', '7676767676767676', '2026-11-25', 654, 842015492),
(48, 1, 'Raabta', '18:15', 'C11', '1', '150', '2024-10-07 09:13:59', '2024-10-07', 'Afas Mohamed', '656565656565656565', '2024-10-26', 432, 109228297),
(49, 1, 'Mohenjo Daro', '15:15', 'B11', '1', '150', '2024-10-07 09:16:15', '2024-10-07', 'Afas Mohamed', '323232323232323232', '2024-10-17', 321, 1614656036),
(50, 1, 'Mohenjo Daro', '15:15', 'B11', '1', '150', '2024-10-07 09:16:18', '2024-10-07', 'Afas Mohamed', '323232323232323232', '2024-10-17', 321, 1456845572),
(51, 1, 'Mohenjo Daro', '15:15', 'B11', '1', '150', '2024-10-07 09:16:19', '2024-10-07', 'Afas Mohamed', '323232323232323232', '2024-10-17', 321, 1278373228),
(52, 1, 'Mohenjo Daro', '15:15', 'B11', '1', '150', '2024-10-07 09:16:27', '2024-10-07', 'Afas Mohamed', '323232323232323232', '2024-10-17', 321, 1736415565),
(53, 1, 'Mohenjo Daro', '15:15', 'B11', '1', '150', '2024-10-07 09:17:22', '2024-10-07', 'Afas Mohamed', '323232323232323232', '2024-10-17', 321, 1793609255),
(54, 1, 'Avengers End Game', '21:00', 'B10', '1', '150', '2024-10-07 09:18:25', '2024-10-07', 'Afas Mohamed', '3232323232323232', '2024-10-25', 432, 345980564),
(55, 1, 'Bramayugam', '21:15', 'F11', '1', '150', '2024-10-07 09:20:17', '2024-10-07', 'Afas Mohamed', '4242424242424242', '2027-11-18', 321, 1459455496),
(56, 1, 'Avengers End Game', '21:00', 'D11', '1', '150', '2024-10-07 09:21:50', '2024-10-07', 'Afas Mohamed', '5454545454545454', '2026-03-04', 321, 1083693323),
(57, 1, 'Avengers End Game', '21:00', 'A11', '1', '300', '2024-10-07 09:23:33', '2024-10-11', 'Afas Mohamed', '5454545454545454', '2027-11-17', 432, 179535205),
(58, 1, 'Bramayugam', '21:15', 'A3', '1', '300', '2024-10-07 09:25:31', '2024-10-08', 'Afas Mohamed', '7676767676767676', '2027-07-14', 432, 742377004),
(59, 1, 'Avengers End Game', '21:00', 'A12', '1', '300', '2024-10-08 14:41:48', '2024-10-08', 'Afas Mohamed', '7676767676767676', '2027-07-08', 432, 853589938),
(60, 1, 'Raabta', '15:00', 'A10,A11', '2', '600', '2024-10-08 17:23:52', '2024-10-08', 'Afas Mohamed', '9898989898989898', '2027-11-17', 432, 1710754991),
(61, 1, 'Avengers End Game', '21:00', 'A12', '1', '300', '2024-10-09 03:18:22', '2024-10-10', 'Afas Mohamed', '5454545454545454', '2027-07-10', 765, 333644803),
(62, 1, 'Mohenjo Daro', '15:15', 'A12', '1', '300', '2024-10-09 05:51:10', '2024-10-10', 'Afas Mohamed', '4343434343434343', '2027-07-08', 432, 2028119075),
(63, 1, 'Avengers End Game', '21:00', 'A12', '1', '300', '2024-10-09 06:25:25', '2024-10-11', 'Afas Mohamed', '4343434343434343', '2027-10-07', 432, 1066090599),
(64, 1, 'Bramayugam', '21:15', 'A12', '1', '300', '2024-10-10 05:33:52', '2024-10-12', 'Afas Mohamed', '4343434343434343', '2027-07-15', 321, 650496040),
(65, 1, 'Bramayugam', '21:15', 'A11', '1', '300', '2024-10-10 11:54:19', '2024-10-12', 'Afas Mohamed', '6565656565656565', '2027-11-30', 987, 1468501878),
(66, 1, 'Mohenjo Daro', '15:15', 'A11', '1', '300', '2024-10-10 19:59:49', '2024-10-11', 'Afas Mohamed', '6565656565656565', '2027-07-10', 654, 1891609383);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `massage` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `massage`) VALUES
(1, 'afas', 'afas@gmail.com', 'bramayugam was a thriller movie with an immercive experience');

-- --------------------------------------------------------

--
-- Table structure for table `theater_show`
--

CREATE TABLE `theater_show` (
  `id` int(25) NOT NULL,
  `show` varchar(100) NOT NULL,
  `theater` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theater_show`
--

INSERT INTO `theater_show` (`id`, `show`, `theater`) VALUES
(1, '21:00', '1'),
(2, '15:00', '1'),
(3, '18:00', '1'),
(4, '18:15', '2'),
(5, '15:15', '2'),
(6, '21:15', '2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `password` varchar(12) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `city`, `password`, `image`) VALUES
(1, 'afas  ', 'pachuafasmohamed@gmail.com', '2147483647', 'kodungallur', 'afas@1234', ''),
(2, 'rahul', 'pachuafasmohamed@gmail.com', '2147483647', 'thrissur', 'rahul@1234', ''),
(3, 'adarsh', 'adarsh@gmail.com', '2147483647', 'kannur', 'adarsh@123', ''),
(4, 'joffin', 'joffin@gmail.com', '2147483647', 'irinjalakuda', 'joffin@123', ''),
(5, 'angel', 'angel@gmail.com', '2147483647', 'thrissur', 'angel@123', ''),
(9, 'Arshad', 'kmarshad@gmail.com', '9995072202', 'Ekm', 'Admin@123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_movie`
--
ALTER TABLE `add_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `booked_seats`
--
ALTER TABLE `booked_seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theater_show`
--
ALTER TABLE `theater_show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_movie`
--
ALTER TABLE `add_movie`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booked_seats`
--
ALTER TABLE `booked_seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `theater_show`
--
ALTER TABLE `theater_show`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
