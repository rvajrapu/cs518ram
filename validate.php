<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
?>

    <div class="container">

    <?php  
    
    
		$username = trim($_POST["username"]);
		$password = trim($_POST["password"]);
		$result_uid = find_uid($username);
		$subject = find_user($username);
	?>
    <?php
        // 3. Use returned data (if any)
        
        
          // output data from each row
      		if ($subject) {
				// successful login
				$userpwd = find_pwd($username);
				if ($userpwd["pass_code"] == $password) {
					$_SESSION["uid"] = (int)$result_uid["u_id"];
					$_SESSION["username"] = $username;
					redirect_to("post_question.php");
				}
				else {
					$_SESSION["message"] = "Invalid Password";
					redirect_to("index.php");
				} 

			} else {
				$_SESSION["message"] = "User is not registered";
        //error_log("Inside Validate\n" . $subject , 3, "C:/xampp/apache/logs/error.log");
				redirect_to("index.php");
			}
        
      ?>
    </div> <!-- /container -->
      <?php
      // 4. Release returned data
      mysqli_free_result($result);
    ?>

    <!-- Custom styles for this page -->
    <link href="css/signin.css" rel="stylesheet">


<?php
  require_once("footer.php");
?>
