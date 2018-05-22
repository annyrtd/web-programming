<!DOCTYPE html>
<html lang="ru">
	<head>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <title>ООО "Градъ", недвижимость г.Ярославля</title>
	  <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
	  <link rel="stylesheet" type="text/css" href="css/styles.css">
	</head>
	<body>
		<header class="page-header">
			<div class="page-header__top-section">
				<a class="page-header__logo" href="index.html">
					<div class="page-header__img-wrapper"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI7sTC5pEj-LmSYwZqPDzNuAJ2KEzZ_7fxpr1zNqS97Y_tvzojOw" height="72" alt="ООО Градъ"></div>
				</a>
				<div class="page-header__title">
					<img src="images/logo.png" alt="ООО Градъ">
				</div>
			</div>
			<nav class="main-nav">
			  <ul class="main-nav__menu">
				<li><a class="main-nav__menu-item" href="index.html">Главная</a></li>
				<li><a class="main-nav__menu-item main-nav__menu-item--active" href="catalog.php">Каталог</a></li>
				<li><a class="main-nav__menu-item" href="contacts.html">Контакты</a></li>
			  </ul>
			</nav>
		</header>
		<main class="page">
			<div class="page__catalog">
				<?php
				$mysqli = new mysqli("localhost", "annyrtd", "", "yargrad");
				$query = "select id, description, imageLink from flats limit 5";
				$mysqli->query("set names utf8;");
				$result = $mysqli->query($query);
				while($row = $result->fetch_array(MYSQLI_ASSOC)) {
				  echo "<div class='flat-card'>".
							"<div class='flat-card__image'>".
								"<img src='".$row["imageLink"]."'>".
							"</div>".
							"<div class='flat-card__content'>".
								"<div class='flat-card__text'>".$row["description"]."</div>".
								"<a href='description.html?flat=".$row["id"]."'>Подробнее...</a>".
							"</div>".
						"</div>";
				}
				?>			
			</div>
		</main>
		<footer class="page-footer"></footer>
	</body>
</html>