<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <!--  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> -->
                <ul class="nav navbar-nav">
                        <li>
                        <a href="landing_page.php">Questra Community</a>
                        </li>
                        <li>                
                        <li>
                        <a href="index.php">About us</a>
                        </li>
                        <li>
                        <a href="index.php">Register</a>
                        </li>  
                        <li>
                        <a href="index.php">Tour</a>
                        </li>

                    <?php if(!logged_in()){ ?>
                        <li>
                        <a href="index.php">Sign In</a>
                        </li>
                    <?php } ?>
                    <?php if(logged_in()){ ?>
                        <li>
                        <a href="logout.php">Sign Out</a>
                        </li>
                    <?php } ?>
                    
                </ul>
           <!-- </div> -->
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
</nav>
<div class="page-header">
    <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-3">
            <a href="#" class="header-brand">
            <img src="pics/Logomakr_7FCfRF.png" alt="" width="421" height="62">
            </a>
        </div>
        <div class="col-sm-7 hidden-xs">
        <ul class="nav navbar-nav">
                    <li class="hidden active">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="landing_page.php">Questions</a>
                    </li>
                    <?php if(!logged_in()){ ?>
                    <li>
                        <a class="page-scroll" href="view_my_questions.php">My Questions</a>
                    </li>
                    <?php } ?>
                    <li>
                        <a class="page-scroll" href="post_question.php">Ask Question</a>
                    </li>
        </ul>
        </div>
        <div class="col-sm-1"></div>
    </div>    
</div>
    <!-- Custom styles for this page -->
    <link href="css/nav.css" rel="stylesheet">
