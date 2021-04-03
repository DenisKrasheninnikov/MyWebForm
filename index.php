<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<title>Contact Us</title>
</head>
<body>
	<form action="display.php" name="myForm" method="GET" enctype="multipart/form-data">
		<h1 class="h1">Связаться с нами</h1>
		<div class="form-item>">
			<div class="form-group">
				<input type="text" class="form-control" name="firstname" onfocus="this.value=''" placeholder="Имя" required>
			</div>

			<div class="form-group">
				<input type="text" class="form-control" name="lastname" onfocus="this.value=''" placeholder="Фамилия" required>
			</div>

			<div class="form-group">
				<input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" onfocus="this.value=''" placeholder="E-mail" required>
			</div>
		</div>

		
		<p>Ваш уровень:</p>
		<input type="checkbox" class="form-check-input custom-checkbox" id="v1" name="level[]" value="basic">
		<label class="form-check-label" for="v1">Базовый</label>
		<br>
		
		<input type="checkbox" class="form-check-input custom-checkbox" id="v2" name="level[]" value="advanced">
		<label class="form-check-label" for="v2">Продвинутый</label>
		<br>

		<input type="checkbox" class="form-check-input custom-checkbox" id="v3" name="level[]" value="professional">
		<label class="form-check-label" for="v3">Профессиональный</label>
		<br><br>

		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label class="input-group-text" name="course" for="inputGroupSelect01">Возраст</label>
			</div>
			<select class="custom-select" name="course" id="inputGroupSelect01" required>
				<option selected>Выберите...</option>
				<option value="до 18 лет">Молодой</option>
				<option value="от 18 до 45 лет">В самом расцвете сил</option>
				<option value="после 45 лет">Пожилой</option>
			</select>
		</div>

		<div class="input-group">
			<div class="form_toggle input-group-prepend">
				<div class="form_toggle-item item-1">
					<input id="fid-1" type="radio" name="gender" value="Мужской" required>
					<label for="fid-1" class="form-control">Мужской</label>
				</div>
				<div class="form_toggle-item item-2">
					<input id="fid-2" type="radio" name="gender" value="Женский" required>
					<label for="fid-2" class="form-control">Женский</label>
				</div>
			</div>
		</div>
		<br>

		<div class="form-group">
			<textarea name="contact_list" class="form-control" onfocus="this.value=''" placeholder="Введите текст" required></textarea>
		</div>

		<button type="submit" class="btn btn-primary btn-lg btn-block" name="otprav">Отправить</button>
	</form>
</body>
<script type="text/javascript">
	function uploadFile(target) {
		document.getElementById("file-name").innerHTML = target.files[0].name;
	}
</script>
</html>