<?php
  
  require_once("/includes/session.php");
  require_once("htmlheader.php");
  echo 'hello'; exit;
?>
    <div  id="errormsg" role="alert">
       <?php echo message(); ?>
    </div>
    <div class="container">

      <form class="form-signin" id="signin" method ="post" action="validate.php">
        <h2 class="form-signin-heading">Please sign in</h2>
        <div class="form-group">
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="Email address" name ="username" autofocus />
        <p class='help-block'></p>
        </div>
        <div class="form-group">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" />
        <p class='help-block'></p>
        </div>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->

    <!-- Custom styles for this page -->
    <link href="css/signin.css" rel="stylesheet">
    <script src="js/validations.js"></script>


<?php
  require_once("footer.php");
?>
