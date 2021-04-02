<?php
$servername = "localhost"; //Имя или адрес сервера
$username = "root"; //Имя пользователя БД
$password = ""; //Пароль пользователя
$dbname = "formbase"; //Имя БД

// Создать подключение
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Проверка подключения
if (!$conn) {
  die("Ошибка подключения: " . mysqli_connect_error());
}
?>