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
	<form action="display.php" method="GET" enctype="multipart/form-data">
		<h1 class="h1">Связаться с нами</h1>
		<div class="form-item>">
			<div class="form-group">
				<input type="text" class="form-control" name="firstname" placeholder="Имя" required>
			</div>

			<div class="form-group">
				<input type="text" class="form-control" name="lastname" placeholder="Фамилия" required>
			</div>

			<div class="form-group">
				<input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="E-mail" required>
			</div>
		</div>

		<div>
			<p>Ваш уровень:</p>
			<input type="checkbox" class="custom-checkbox" id="v1" name="chbx[]" value="basic">
			<label for="v1">Базовый</label>
			<br>
			<input type="checkbox" class="custom-checkbox" id="v2" name="chbx[]" value="advanced">
			<label for="v2">Продвинутый</label>
			<br>
			<input type="checkbox" class="custom-checkbox" id="v3" name="chbx[]" value="professional">
			<label for="v3">Профессиональный</label>
		</div>

		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label class="input-group-text" for="inputGroupSelect01">Возраст</label>
			</div>
			<select class="custom-select" name="course" id="inputGroupSelect01" required>
				<option selected>Выберите...</option>
				<option value="1">Молодой</option>
				<option value="2">В самом расцвете сил</option>
				<option value="3">Пожилой</option>
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

		<div class="custom-file inputfile-box form-group">
			<input type="file" name="userfile" class="custom-file-input inputfile" id="inputGroupFile02" onchange='uploadFile(this)' required>
			<label class="custom-file-label" for="inputGroupFile02">Загрузить файл</label>
		</div>
		<br><br>

		<div class="form-group">
			<textarea name="contact_list" class="form-control" placeholder="Введите текст" required></textarea>
		</div>

		<button type="submit" class="btn btn-primary btn-lg btn-block" name="otprav">Отправить</button>
		<button type="reset" class="btn btn-secondary btn-lg btn-block" name="res">Очистить</button>
	</form>
</body>
<script type="text/javascript">
	function uploadFile(target) {
		document.getElementById("file-name").innerHTML = target.files[0].name;
	}
</script>
</html>