<?php 

//подключаемся к базе данных
require_once 'include/db.php';

echo "<h1 class='h1'>Страница с результатами</h1>";

if(isset($_POST['otprav'])){
	$name = trim(empty($_REQUEST['firstname'])) ? "" : $_POST['firstname'];
	$surname = trim(empty($_REQUEST['lastname'])) ? "" : $_POST['lastname'];
	$email = trim(empty($_REQUEST['email'])) ? "" : $_POST['email'];
	$gender = trim(empty($_REQUEST['gender'])) ? "" : $_POST['gender'];
	$age = trim(empty($_REQUEST['course'])) ? "" : $_POST['course'];
	$txt = trim(empty($_REQUEST['contact_list'])) ? "" : $_POST['contact_list'];
	$chbx = trim(empty($_REQUEST['level'])) ? "" : $_POST['level'];

	if (!empty($_POST['level']) && is_array($_POST['level'])) {
		$chbx = "[" . join(", ", $_POST['level']). "]\n";
	} 

	if ($_FILES && $_FILES["filename"]["error"]== UPLOAD_ERR_OK)
	{
		$file = "uploades/" . $_FILES["filename"]["name"];
		move_uploaded_file($_FILES["filename"]["tmp_name"], $file);
		echo "Файл загружен";
	}

	$to = "deniskrasheninnikov73@gmail.com"; //кому отправить письмо
	$subject = "Письмо"; //Тема письма
	$charset = "utf-8"; //кодировка
	$headerss ="Content-type: text/html; charset=$charset\r\n"; 
	$headerss.="MIME-Version: 1.0\r\n"; //технический заголовок письма
	$headerss.="Date: ".date('D, d M Y h:i:s O')."\r\n";
	$msg = "Имя: ".$_POST['firstname']."<br>"."Фамилия: ".$_POST['lastname']."<br>"."Пол: ".$_POST['gender']."<br>"."Возраст: ".$_POST['course']."<br>"; //текст сообщения для отправки
	$msg .= "Сообщение: ".$_POST['contact_list']."<br>"; 
	mail($to, $subject, $msg, $headerss); //собирает все введенные данные и отправляет их адресату
	print "<script>alert(\"Сообщение успешно отправлено!\");window.location = window.location.href</script>"; //сообщение об отправке сообщения

	// echo '<pre>';
	// echo 'Некоторая отладочная информация:';
	// echo "<br>";
	// print_r($_FILES);
	// print "</pre>";

	$sql = "INSERT INTO `contactform` (`firstname`, `lastname`, `email`, `gender`, `level`, `course`, `contact_list`, `filename`)
	VALUES ('$name', '$surname', '$email', '$gender', '$chbx', '$age', '$txt', '$file')";

	if ($conn->query($sql) === TRUE) {
	} else {
		echo "Ошибка: " . $sql . "<br>" . $conn->error;
	}
	header('location: http://'. $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF']);

}
// Поверка, есть ли GET запрос
if (isset($_GET['pageno'])) {
    // Если да то переменной $pageno присваиваем его
	$pageno = $_GET['pageno'];
} else { // Иначе
    // Присваиваем $pageno один
	$pageno = 1;
}

// Назначаем количество данных на одной странице
$size_page = 10;
if (isset($_GET['page']) && $_GET['page'] > 0) 
{
	$cur_page = $_GET['page'];
}
// Вычисляем с какого объекта начать выводить
$offset = ($pageno-1) * $size_page;

// SQL запрос для получения количества элементов
$count_sql = "SELECT COUNT(*) FROM `contactform`";
// Отправляем запрос для получения количества элементов
$result = mysqli_query($conn, $count_sql);
// Получаем результат
$total_rows = mysqli_fetch_array($result)[0];
// Вычисляем количество страниц
$total_pages = ceil($total_rows / $size_page);

// Создаём SQL запрос для получения данных
$sql = "SELECT * FROM `contactform` LIMIT $offset, $size_page";
// Отправляем SQL запрос
$res_data = mysqli_query($conn, $sql);
if ($result->num_rows > 0) {
	echo "<table class='table'>
	<tr>
	<th scope='col'>ID</th>
	<th scope='col'>Имя</th>
	<th scope='col'>Фамилия</th>
	<th scope='col'>E-mail</th>
	<th scope='col'>Уровень</th>
	<th scope='col'>Пол</th>
	<th scope='col'>Возраст</th>
	<th scope='col'>Сообщение</th>
	<th scope='col'>Файл</th>
	</tr>";
// Цикл для вывода строк
	while($row = mysqli_fetch_array($res_data)){
		echo "<tr>
		<td scope='row'>".$row["id"]."</td>
		<td scope='row'>".$row["firstname"]."</td> 
		<td scope='row'>".$row["lastname"]."</td>
		<td scope='row'>".$row["email"]."</td>
		<td scope='row'>".$row["level"]."</td>
		<td scope='row'>".$row["gender"]."</td>
		<td scope='row'>".$row["course"]."</td>
		<td scope='row'>".$row["contact_list"]."</td>
		<td scope='row'>".$row["filename"]."</td>
		</tr>";
	}
	echo "</table>";
} else {
	echo "0 results";
}
// Закрываем соединение с БД
mysqli_close($conn);

?>

<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ваши данные</title>
	<link rel="stylesheet" type="text/css" href="display_style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li><a href="?pageno=1">Первая</a></li>
			<li class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">
				<a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>">Предыдущая</a>
			</li>
			<li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">
				<a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>">Следующая</a>
			</li>
			<li><a href="?pageno=<?php echo $total_pages; ?>">Последняя</a></li>
		</ul>
	</nav>
</body>
</html>