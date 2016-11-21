<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");
?>
<link href="css/pagination.css" rel="stylesheet">
<?php
    if(!isset($_SESSION['uid'])) {
      redirect_to('index.php');
    }
    if(!isset($_GET['uid'])) {
      redirect_to('index.php');
    }

    $result_user = find_userdetails($_GET['uid']);

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
        <?php if($_GET['uid'] == $_SESSION['uid']) { ?> <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal2">Edit Details</button> <?php } ?>
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

<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10 well">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#myhome" aria-controls="home" role="tab" data-toggle="tab">My Questions</a></li>
    <li role="presentation"><a href="#myans" aria-controls="profile" role="tab" data-toggle="tab">My Answered Questions</a></li>

  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="myhome">
		<p></p>

 		<?php
		$user_id= $_GET['uid'];
    $page = '';
    $rec_limit = 5;
    if( isset($_GET{'page'} ) ) {
        $page = $_GET{'page'};
        $offset = $rec_limit * $page ;
        }
    else {
         $page = 0;
         $offset = 0;
         }                     

    $result = get_questions($user_id,$offset, $rec_limit);
		while($row = mysqli_fetch_assoc($result))	
		{
			$question_id = $row["Q_ID"];

		echo "<div class='row'>

				  <div class='col-xs-6 col-md-3'> 
			           <button type='button' class='btn btn-sm' border-color: #eeeeee;> " . $row["UP_VOTE"] . "<br>" . "Votes" . " </button> 
			           <button type='button' class='btn btn-sm' style='background-color:rgba(127, 230, 161, 0.77);border-color: #eeeeee;' >" . $row["ANSWERS_COUNT"] . "<br>" . "Answers" . " </button> 
			           <button type='button' class='btn btn-sm' border-color: #eeeeee;>" . $row["VIEWS"] . "<br>" . "Views" . " </button> 
		          </div>


			      <div class='col-xs-12 col-md-6'> 
			           <div> 
			               <a href='view_question.php?q_id=".$question_id."'>" . verify_output($row["Q_TITLE"]) . "</a> 
			           </div> 
			           <br>  
			           <button type='button' class='btn btn-sm' style='background-color:#d6ecff;'>" . $row["Q_TAG"] . " </button> 
			      </div>


			      <div class='col-xs-6 col-md-3'>
				        <p></p>
				        <div style='background-color:#e0eaf1;width: 80%;'>
                        <img src='userimages/" . $row["user_image"] . "' width='35' height='40' style='float: left;padding: 0 0px 0 0;margin: 0 6% 0 0;'>
                        <div>Posted on: <a>" . $row["Q_CREATED_ON"] . "</a><br>Posted by: <a>" . $row["FIRST_NAME"] . "</a></div>
                        <p></p></div>
				  </div>	

			  </div> <hr/>";
		}


              $page_name = 'myprofile.php';
              $query_name = 'get_questions';     
              $p1_name = 'uid';
              $p1_value = $user_id;

              $cnt = get_row_count($query_name,$p1_name,$p1_value);
              //echo $cnt;
              echo generate_pagination_buttons($rec_limit,$cnt,$page,$page_name,$p1_name,$p1_value);

  ?>
	</div>
    <div role="tabpanel" class="tab-pane" id="myans">Coming Soon..</div>
  </div>

</div>
<div class="col-sm-1"></div>

</div>



    <!-- Custom styles for this page -->
    <link href="css/postquestion.css" rel="stylesheet">
    <script src="js/validations.js"></script>


<?php
// 4. Release returned data

  	require_once("footer.php");
?>