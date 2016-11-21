<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");    
?>
<link href="css/view_question.css" rel="stylesheet">
<link href="css/postquestion.css" rel="stylesheet">
<link href="css/pagination.css" rel="stylesheet">



    <div class="container-fluid">
      <div  id="errormsg" role="alert">
       <?php echo message(); ?>
      </div>
        <p></p>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10" style="background-color:#fff;">
                <div class="col-sm-12">
                    <div class="col-sm-12">
                        <?php 

                        if (!isset($_GET["q_id"])){
                          redirect_to('index.php');
                        }
                        $page = '';
                        $rec_limit = 3;

                        if( isset($_GET{'page'} ) ) {
                                $page = $_GET{'page'};

                                $offset = $rec_limit * $page ;
                        }
                        else {
                                $page = 0;
                                $offset = 0;
                        }


                        $ques_id = trim($_GET["q_id"]);                    
                        $result_1 = get_result_1($ques_id,$offset, $rec_limit);
                        //echo $result_1;
                        $result_2 = get_result_2($ques_id);
                        ?>
                        <p></p>
                        <div class = 'row'>

                            <?php        
                                    $row_2 = mysqli_fetch_assoc($result_2);
                                                                             
                                    echo "<h2>".verify_output($row_2['Q_TITLE'])."</h2>";
                                    echo "<hr>";

                            ?>

                        </div>

                        <div class="col-sm-12">
                            <div class = "row">
                                <p></p>
                                <div class="col-sm-1" >                                

                               <?php
                               $v_type = 'Q';
                               echo user_votes($ques_id,$v_type);
                               ?>

                                </div>

                                <div class="col-sm-10" >
                                    <?php

                                    echo verify_output($row_2["Q_TEXT"]);
                                    echo "<p></p>";

                                    ?>

                                </div>

                                <div class="row">
                                  <div class="col-sm-3"> </div>
                                  <div class="col-sm-5"> </div>
                                  <div class="col-sm-3"  style="background-color:#e0eaf1;">
                                      <p></p>
                                      <div style='background-color:#e0eaf1;width: 80%;'>
                                      <img src='userimages/<?php echo $row_2["user_image"] ?>' width='55' height='55' style='float: left;padding: 0 0px 0 0;margin: 0 6% 0 0;'>
                                      <div>Posted on: <a><?php echo $row_2["CREATION_DATE"] ?></a><br>Posted by: <a href='myprofile.php?uid=<?php echo $row_2["U_ID"] ?>'><?php echo $row_2["FIRST_NAME"] ?></a>
                                      <div><i class='fa fa-certificate' aria-hidden='true'> <?php echo $row_2["SCORE"] ?></i></div></div>

                                      <!-- <div>Posted on: <a><?php echo $row_2["CREATION_DATE"] ?></a></div>
                                      <div>Posted by: <a><?php echo $row_2["FIRST_NAME"] ?></a></div> -->
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


                                    echo "<div class = 'row' >
                                          <div class='col-sm-1' id='votes'>";
                                                                        
                                    

                                    $v_type = 'A';
                                    echo user_votes($a_id,$v_type);                                    
                                                                             
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
                                          <div class="col-sm-5"> </div>
                                          <div class="col-sm-3"  style="background-color:#e0eaf1;">
                                              <p></p>
                                              <div style="background-color:#e0eaf1;width: 80%;">
<<<<<<< HEAD
                                              <img src="userimages/' . $row_1["user_image"] . '" width="55" height="55" style="float: left;padding: 0 0px 0 0;margin: 0 6% 0 0;">
=======
                                              <img src="userimages/' . $row_1["user_image"] . '" width="35" height="40" style="float: left;padding: 0 0px 0 0;margin: 0 6% 0 0;"/>
>>>>>>> bc6de21cdfb341026d45aa477909eaa96bd8e495
                                              <div>Ans on: <a>' . $row_1["CREATION_DATE"] . '</a><br>Ans by: <a href = "myprofile.php?uid='.$row_1['U_ID'].'">' . $row_1["FIRST_NAME"] . '</a></div>
                                              </div>
                                              <div><i class="fa fa-certificate" aria-hidden="true"> ' . $row_1["SCORE"] . ' </i></div>
                                              <p></p>
                                          </div>
                                          <div class="col-sm-1"> </div>
                                        </div>';

                                    echo "<hr/>";                            

                                    }

              $page_name = 'view_question.php';
              $query_name = 'get_result_1';
              $p1_name = 'q_id';
              $p1_value = $ques_id;
              $cnt = get_row_count($query_name,$p1_name,$p1_value);
    
              echo generate_pagination_buttons($rec_limit,$cnt,$page,$page_name,$p1_name,$p1_value);

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
            <div class="col-sm-1"></div>

        </div>
    </div>

<script>
    $(document).ready(function() {
        $('.summernote').summernote({
          height: 200,                 // set editor height
        });
    });

</script>


<link href="libs/summernote/summernote.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">

<script src="libs/summernote/summernote.js"> </script> 
<script src="js/validations.js"></script>   

<?php
      require_once("footer.php");
?>
