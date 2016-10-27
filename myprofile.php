<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");
?>
<?php
    if(!isset($_SESSION['uid'])) {
      redirect_to('index.php');
    }

    $result_user = find_userdetails($_SESSION['uid']);

   if(isset($_POST['updatedetails']))
    {
    $email = $_POST['email'];// user email
      
    $imgFile = $_FILES['user_image']['name'];
    $tmp_dir = $_FILES['user_image']['tmp_name'];
    $imgSize = $_FILES['user_image']['size'];
          
    if($imgFile)
    {
      $upload_dir = 'userimages/'; // upload directory 
      $imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION)); // get image extension
      $valid_extensions = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions
      $userpic = rand(1000,1000000).".".$imgExt;
      if(in_array($imgExt, $valid_extensions))
      {     
        if($imgSize < 5000000)
        {
          unlink($upload_dir.$result_user['user_image']);
          move_uploaded_file($tmp_dir,$upload_dir.$userpic);
        }
        else
        {
          $_SESSION["message"] = "Sorry, your file is too large it should be less then 5MB";
        }
      }
      else
      {
        $_SESSION["message"] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";    
      } 
    }
    else
    {
      // if no image selected the old image remain as it is.
      $userpic = $result_user['user_image']; // old image from database
    }

    if(!isset($_SESSION["message"]))
    {
      update_user($_SESSION['uid'],$email,$userpic);
      redirect_to("myprofile.php");
    }
  }
?>

<div class="container">
<div  id="errormsg" role="alert">
       <?php echo message(); ?>
    </div>
<center>
    <div class="span3 well">
        
        <div class="row">
        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12"></div>
        <div class="col-lg-5 col-md-4 col-sm-6 col-xs-12">
        <div class="hovereffect">
          <img src="userimages/<?php echo $result_user['user_image']; ?>" name="aboutme" width="175" height="175" class="img-circle">
          <div class="overlay">
             <a class="info" href="#aboutModal" data-toggle="modal" data-target="#myModal">Click here</a>
          </div>
        </div>
        </div>
        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
        <h3><?php echo $result_user['user_id']; ?></h3>
        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal2">Edit Details</button>
        </div>
        
        </div>
        
    </div>
    </center>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title" id="myModalLabel">More About <?php echo $result_user['user_id']; ?></h4>
                    </div>
                <div class="modal-body">
                    <center>
                    <img src="userimages/<?php echo $result_user['user_image']; ?>" name="aboutme" width="140" height="140" border="0" class="img-circle"></a>
                    <h3 class="media-heading"><?php echo $result_user['user_id']; ?></h3>
                    <span><strong>Tags: </strong></span>
                        <span class="label label-warning">HTML5/CSS</span>
                        <span class="label label-info">PHP</span>
                        <span class="label label-info">MySQL</span>
                        <span class="label label-success">Linux Redhat</span>
                    </center>
                    <hr>
                    <center>
                    <p class="text-left"><strong>Email: </strong><br>
                        <?php echo $result_user['email']; ?></p>
                    <br>
                    </center>
                </div>
                <div class="modal-footer">
                    <center>
                    <button type="button" class="btn btn-default" data-dismiss="modal">I'm done</button>
                    </center>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2Label" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title" id="myModalLabel">More About <?php echo $result_user['user_id']; ?></h4>
                    </div>
                <div class="modal-body">
                  
                  <form method="post" enctype="multipart/form-data" class="form-horizontal">
                    <div class="form-group">
                      <label for="Title">Email</label>
                      <input type="text" class="form-control" placeholder="Enter Email" id="newemail" name="email" value = "<?php echo $result_user['email']; ?>" />
                      <p class='help-block'></p>
                    </div>
                    <div class="form-group">
                      <label for="Title">Avatar</label>
                      <p><img src="userimages/<?php echo $result_user['user_image']; ?>" height="150" width="150" /></p>
                      <input class="input-group" type="file" name="user_image" accept="image/*" /></td>
                      <p class='help-block'></p>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary" name="updatedetails">Questra!</button>
                    </div>
                    </div>
                  </form>
                  
                </div>
                <div class="modal-footer">
                    <center>
                    <button type="button" class="btn btn-default" data-dismiss="modal">I'm not ready</button>
                    </center>
                </div>
            </div>
        </div>
    </div>
</div>
          


    <!-- Custom styles for this page -->
    <link href="css/postquestion.css" rel="stylesheet">
    <script src="js/validations.js"></script>


<?php
// 4. Release returned data

  	require_once("footer.php");
?>