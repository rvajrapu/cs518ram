  </body>
  <script src="js/functions.js"></script>
  <script src="js/bootstrap.js"></script>
  <link href="css/sticky-footer.css" rel="stylesheet">
  <link href="css/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">
  <footer class="footer">
      <div class="container">
        <p class="text-muted">Coming Soon...</p>
      </div>
   </footer>
</html>
<?php
  // 5. Close database connection
  if (isset($connection)) {
	  mysqli_close($connection);
	}
?>