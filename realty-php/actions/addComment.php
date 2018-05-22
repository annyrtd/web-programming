<html>
  <head>
    <meta charset="utf-8">
  </head>
  <body>
    <pre><?php print_r($_POST) ?></pre>
    <?php
      global $mysqli;
      $mysqli = new mysqli("localhost", "annyrtd", "", "yargrad");
      $query = "insert into clients (name, email, phone, comment) 
      values ('".$_POST['fio']."', '".$_POST['email']."', '".$_POST['phone']."', '".$_POST['comment']."')";
      echo $query;
      $mysqli->query("set names utf8;");
      if($mysqli->query($query))
        header('Location: ' . $_SERVER['HTTP_REFERER'] . '?added=true');
      else
        header('Location: ' . $_SERVER['HTTP_REFERER'] . '?added=false');
    ?>
  </body>
</html>