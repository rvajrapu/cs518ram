  </body>
  <script src="js/functions.js"></script>
  <script src="js/bootstrap.js"></script>
  <link href="css/sticky-footer.css" rel="stylesheet">
  <link href="css/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">
  <footer class="footer" style="background-color: #222222"  >
      <div class="container"  >
        <p class="text-muted">        
                      <a href="landing_page.php">Home</a> | <a href="#">About us</a> | <a href="#">Contact us</a> | <a href="#">Feedback</a> | <a href="#">Policy & Terms</a> | <a href="landing_page.php">© 2016 Questra Community, Inc.</a>

        </p>
      </div>
   </footer>
</html>
<?php
  // 5. Close database connection
  if (isset($connection)) {
	  mysqli_close($connection);
	}
?>