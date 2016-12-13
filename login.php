<?php
  include("./includes/session.php");
  include("./includes/functions.php");
  if(isset($_SESSION['uid'])) {
      redirect_to('index.php');
    }
  include("./htmlheader.php");
  
  include("./includes/nav.php");   
?>

<br><br><br>
    <div  id="errormsg" role="alert">
       <?php echo message(); ?>
    </div>
    <br><br>
    <div class="container">
    <img src="pics/Logomakr_6AwGmn.png" class="center-block" alt="Questra Community" width="150" height="126">
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
        <div class="g-recaptcha" data-sitekey="6Lf8Ag4UAAAAADLgLXhSsJWko6yUcNkuptqcwrVw"></div>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
    </div> <!-- /container -->
    <center> <p> <a href="https://github.com/login/oauth/authorize?scope=user:email&client_id=a5160dfe6fa2708500fd">Login with Github </a></p> </center>

    <!-- Custom styles for this page -->
    <link href="css/signin.css" rel="stylesheet">
    <script src="js/validations.js"></script>


<?php
  include("./footer.php");
?>
