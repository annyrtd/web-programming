<?php
  $mysqli = new mysqli("localhost", "annyrtd", "", "yargrad");
  $query = "select * from flats
            where flats.id = '".$_REQUEST['id']."'";
  $result = $mysqli->query($query);
  echo json_encode($result->fetch_all(MYSQLI_ASSOC));
?>