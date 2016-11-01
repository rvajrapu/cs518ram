<?php
  include("./includes/db_connection.php");
  include("./includes/session.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");
?>
<?php confirm_logged_in(); ?>

    <div class="container">
    <br><br>

    <div  id="errormsg" role="alert">
       <?php echo message(); ?>
    </div>

    <div class="bs-example" data-example-id="basic-forms"> 
      <form class="form-horizontal" action="#" method ="post" id="postquestion" name = "myform">
      <div class="form-group">
        <label for="Title">Title</label>
        <input type="text" class="form-control" placeholder="Enter Title" id="questiontitle" name="questiontitle" autofocus>
        <p class='help-block'></p>
      </div>
      <div class="form-group">
        <label for="Question">Enter Question</label>
        <input type="hidden" name="forid" id="textedit" />
        <!--The text editor goes here -->  
        <div class="summernote">
         
        </div>
        <p class='help-block'></p>
      </div>
      <div class="form-group">
        <label for="Title">Tags</label>
        <select class="form-control" name="questiontag">
          <option>Science</option>
          <option>Mathematics</option>
          <option>Politics</option>
          <option>Social</option>
          <option>Other</option>
        </select>
      </div>
      <button type="submit" class="btn btn-primary">Submit Question</button>  
      </form>  
      </div>
    </div> <!-- /container -->
    <script>
    $(document).ready(function() {
        $('.summernote').summernote({
          height: 200,                 // set editor height
        });
    });
  </script>
  <!-- Custom styles for this page -->
  <link href="css/postquestion.css" rel="stylesheet">
  <link href="libs/summernote/summernote.css" rel="stylesheet">
  <script src="libs/summernote/summernote.js"></script>
  <script src="js/validations.js"></script>

<?php
  require_once("footer.php");
?>

