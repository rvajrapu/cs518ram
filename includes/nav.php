<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                
                <a class="navbar-brand" href="#">
                    <img src="pics/Quest.png" alt="">
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
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
                    
                    <li>
                        <a href="#">Contact Us</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
</nav>
<div class="page-header">
    <div class="row">
        <div class="col-xs-6 col-md-3">
            <a href="#" class="header-brand">
            <img src="pics/Questra_Logo_4.png" alt="">
            </a>
        </div>
        <div class="col-sm-11 col-md-8 hidden-xs text-right">
        <ul class="nav navbar-nav navbar-right">
                    <li class="hidden active">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Questions</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">My Questions</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">Ask Question</a>
                    </li>
        </ul>
        </div>
    </div>    
</div>
    <!-- Custom styles for this page -->
    <link href="css/nav.css" rel="stylesheet">
