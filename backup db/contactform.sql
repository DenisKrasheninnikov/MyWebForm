-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 05 2021 г., 13:13
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `formbase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contactform`
--

CREATE TABLE `contactform` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `level` tinytext NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course` text NOT NULL,
  `contact_list` text NOT NULL,
  `filename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contactform`
--

INSERT INTO `contactform` (`id`, `firstname`, `lastname`, `email`, `level`, `gender`, `course`, `contact_list`, `filename`) VALUES
(1, 'Иван', 'Иванов', 'ivtest@mail.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Здесь могла бы быть Ваша реклама', ''),
(2, 'Иван', 'Иванов', 'ivtest@mail.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Здесь могла бы быть Ваша реклама', ''),
(3, 'Иван', 'Иванов', 'ivtest@mail.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Здесь могла бы быть Ваша реклама', ''),
(4, 'Иван', 'Иванов', 'ivtest@mail.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Здесь могла бы быть Ваша реклама', ''),
(5, 'Денис', 'Крашенинников', 'test@gmail.com', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'Просто какой-то текст', ''),
(6, 'Денис', 'Крашенинников', 'test@gmail.com', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'Просто какой-то текст', ''),
(7, 'Денис', 'Крашенинников', 'test@gmail.com', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'Просто какой-то текст', ''),
(8, 'Денис', 'Крашенинников', 'test@gmail.com', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'Просто какой-то текст', ''),
(9, 'Денис', 'Крашенинников', 'test@gmail.com', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'Просто какой-то текст', ''),
(10, 'Денис', 'Крашенинников', 'test@gmail.com', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'Просто какой-то текст', ''),
(11, 'Денис', 'Крашенинников', 'test@gmail.com', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'Просто какой-то текст', ''),
(12, 'Серго', 'Матвеев', 'test01@gmail.com', '[basic, advanced, professional]\n', 'Мужской', 'после 45 лет', 'Просто еще один какой-то текст', ''),
(13, 'Серго', 'Матвеев', 'test01@gmail.com', '[basic, advanced, professional]\n', 'Мужской', 'после 45 лет', 'Просто еще один какой-то текст', ''),
(14, 'Алекс', 'Безбородов', 'alex@mail.ru', '[advanced]\n', 'Мужской', 'от 18 до 45 лет', 'Текст от Алекса', ''),
(15, 'Анна', 'Леонидова', 'testan@mail.com', '[basic]\n', 'Женский', 'до 18 лет', 'Мой текст', ''),
(16, 'Дарья', 'Крашенинников', 'dar@mail.ru', '[basic]\n', 'Женский', 'до 18 лет', 'Текст', ''),
(17, 'Илья', 'Федоров', 'ilf@yandex.ru', '[professional]\n', 'Мужской', 'от 18 до 45 лет', 'текст', ''),
(18, 'Денис', 'Крашенинников', 'deniskrasheninnikov73@gmail.com', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'Текст', ''),
(19, 'Иосиф', 'Сталин', 'ussr@yandex.ru', '[basic, advanced, professional]\n', 'Мужской', 'от 18 до 45 лет', 'За Родину!', ''),
(20, 'Денис', 'Крашенинников', 'deniskrasheninnikov@gmail.com', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Текст', ''),
(21, 'Дмитрий', 'Иванов', 'dm@mail.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'test', ''),
(22, 'Дмитрий', 'Иванов', 'dm@mail.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'test', ''),
(23, 'Дмитрий', 'Иванов', 'dm@mail.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'test', ''),
(24, 'Андрей', 'Филимонов', 'fil@yandex.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'текст', ''),
(25, 'Денис', 'Крашенинников', 'kra5h@mail.ru', '[basic]\n', 'Мужской', 'до 18 лет', 'text', ''),
(26, 'Денис', 'Крашенинников', 'kra5h@mail.ru', '[basic]\n', 'Мужской', 'до 18 лет', 'text', ''),
(27, 'Денис', 'Крашенинников', 'kra5h@mail.ru', '[basic]\n', 'Мужской', 'до 18 лет', 'text', ''),
(28, 'Игорь ', 'Смирнов', 'mir@mail.ru', '[basic, professional]\n', 'Мужской', 'до 18 лет', 'text', ''),
(29, 'Игорь ', 'Смирнов', 'mir@mail.ru', '[basic, professional]\n', 'Мужской', 'до 18 лет', 'text', ''),
(30, 'Денис', 'Крашенинников', 'kra5h@mail.ru', '[basic]\n', 'Мужской', 'до 18 лет', 'текст', ''),
(31, 'Денис', 'Крашенинников', 'kra5h@mail.ru', '[basic]\n', 'Мужской', 'до 18 лет', 'текст', ''),
(32, 'Анжелла', 'Ибрагимова', 'land@mail.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Текст', ''),
(33, 'Анжелла', 'Ибрагимова', 'land@mail.ru', '[basic, advanced]\n', 'Женский', 'до 18 лет', 'Текст', ''),
(34, 'Анжелла', 'Ибрагимова', 'land@mail.ru', '[basic, advanced]\n', 'Женский', 'до 18 лет', 'Текст', ''),
(35, 'Анжелла', 'Ибрагимова', 'land@mail.ru', '[basic, advanced]\n', 'Женский', 'до 18 лет', 'Текст', ''),
(36, 'Анжелла', 'Ибрагимова', 'land@mail.ru', '[basic, advanced]\n', 'Женский', 'до 18 лет', 'Текст', ''),
(37, 'Глеб ', 'Глебов', 'gleb@yandex.ru', '[professional]\n', 'Мужской', 'от 18 до 45 лет', 'Еще один текст', ''),
(38, 'Денис', 'Иванов', 'afsdfa@mail.ru', '[basic, advanced]\n', 'Мужской', 'после 45 лет', 'ilokujhygdjbfvcdsxaukmjynhbgrvfecd', ''),
(39, 'Денис', 'Иванов', 'afsdfa@mail.ru', '[basic, advanced]\n', 'Мужской', 'после 45 лет', 'ilokujhygdjbfvcdsxaukmjynhbgrvfecd', ''),
(40, 'Владимир', 'Иоанов', 'ioan@mail.ru', '[basic, advanced]\n', 'Мужской', 'после 45 лет', 'Просто текст', ''),
(41, 'Денис', 'Крашенинников', 'deniskrasheninnikov73@gmail.com', '[basic]\n', 'Мужской', 'до 18 лет', 'text', ''),
(42, '', '', '', '[basic, advanced]\n', '', '', '', ''),
(43, 'Иван', 'Иванов', 'test@yandex.ru', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'тест', ''),
(44, 'Петр', 'Петров', 'test2@mail.ru', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'text', 'uploades/хостинг.txt'),
(45, 'Денис', 'Крашенииников', 'kra5h@mail.ru', '[basic, professional]\n', 'Мужской', 'до 18 лет', 'Тут должен быть какой-то текст', 'uploades/Список функций для работы с массивами.txt'),
(46, 'Петр', 'Иванов', 'test03@mail.ru', '[basic, advanced, professional]\n', 'Мужской', 'до 18 лет', 'test', 'uploades/config apache.txt'),
(47, 'Денис', 'Крашенинников', 'test03@yandex.ru', '[basic]\n', 'Мужской', 'до 18 лет', 'тест', 'uploades/config apache.txt'),
(48, 'Денис', 'Крашенинников', 'test03@yandex.ru', '[basic]\n', 'Мужской', 'до 18 лет', 'тест', 'uploades/задачки.txt'),
(49, 'Денис', 'Крашенинников ', 'kra5h@mail.ru', '[basic, advanced]\n', 'Мужской', 'от 18 до 45 лет', 'текст', 'uploades/предопределенные константы.txt'),
(50, 'Илья ', 'Ильин', 'test@mail.ru', '[basic, advanced, professional]\n', 'Мужской', 'до 18 лет', 'текст', 'uploades/запросы sql.txt'),
(51, 'Матвей', 'Иванов', 'test01@mail.ru', '[basic, advanced]\n', 'Мужской', 'после 45 лет', 'текст', 'uploades/Список функций для работы с массивами.txt'),
(52, 'Денис', 'Крашенинников', 'kra5h@mail.ru', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'текст', 'uploades/Новый текстовый документ.txt'),
(53, 'Денис', 'Крашенинников', 'kra5h@mail.ru', '[basic]\n', 'Мужской', 'от 18 до 45 лет', 'текст', 'uploades/Новый текстовый документ.txt'),
(54, 'Иванна', 'Иванова', 'test@mail.com', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Какой то текст', 'uploades/запросы sql.txt'),
(55, 'Иванна', 'Иванова', 'test@mail.com', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Какой то текст', 'uploades/запросы sql.txt'),
(56, 'Иванна', 'Иванова', 'test@mail.com', '[basic, advanced]\n', 'Мужской', 'до 18 лет', 'Какой то текст', 'uploades/запросы sql.txt'),
(57, 'Инна', 'Игнатьева', 'test@mail.com', '[basic, professional]\n', 'Женский', 'до 18 лет', 'тест', 'uploades/хостинг.txt'),
(58, 'Инна', 'Игнатьева', 'test@mail.com', '[basic, professional]\n', 'Женский', 'до 18 лет', 'тест', 'uploades/хостинг.txt'),
(59, 'Инна', 'Игнатьева', 'test@mail.com', '[basic, professional]\n', 'Женский', 'до 18 лет', 'тест', 'uploades/хостинг.txt'),
(60, 'Инна', 'Игнатьева', 'test@mail.com', '[basic, professional]\n', 'Женский', 'до 18 лет', 'тест', 'uploades/хостинг.txt'),
(61, 'Инна', 'Игнатьева', 'test@mail.com', '[basic, professional]\n', 'Женский', 'до 18 лет', 'тест', 'uploades/хостинг.txt'),
(62, 'Дарья', 'Крашенинников', 'dar@mail.ru', '[basic]\n', 'Женский', 'до 18 лет', 'Еще один текст', 'uploades/предопределенные константы.txt'),
(63, 'Дарья', 'Крашенинников', 'dar@mail.ru', '[basic]\n', 'Женский', 'до 18 лет', 'Еще один текст', 'uploades/предопределенные константы.txt'),
(64, 'Дарья', 'Крашенинникова', 'dar@mail.ru', '[basic]\n', 'Женский', 'до 18 лет', 'Еще один текст', 'uploades/предопределенные константы.txt'),
(65, 'Денис', 'Крашенинников', 'kra5h@mail.ru', '[basic, professional]\n', 'Мужской', 'от 18 до 45 лет', 'тест', 'uploades/хостинг.txt');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contactform`
--
ALTER TABLE `contactform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
