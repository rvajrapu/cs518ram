<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");
?>
<link href="css/pagination.css" rel="stylesheet">
<script src="js/bootstrap-switch.js"></script>

<div class="container">
<div  id="errormsg" role="alert">
       <?php echo message(); ?>
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
		$user_id= $_SESSION["uid"];
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

    $result = get_allquestions_admin($user_id,$offset, $rec_limit);
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
            <span>
            <a class='btn btn-primary' href='update_question.php?q_id=".$question_id."' >Edit</a>";
            
            if ($row["ACTIVE"] == "TRUE"){
            echo "<input type='checkbox' value = ".$question_id." name='delete-checkbox' data-on-text='Delete' data-off-text='Add' checked>"; 
            } else {
            echo "<input type='checkbox' value = ".$question_id." name='delete-checkbox' data-on-text='Delete' data-off-text='Add' >";  
            };
            if ($row["STATE"] == "TRUE"){
            echo "<input type='checkbox' value = ".$question_id." name='freeze-checkbox' data-on-text='Freeze' data-off-text='Unfreeze' checked>"; 
            } else {
            echo "<input type='checkbox' value = ".$question_id." name='freeze-checkbox' data-on-text='Freeze' data-off-text='Unfreeze' >";  
            };

      echo "</span>
			      <div class='col-xs-6 col-md-3'>
				        <p></p>
				        <div style='background-color:#e0eaf1;width: 80%;'>
                        <img src='userimages/" . $row["user_image"] . "' width='55' height='55' style='float: left;padding: 0 0px 0 0;margin: 0 6% 0 0;'>     
                        <div>Posted on: <a>" . $row["Q_CREATED_ON"] . "</a><br>Posted by: <a>" . $row["FIRST_NAME"] . "</a></div>
                        <div><i class='fa fa-certificate' aria-hidden='true'> " . $row["SCORE"] . " </i></div>
                        <p></p></div>
				  </div>	

			  </div> <hr/>";
		}


              $page_name = 'Admin.php';
              $query_name = 'get_questions';     
              $p1_name = 'uid';
              $p1_value = $user_id;

              $cnt = get_row_count($query_name,$p1_name,$p1_value);
              //echo $cnt;
              echo generate_pagination_buttons($rec_limit,$cnt,$page,$page_name,$p1_name,$p1_value);

  ?>
	</div>
    <div role="tabpanel" class="tab-pane" id="myans">
    <div class="row">
<?php  
      $user_result = find_alluserdetails();
      while($user_row = mysqli_fetch_assoc($user_result)) 
    {
      $first_name = $user_row["first_name"];
      $score = $user_row["SCORE"];
      //$q_id = $user_row["q_id"];
      ?>
  
    <div class="col-md-3" style="background-color: #fff;border: 1px solid #ddd;border-radius: 1.25rem;padding: 5px 5px 5px 5px;">
      <a href="#" class="thumbnail">
        <img src="userimages/<?php echo $user_row["user_image"]; ?>" style="width: 200px; height: 200px;" alt="...">
      </a>
      <p><?php echo $first_name; ?></p><p>SCORE:<?php echo $score; ?></p>
      </div>
  
    <!-- <?php echo $first_name; ?> -->
    <!-- <?php echo $score; ?> -->
    <?php }?>
  </div></div></div>

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