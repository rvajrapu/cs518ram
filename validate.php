<?php
  require_once("/includes/db_connection.php");
  require_once("/includes/functions.php");
  include("htmlheader.php");
?>

    <div class="container">

    <?php var_dump($_POST); 
    
    
		$username = trim($_POST["username"]);
		$password = trim($_POST["password"]);
		
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
					header("Location: http://localhost/Questra/basic.php?username=" . $username);
				}
				else {
					header("Location: http://localhost/Questra/index.php?error=Invalidpassword");
				} 

			} else {
				header("Location: http://localhost/Questra/index.php?username=" . $username);
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
