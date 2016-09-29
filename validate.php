<?php
  require_once("/includes/session.php");
  require_once("/includes/db_connection.php");
  require_once("/includes/functions.php");
  include("htmlheader.php");
?>

    <div class="container">

    <?php var_dump($_POST); 
    
    
		$username = trim($_POST["username"]);
		$password = trim($_POST["password"]);
		$result_uid = find_uid($username);
		$result = find_user($username);
	?>
    <?php
        // 3. Use returned data (if any)
        while($subject = mysqli_fetch_assoc($result)) {
          // output data from each row
      		if ($subject["user_id"] == $username) {
				// successful login
				$userpwd = find_pwd($username);
				if ($userpwd["pass_code"] == $password) {
					$_SESSION["uid"] = (int)$result_uid["u_id"];
					$_SESSION["username"] = $username;
					header("Location: http://localhost/Questra/post_question.php?username=" . $username);
				}
				else {
					$_SESSION["message"] = "Invalid Password";
					redirect_to("index.php");
				} 

			} else {
				$_SESSION["message"] = "User is not registered";
				redirect_to("index.php");
			}
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
