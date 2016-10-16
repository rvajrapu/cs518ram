<?php
  include("./includes/session.php");
  include("./htmlheader.php");
  include("./includes/functions.php");
  include("/includes/nav.php");   
?>
    <div  id="errormsg" role="alert">
       <?php echo message(); ?>
    </div>
    <br><br><br><br><br>
    <div class="container">
    <img src="pics/Logomakr_6AwGmn.png" class="center-block" alt="Questra Community" width="200" height="169">
      <form class="form-signin" id="signin" method ="post" action="validate.php">
        <!-- <h2 class="form-signin-heading">  Sign into Questra</h2> -->
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
  include("./footer.php");
?>
