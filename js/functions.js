 
  // It has the name attribute "signin"
function validateEmail(email,id) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  if(!re.test(email)){
  	$( '#'+id ).siblings('.help-block').html("Invalid Email");
  	return false;
  }
  else 
  	return true;
  //returns false for invalid email
}

function validate_min_lengths(field,minlength,id) {
  if(field.length >= minlength){
    return true;
  }
  else {
  	$( '#'+id ).siblings('.help-block').html("Less than "+minlength+" characters");
    return false;
  }
}
function checkpresence(a,id) {
	if (a.length == 0||a == null) {
		$( '#'+id ).siblings('.help-block').html("This field should not be left blank");
		return false
	}
	else {
		return true;
  }
}

  function post_question(formdata){

    $.ajax({
        url: 'post_question_ajax.php',
        type: 'post',
        data: {myData:formdata},
        success: function(data) {
            alert("Question Posted");
            location.reload();
          
        },
        error: function(xhr, desc, err) {
          console.log(xhr);
          console.log("Details: " + desc + "\nError:" + err);
        }
      }); // end ajax call
  }