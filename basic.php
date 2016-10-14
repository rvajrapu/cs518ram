<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
?>

    <div class="container">

    <?php var_dump($_SESSION); 
    $obj = $_POST['myData'];
    error_log("Inside basic\n" . $obj["questiontitle"] , 3, "C:/xampp/apache/logs/error.log");
    ?>  

    </div> <!-- /container -->

    <!-- Custom styles for this page -->
    <link href="css/signin.css" rel="stylesheet">


<?php
// 4. Release returned data
  	mysqli_free_result($result);
  	require_once("footer.php");
?>