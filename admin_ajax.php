<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  //include("./htmlheader.php");
$obj = $_POST['myData'];
$check = $_POST['param'];

$state = $obj["state"];
$q_id = $obj["q_id"];


if ($check == "freeze"){
	update_state($q_id,$state);
  }


?>