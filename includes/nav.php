<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <!--  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> -->
                <ul class="nav navbar-nav">
              
                        <li>
                        <a href="index.php">Questra</a>
                        </li>         
                        <li>
                        <a href="index.php">About Us</a>
                        </li>                         

                    <?php if(!logged_in()){ ?>

                        <li>
                        <a href="#">Contact Us</a>
                        </li>                    
                        
                        <li>
                        <a href="newuser_register.php">Register</a>
                        </li>

                        <li>
                        <a href="login.php">Sign In</a>
                        </li>
                        <li>
                        <img src="pics/Logomakr_8qqzZC.png" width="35" height="40">
                        </li>                        

                    <?php } ?>

                    <?php 

                    if(logged_in()){ 
                    $userid= $_SESSION["uid"];
                    $uname = find_username($userid);
                    $row = mysqli_fetch_assoc($uname);
                    $user_name = $row["first_name"];
                    $result_user = find_userdetails($_SESSION['uid']);
                        ?>

                        <li>
                        <a href="#">Contact Us</a>
                        </li>                        
                        <li>
                        <a href="logout.php">Sign Out</a>
                        </li>
                        <li>
                        <img src="userimages/<?php echo $result_user['user_image']; ?>" width="35" height="40">
                        </li>
                        <li>
                        <a href="myprofile.php?uid=<?php echo $userid ?>"><?php echo $user_name ?></a>
                        </li>
                        </li>
                    <?php } ?>
                    
                </ul>
           <!-- </div> -->
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
</nav>
<br>
<div class="page-header">
    <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-3">
            <a href="index.php" class="header-brand">
            <img src="pics/Logomakr_7FCfRF.png" alt="" width="421" height="62">
            </a>
        </div>
        <div class="col-sm-7 hidden-xs">
        <ul class="nav navbar-nav">
                    <li class="hidden active">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="index.php">Trending</a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="view_my_questions.php">All Questions</a>
                    </li>
                                      
                    <li>
                        <a class="page-scroll" href="post_question.php">Ask Question</a>
                    </li>
        </ul>
        </div>
        <div class="col-sm-1"></div>
    </div>    
</div>
<br>
    <!-- Custom styles for this page -->
    <link href="css/nav.css" rel="stylesheet">
