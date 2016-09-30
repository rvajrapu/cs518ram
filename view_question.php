<?php
  require_once("/includes/session.php");
  require_once("/includes/functions.php");
  include("htmlheader.php");
  include("/includes/nav.php");
?>


    <div class="container-fluid">

        <p></p>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8" style="background-color:lavenderblush;">
                <div class="col-sm-12">
                    <div class="col-sm-12">
                        <?php 
                                            // Opening Database Connection  
                                            $dbhost = "localhost";
                                            $dbuser = "root";
                                            $dbpass = "";
                                            $dbname = "phpmyadmin";
                                            $connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
                                
                                            if(mysqli_connect_errno()){
                                            die("Database Connection failed: " . mysqli_connect_error() . " (" . mysqli_connect_errno() . ")");
                                            }

                                      // Need to Question ID Input from another page  ****************************************************************************        

                                            $query_1  = "SELECT Q_TITLE, Q_TEXT, Q_TAG, A_TEXT, UP_VOTE, DOWN_VOTE, BA_FLAG FROM PTL_QUESTIONS LEFT OUTER JOIN PTL_ANSWERS ON PTL_QUESTIONS.Q_ID = PTL_ANSWERS.Q_ID WHERE PTL_QUESTIONS.Q_ID = 1 ORDER BY PTL_ANSWERS.A_ID";
                                            $query_2  = "SELECT Q_TITLE, Q_TEXT, Q_TAG FROM PTL_QUESTIONS WHERE PTL_QUESTIONS.Q_ID = 1";
                                            $result_1 = mysqli_query($connection,$query_1);
                                            $result_2 = mysqli_query($connection,$query_2);
                                            if(!$result_1){die("Database query failed.");}
                                            if(!$result_2){die("Database query failed.");}
                         ?>
                        <p></p>
                        <div class = 'row'>

                            <?php        
                                          // Need to Question Title Input from another page  ****************************************************************************
                                          echo "<h2>How to Auto-Increment PK in MYSQL</h2>";
                                          echo "<hr>";

                            ?>

                        </div>

                        <div class="col-sm-12">
                            <div class = "row">
                                <p></p>
                                <div class="col-sm-1" >


                                  <!--<input type="text" name="quant[2]" class="form-control input-number" value="10" min="1" max="100">-->
                                  
                                      <button type="button" class="btn btn-success btn-number" data-type="plus" data-field="quant[2]">
                                          <span class="glyphicon glyphicon-plus"></span>
                                      </button>
                                  
                                      <p></p>

                                      <button type="button" class="btn btn-danger btn-number"  data-type="minus" data-field="quant[2]">
                                        <span class="glyphicon glyphicon-minus"></span>
                                      </button>

                                </div>

                                <div class="col-sm-10" >
                                    <?php

                                    $row_2 = mysqli_fetch_assoc($result_2);
                                    echo $row_2["Q_TEXT"];
                                    echo "<p></p>";

                                    ?>
                                </div>

                                <div class="col-sm-1" > </div>
                            </div>

                                <p></p>
                                <h3>Answer</h3>
                                <hr/>


                                    <?php

                                    while($row_1 = mysqli_fetch_assoc($result_1))
                                    {
                                    echo "<div class = 'row'>";
                                    echo "<div class='col-sm-1'>";
                                    echo "
                                              <button type='button' class='btn btn-success btn-number' data-type='plus' data-field='quant[2]'>
                                              <span class='glyphicon glyphicon-plus'></span>
                                              </button>
                                          
                                              <p></p>

                                              <button type='button' class='btn btn-danger btn-number'  data-type='minus' data-field='quant[2]'>
                                              <span class='glyphicon glyphicon-minus'></span>
                                              </button>
                                         ";
                                    echo "</div>";

                                    echo "<div class='col-sm-10'>";
                                   
                                    echo       $row_1["A_TEXT"] ;
                                
                                    echo "</div>";
                                    echo "</div>";
                                    echo "<hr/>";

                                    }
                                    ?>


                                    <p></p>
                                    <div class="row">                            
                                        <div class="col-sm-1">                                            

                                        </div>
                                        <div class="col-sm-10">
                                            <h3>Your Answer</h3>
                                            <div class="summernote">

                                            </div>
                                            <button type="submit" class="btn btn-primary">Submit Answer</button>  
                                        </div>
                                    </div>


                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-2"></div>
        </div>
    </div>

<script>
    $(document).ready(function() {
        $('.summernote').summernote({
          height: 200,                 // set editor height
        });
    });
</script>

<link href="css/postquestion.css" rel="stylesheet">
<link href="libs/summernote/summernote.css" rel="stylesheet">
<script src="libs/summernote/summernote.js"> </script>    


    <link href="css/signin.css" rel="stylesheet"><?php
      require_once("footer.php");
    ?>
</body>
</html>