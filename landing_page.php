<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("/includes/nav.php");  
?>

<div class="container-fluid">
  <p></p>
  <div class="row">

  	<div class="col-sm-2"> </div>

    <div class="col-sm-8" style="background-color:#fff;";">    
   		 <div class="col-sm-12">
    		<div class="col-sm-12"> 
    			
    			<?php 
				// Opening Database Connection	
				$dbhost = "localhost";
				$dbuser = "root";
				$dbpass = "";
				$dbname = "question_forum";
				$connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
	
				if(mysqli_connect_errno()){
				die("Database Connection failed: " . mysqli_connect_error() . " (" . mysqli_connect_errno() . ")");
				}

				$query  = "SELECT PTL_QUESTIONS.UP_VOTE, COUNT(*) AS ANSWERS_COUNT, VIEWS, Q_TITLE, Q_TAG, PTL_QUESTIONS.Q_ID FROM PTL_QUESTIONS LEFT OUTER JOIN PTL_ANSWERS ON PTL_QUESTIONS.Q_ID = PTL_ANSWERS.Q_ID GROUP BY PTL_QUESTIONS.Q_ID";
				$result = mysqli_query($connection,$query);
				if(!$result){die("Database query failed.");}
				?>

				<p>
				</p>
  				<ul class="nav nav-tabs">
  				<p></p>
    				<li class="active"><a href="#">Top Questions</a></li>
    				<li><a href="#">Un-Answered</a></li>
  				</ul>
  				<p></p>

  				<div class="col-sm-12" >
					<div>

						<p></p>


						<div>
		 		 		<?php
		  				while($row = mysqli_fetch_assoc($result))	
		  				{
		  					$question_id = $row["Q_ID"];

						echo "<div class='row'>";

  						echo "<div class='col-xs-12 col-sm-6 col-md-8'> <div> <a href='view_question.php?q_id=".$question_id."'>" . $row["Q_TITLE"] . "</a> </div> <br>  <button type='button' class='btn btn-primary btn-xs'>" . $row["Q_TAG"] . " </button> </div>";
  						echo "<div class='col-xs-6 col-md-4'> 
					          <button type='button' class='btn btn-primary btn-sm'>" . $row["UP_VOTE"] . "<br>" . "Votes" . " </button> 
					          <button type='button' class='btn btn-primary btn-sm' style='background-color:#5fba7d;''>" . $row["ANSWERS_COUNT"] . "<br>" . "Answers" . " </button> 
					          <button type='button' class='btn btn-primary btn-sm'>" . $row["VIEWS"] . "<br>" . "Views" . " </button> </div>";

		 				echo "</div> <hr/>";
			  			}
		  				?>
		  				</div>



		  			</div>
				</div>
    		</div>
    	</div>
    </div>


    <div class="col-sm-2" "> 


    </div>

    <div class="col-sm-1"> </div>

  </div>
</div>




    <!-- Custom styles for this page -->
    <link href="css/signin.css" rel="stylesheet">

<?php
  require_once("footer.php");
?>