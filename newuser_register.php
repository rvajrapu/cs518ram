<?php
  include("./includes/session.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");
?>

    <div class="container">

      <div class="panel-heading"><strong>New User Registeration</strong></div>
      <div class="bs-example" data-example-id="basic-forms">

      <form method="post" enctype="multipart/form-data" id="newuser" class="form-horizontal">

        <div class="form-group">
          <label for="Title">Username</label>
          <input type="text" class="form-control" placeholder="Enter Username" id="username" name="username" autofocus/>
          <p class='help-block'></p>
        </div>
        <div class="form-group">
          <label for="Title">Email</label>
          <input type="text" class="form-control" placeholder="Enter Email" id="newemail" name="email" />
          <p class='help-block'></p>
        </div>
        <div class="form-group">
          <label for="Title">Password</label>
          <input type="password" class="form-control" placeholder="Enter Password" id="newpassword" name="password" />
          <p class='help-block'></p>
        </div>
        <div class="form-group">
          <label for="Title">Retype Password</label>
          <input type="password" class="form-control" placeholder="Enter Password" id="duppassword" name="duppassword" />
          <p class='help-block'></p>
        </div>
        <div class="form-group">
          <label for="Title">Avatar</label>
          <input class="input-group" type="file" name="user_image" accept="image/*" /></td>
          <p class='help-block'></p>
        </div>
        <div class="form-group">
        <button type="submit" class="btn btn-primary">Questra!</button>
        </div>
      </form>
      </div>

    </div> <!-- /container -->


          


    <!-- Custom styles for this page -->
    <link href="css/postquestion.css" rel="stylesheet">
    <script src="js/validations.js"></script>


<?php
// 4. Release returned data

  	require_once("footer.php");
?>