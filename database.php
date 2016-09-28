<?php
  // 1. Create a database connection
  $dbhost = "localhost";
  $dbuser = "Admin";
  $dbpass = "Admin";
  $dbname = "question_forum";
  $connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
  // Test if connection succeeded
  if(mysqli_connect_errno()) {
    die("Database connection failed: " . 
         mysqli_connect_error() . 
         " (" . mysqli_connect_errno() . ")"
    );
  }
?>
<?php
	// 2. Perform database query
	$query  = "SELECT * ";
	$query .= "FROM questions ";
	$query .= "WHERE id = 1 ";
	$result = mysqli_query($connection, $query);
	// Test if there was a query error
	if (!$result) {
		die("Database query failed.");
	}
?>
<?php
  require_once("htmlheader.php");
?>

    <div class="container">

    <?php var_dump($_GET) ?>  
    	<?php
    		// 3. Use returned data (if any)
    		while($subject = mysqli_fetch_assoc($result)) {
    			// output data from each row
    	?>
    			<li><?php echo $subject["question"] . " (" . $subject["topic"] . ")"; ?></li>
      <?php
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
  // 5. Close database connection
  mysqli_close($connection);
?>
<?php
  require_once("footer.php");
?>
