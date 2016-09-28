var error = [];
$( "#signin" ).submit(function( event ) {

  if ((!checkpresence(this[0].value,"inputEmail"))
    ||(!checkpresence(this[1].value,"inputPassword"))||(!validate_min_lengths(this[1].value,5,"inputPassword"))){

    return false;
  }
  else{
    return true;
  } 
  });

