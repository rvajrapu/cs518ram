<!DOCTYPE html>
<html lang="en">
 
  <head>
    <link href="./assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
  </head>
  <body>
 
    <div class="container">
      <input class="typeahead" type="text" data-provide="typeahead" autocomplete="off">

    </div>

    <script src="./assets/jquery/jquery-3.1.1.min.js"></script>
    <script src="./assets/bootstrap/js/bootstrap3-typeahead.js"></script>
 
    <script type="text/javascript">
      $(document).ready(function() {
        $('input.typeahead').typeahead({
          source: function (query, process) {
            $.ajax({
              url: 'data.php',
              type: 'POST',
              dataType: 'JSON',
              data: 'query=' + query,
              success: function(data) {
                console.log(data);
                process(data);
              }
            });
          }
        });
      });

      $(document).keyup(function(e) {
    if ($(".input:focus") && (e.keyCode === 13)) {
        alert('ya!')
        }
       });




    </script>
 
  </body>
</html>