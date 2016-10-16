<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
?>

    <div class="container">

    <?php $obj = $_POST['myData'];

    $a_id = $obj["a_id"];
    $q_id = $obj["q_id"];
    $uid = $_SESSION["uid"];
    //error_log("\nInside best answer" . $a_id , 3, "C:/xampp/apache/logs/error.log");

    if (update_answer($a_id,$q_id,$uid)){

        echo 'ok';

    }
    
    
    
    
    
   

    
    ?>  

    </div> <!-- /container -->

    <!-- Custom styles for this page -->
    <link href="css/signin.css" rel="stylesheet">
   


<?php
// 4. Release returned data
    mysqli_free_result($result);
    require_once("footer.php");
?> 

    


