<?php
  require_once("/includes/session.php");
  require_once("/includes/functions.php");
  include("htmlheader.php");
  include("/includes/nav.php");
?>

    <div class="container">

    <div class="bs-example" data-example-id="basic-forms"> 
      <form class="form-horizontal" action="#">

      <div class="form-group">
        <label for="Title">Title</label>
        <input type="text" class="form-control" placeholder="Enter Title" autofocus>
      </div>
      <div class="form-group">
        <label for="Question">Enter Question</label>
        <div class="summernote">
           
        </div>
      
      </div>
      <div class="form-group">
        <label for="Title">Tags</label>
        <select class="form-control">
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

<?php
  require_once("footer.php");
?>
