<?php
  include("./includes/db_connection.php");
  include("./includes/session.php");
  include("./includes/functions.php");
  include("./htmlheader.php");
  include("./includes/nav.php");
?>

<html>
   
   <head>
      <title>Paging Using PHP</title>
   </head>
   
   <body>

   <link href="css/pagination.css" rel="stylesheet">
      <?php

         
         $rec_limit = 2;

         global $connection;
         
         
         /* Get total number of records */
         $sql = "SELECT count(u_id) FROM ptl_users ";
         $retval = mysqli_query( $connection, $sql );
         
         if(! $retval ) {
            die('Could not get data: ' . mysqli_error());
         }

         $row = mysqli_fetch_array( $retval,MYSQLI_NUM );
         $rec_count = $row[0];



         if( isset($_GET{'page'} ) ) {
            $page = $_GET{'page'};

            $offset = $rec_limit * $page ;
         }
         else {
            //echo "Intial Page";
            $page = 0;
            $offset = 0;
         }
         
         $left_rec = $rec_count - ($page * $rec_limit);


      $query  = "SELECT user_id, email, first_name, user_image ";
      $query .= "FROM ptl_users LIMIT $offset, $rec_limit";
            
         $retval = mysqli_query( $connection, $query );




         if(! $retval ) {
            die('Could not get data: ');
         }
         
         while($row = mysqli_fetch_array($retval,MYSQLI_ASSOC)) {
            echo "user_id :{$row['user_id']}  <br> ".
               "email : {$row['email']} <br> ".
               "first_name : {$row['first_name']} <br> ".
               "--------------------------------<br>";
         }


         $Buttons = ceil($rec_count / $rec_limit);

         echo "<div class='text-center'>";
         echo "<ul class='pagination'>";

         if ($page == ''){echo "<li><a class='active' href='Test.php'>Home</a></li>";}
         else {echo "<li><a href='Test.php'>HOME</a></li>";}
         
         for($i=1;$i<=($Buttons-1);$i++){
            if ($page==$i){
               echo "<li><a class='active' href='Test.php?page=".$i."'>".$i."</a></li>";}
            else {echo "<li><a href='Test.php?page=".$i."'>".$i."</a></li>";}            
         }
         echo "</ul>";
         echo "</div>";
         mysqli_close($connection);

      ?>

      
   </body>
</html>