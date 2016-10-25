<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");    
?>


    <div class="container-fluid">

        <p></p>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8" style="background-color:#fff;">
                <div class="col-sm-12">
                    <div class="col-sm-12">
                        <?php 
                        if (!isset($_GET["q_id"])){
                          redirect_to('index.php');
                        }
                        $ques_id = trim($_GET["q_id"]);                    
                        $result_1 = get_result_1($ques_id);
                        $result_2 = get_result_2($ques_id);
                        ?>
                        <p></p>
                        <div class = 'row'>

                            <?php        
                                          // Need to Question Title Input from another page  ****************************************************************************
                                    $row_2 = mysqli_fetch_assoc($result_2);
                                                                             
                                    echo "<h2>".verify_output($row_2['Q_TITLE'])."</h2>";
                                    echo "<hr>";

                            ?>

                        </div>

                        <div class="col-sm-12">
                            <div class = "row">
                                <p></p>
                                <div class="col-sm-1" >
                                  
                                    <div class="vote chev">
                                        <div class="increment up"></div>
                                        <div class="increment down"></div>                                  
                                        <div class="count">0</div>
                                    </div>

                                </div>

                                <div class="col-sm-10" >
                                    <?php

                                  //  $row_2 = mysqli_fetch_assoc($result_2);
                                    echo verify_output($row_2["Q_TEXT"]);
                                    echo "<p></p>";

                                    ?>

                                </div>

                                <div class="row">
                                  <div class="col-sm-3"> </div>
                                  <div class="col-sm-6"> </div>
                                  <div class="col-sm-2"  style="background-color:#e0eaf1;">
                                      <p></p>
                                      <div>Posted on: <a><?php echo $row_2["CREATION_DATE"] ?></a></div>
                                      <div>Posted by: <a><?php echo $row_2["FIRST_NAME"] ?></a></div>
                                      <p></p>
                                  </div>
                                  <div class="col-sm-1"> </div>
                                </div>

                                <div class="col-sm-1" > </div>
                            </div>

                                <p></p>
                                <h3>Answer</h3>
                                <hr/>

                                    <?php

                                    while($row_1 = mysqli_fetch_assoc($result_1))
                                    {
                                    $a_id = $row_1["A_ID"];  
                                    //echo $a_id;
                                    $vote_row = get_ans_vote_count($a_id);                                    
                                    $vote_array = mysqli_fetch_assoc($vote_row);
                                    //echo $vote_array["V_COUNT"];

                                    echo "<div class = 'row' >
                                          <div class='col-sm-1' id='votes'>
                                    
                                    <div class='vote chev'>
                                        <div class='increment up'></div>
                                        <div class='increment down'></div>                                  
                                        <div class='count'>";
                                        if ($vote_array["V_COUNT"] != NULL) 
                                             {
                                             echo $vote_array["V_COUNT"]; 
                                             } 
                                        else {
                                             echo 0;
                                             } ;                                      
                                        echo "</div>
                                    </div>";
                                        
                                        echo "
                                          </div>

                                          <div class='col-sm-10' style='background-color:#eee;'> <br>" .
                                   
                                          verify_output($row_1["A_TEXT"]) .
                                
                                         " <br>
                                         <br>
                                            </div>       
                                          </div>
                                          <br>

                                          <div class='row'>
                                          <div class='col-sm-3'> 
                                          <p></p>";
                                    //echo $row_2["BA_ID"] . $row_2['U_ID'];
                                    echo best_answer($row_1["A_ID"],$row_2["BA_ID"],$row_2['U_ID'],$ques_id);
                                    echo  '</div>
                                          <div class="col-sm-6"> </div>
                                          <div class="col-sm-2"  style="background-color:#e0eaf1;">
                                              <p></p>
                                              <div>Ans on: <a>' . $row_1["CREATION_DATE"] . '</a></div>
                                              <div>Ans by: <a>' . $row_1["FIRST_NAME"] . '</a></div>
                                              <p></p>
                                          </div>
                                          <div class="col-sm-1"> </div>
                                        </div>';

                                    echo "<hr/>";

                                    }
                                    ?>

                                    <?php if(logged_in()){ ?>
                                    <p></p>
                                    <div class="row">                            
                                        <div class="col-sm-1">                                            

                                        </div>
                                        <div class="col-sm-10">
                                            <h3>Your Answer</h3>
                                            <form  action="#" method ="post" id="postanswer" name = "myform">
                                            <input type="hidden" name="forid" id="textedit" value= <?php echo $ques_id ?> />
                                            <div class="summernote">

                                            </div>
                                            <button type="submit" class="btn btn-primary"> Post Your Answer</button>
                                            <p class='help-block'></p>
                                            </form>  
                                        </div>
                                    </div>
                                    <p></p>
                                    <?php } ?>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-2"> </div>
        </div>
    </div>

<script>
    $(document).ready(function() {
        $('.summernote').summernote({
          height: 200,                 // set editor height
        });
    });

</script>

<link href="css/view_question.css" rel="stylesheet">
<link href="css/postquestion.css" rel="stylesheet">
<link href="libs/summernote/summernote.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">

<script src="libs/summernote/summernote.js"> </script> 
<script src="js/validations.js"></script>   

<?php
      require_once("footer.php");
?>
