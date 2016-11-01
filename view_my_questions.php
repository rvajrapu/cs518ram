<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");  
?>
<?php confirm_logged_in(); ?>
<div class="container-fluid">
  <p></p>
  <div class="row">

  	<div class="col-sm-1"> </div>

    <div class="col-sm-10" style="background-color:#fff;";">    
   		
    		<div class="col-sm-12"> 
    			
    			<?php 
    			$user_id= $_SESSION["uid"];
                                 
                        $result = get_questions($user_id);

				?>

				<p></p>
  				<ul class="nav nav-tabs">
  				<p></p>
  				<br>
    				<li class="active"><a href="#"><h4><b>View My Questions</b></h4></a></li>
    				<!--<li><a href="#">Un-Answered</a></li>-->
  				</ul>
  				<p></p>
  				<br>

  				<div class="col-sm-12" >
					<div>

						<p></p>


						<div>
		 		 		<?php
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
		  				?>
		  				</div>



		  			</div>
				</div>
    		</div>
    	
    </div>


    <div class="col-sm-1" "> 


    </div>

    

  </div>
</div>

    <!-- Custom styles for this page -->
    <link href="css/signin.css" rel="stylesheet">

<?php
  require_once("footer.php");
?>