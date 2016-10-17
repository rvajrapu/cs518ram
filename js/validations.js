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

$( "#postquestion" ).submit(function( event ) {
	var formData = $("#postquestion").serializeObject();
	var temp_makrup = $('.summernote').summernote('code');
	var makrup = $('.note-editable.panel-body').text();
  makrup = $.trim(makrup);
	formData['question'] = temp_makrup;
	
  if ((!checkpresence(this[0].value,"questiontitle"))
    ||(!checkpresence(makrup,"textedit"))){

    return false;
  }
  else{
  	console.log("Form validated")
  	event.preventDefault();
    post_question(formData);
  }

  });

$.fn.serializeObject = function()
{
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};

//post answer from view_question

$( "#postanswer" ).submit(function( event ) {
  var formData = $("#postanswer").serializeObject();
  var temp_makrup = $('.summernote').summernote('code');
  var makrup = $('.note-editable.panel-body').text();
  makrup = $.trim(makrup);
  formData['answer'] = temp_makrup;
  
  if ((!checkpresence(makrup,"textedit"))){

    return false;
  }
  else{
    console.log("Form validated")
    event.preventDefault();
    post_answer(formData);
  }

  });