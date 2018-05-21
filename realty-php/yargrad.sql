-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 21 2018 г., 20:39
-- Версия сервера: 5.5.57-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `yargrad`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `comment` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `comment`) VALUES
(1, 'Ivan Ivanov', 'ivan@mail.ru', '1234', 'question'),
(2, 'Petr Petrov', 'petr@mail.ru', '12334', 'When do you work?'),
(3, 'Smirnov Sergey', 'serg@mail.ru', '', 'Love your site!');

-- --------------------------------------------------------

--
-- Структура таблицы `flats`
--

CREATE TABLE IF NOT EXISTS `flats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(150) NOT NULL,
  `house` int(11) NOT NULL,
  `flat` int(11) NOT NULL,
  `area` float NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `numOfFloors` int(11) DEFAULT NULL,
  `numOfRooms` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `imageLink` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `flats`
--

INSERT INTO `flats` (`id`, `street`, `house`, `flat`, `area`, `floor`, `numOfFloors`, `numOfRooms`, `description`, `imageLink`) VALUES
(1, 'Lenina', 1, 2, 34.5, 6, 7, 2, 'New flat, separate bathroom and toilet, furniture will stay in rooms and in the kitchen', 'http://www.book-a-flat.com/images/paris-salon-2.jpg'),
(2, 'Kirova', 23, 32, 55.9, 1, 3, 3, 'Flat in the city center, very comfortable location, it is suitable for big family with kids', 'https://www.topdom.ru/gallery/flats/97/1-l.jpg'),
(3, 'Leningradsky prospect', 55, 65, 32.5, 3, 5, 1, 'There''s a single-room appartement on sale, in perfect conditions, with modern design, plastic windows', 'https://12.img.avito.st/640x480/3562363612.jpg'),
(4, 'Voinova', 1, 45, 49.5, 4, 4, 2, 'Perfect double-room flat, rooms have separate halls, big kitchen, balcony, and very pleasant neighbours. In the nearest area there are a kindergarden, hospital, school, etc.', 'https://44.img.avito.st/640x480/3497700244.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
