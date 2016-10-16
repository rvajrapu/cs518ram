<?php

	function confirm_query($result_set) {
		if (!$result_set) {
			die("Database query failed.");
		}
	}
	
	function find_user($userid) {
		global $connection;
		
		$query  = "SELECT user_id ";
		$query .= "FROM ptl_users ";
		$query .= "WHERE user_id = '$userid' ";
		$query .= "LIMIT 1";
		$result_set = mysqli_query($connection, $query);
		confirm_query($result_set);
		if($result_user = mysqli_fetch_assoc($result_set)) {
			return $result_user;
		} else {
			return null;
		}
	}


	function find_pwd($userid) {
		global $connection;
		
		$query  = "SELECT pass_code ";
		$query .= "FROM ptl_users ";
		$query .= "WHERE user_id = '$userid' ";
		$result_userset = mysqli_query($connection, $query);
		confirm_query($result_userset);
		return mysqli_fetch_assoc($result_userset);
	}
	function find_uid($userid) {
		global $connection;
		
		$query  = "SELECT u_id ";
		$query .= "FROM ptl_users ";
		$query .= "WHERE user_id = '$userid' ";
		$query .= "LIMIT 1";
		$result_id = mysqli_query($connection, $query);
		confirm_query($result_id);
		if($result_uid = mysqli_fetch_assoc($result_id)) {
			return $result_uid;
		} else {
			return null;
		}
		
	}
	
	function redirect_to($new_location) {
	  	header("Location: " . $new_location);
	  	exit;
	}

	function insert_question($title,$question,$tag,$uid) {
		global $connection;
		
		$query  = "INSERT INTO ptl_questions ";
		$query .= "(Q_TITLE, Q_TEXT, Q_TAG, U_ID, CREATION_DATE) ";
		$query .= "VALUES ('$title', '$question', '$tag', $uid, CURDATE()) ";
		$result_id = mysqli_query($connection, $query);
		error_log("Inside query\n" . $query , 3, "C:/xampp/apache/logs/error.log");
		// confirm_query($result_id);
		if($result_id) {
			$_SESSION["message"] = "Question Posted";
			return true;

		} else {
			$_SESSION["message"] = "Database Error";
			return false;
		}
		
	}
	function insert_answer($answer,$qid,$uid) {
		global $connection;
		
		$query  = "INSERT INTO ptl_answers ";
		$query .= "(A_TEXT, Q_ID, U_ID, CREATION_DATE) ";
		$query .= "VALUES ('$answer', '$qid', $uid, CURDATE()) ";
		$result_id = mysqli_query($connection, $query);
		//error_log("Inside query\n" . $query , 3, "C:/xampp/apache/logs/error.log");
		// confirm_query($result_id);
		if($result_id) {
			$_SESSION["message"] = "Answer Posted";
			return true;

		} else {
			$_SESSION["message"] = "Database Error";
			return false;
		}
		
	}
	
	function logged_in() {
		return isset($_SESSION['uid']);
	}
	
	function confirm_logged_in() {
		if (!logged_in()) {
			redirect_to("index.php");
		}
	}

	function verify_asker($u_id) {
		//error_log("\nverify_asker" . $u_id . $_SESSION["uid"], 3, "C:/xampp/apache/logs/error.log");
		if (isset($_SESSION['uid']) && $_SESSION["uid"] == $u_id) {
			
			return true;
		}
		else return false;
	}
	function best_answer($a_id,$ba_id,$u_id,$q_id) {

		//error_log("\nbest_answer" . $ba_id . $u_id , 3, "C:/xampp/apache/logs/error.log");
		if (verify_asker($u_id) && ($a_id == $ba_id)) {
			return '<i class="fa fa-check-square-o fa-3x" style = "color: #1d9d74" aria-hidden="true"></i>';
		}
		if (verify_asker($u_id) && !($a_id == $ba_id)) {
			$output ='<i class="fa fa-square-o fa-3x" style = "color: #1d9d74" aria-hidden="true" onclick="best_answer(this)"></i>';
			$output .= '<input type="hidden" name="forid" id="a_id" value = '.$a_id.' />';
			$output .= '<input type="hidden" name="forid" id="u_id" value = '.$u_id.' />';
			$output .= '<input type="hidden" name="forid" id="q_id" value = '.$q_id.' />';
			return $output;
		}
		if (!verify_asker($u_id) && ($a_id == $ba_id)) {
			return '<i class="fa fa-check-square-o fa-3x" style = "color: #1d9d74" aria-hidden="true"></i>';
		}

	}
	function update_answer($a_id,$q_id,$uid) {
		global $connection;
		
		$query  = "UPDATE PTL_QUESTIONS SET ";
		$query .= "BA_ID = '$a_id' ";
		$query .= "WHERE Q_ID = '$q_id' AND U_ID = '$uid' ";
		$result_id = mysqli_query($connection, $query);
		error_log("Inside update query\n" . $query , 3, "C:/xampp/apache/logs/error.log");
		// confirm_query($result_id);
		if($result_id) {
			$_SESSION["message"] = "Question Posted";
			return true;

		} else {
			$_SESSION["message"] = "Database Error";
			return false;
		}
	}

	function get_result_1($ques_id) {
		                                 	global $connection;   
                                            $query_1  = "
                                                        SELECT A_ID,Q_TITLE, Q_TEXT, Q_TAG, A_TEXT, PTL_ANSWERS.UP_VOTE, PTL_ANSWERS.DOWN_VOTE, BA_FLAG, PTL_USERS.FIRST_NAME,PTL_ANSWERS.CREATION_DATE 
                                                        FROM PTL_ANSWERS 
                                                        LEFT OUTER JOIN PTL_QUESTIONS ON PTL_ANSWERS.Q_ID = PTL_QUESTIONS.Q_ID 
                                                        LEFT OUTER JOIN PTL_USERS ON PTL_ANSWERS.U_ID = PTL_USERS.U_ID
                                                        WHERE PTL_QUESTIONS.Q_ID = $ques_id ORDER BY PTL_ANSWERS.A_ID
														";
														 
											$result_1 = mysqli_query($connection,$query_1);
											
                                            if(!$result_1){die("Database query failed.");}
											
											return ($result_1);		
	}
	
	function get_result_2($ques_id) {
		global $connection;
                                            $query_2  = "
														 SELECT  Q_TITLE, Q_TEXT, Q_TAG, PTL_QUESTIONS.CREATION_DATE,FIRST_NAME,PTL_QUESTIONS.U_ID,BA_ID 
                                                         FROM PTL_QUESTIONS 
                                                         LEFT OUTER JOIN PTL_USERS ON PTL_QUESTIONS.U_ID =  PTL_USERS.U_ID
                                                         WHERE PTL_QUESTIONS.Q_ID = $ques_id
														";
														 
                                            $result_2 = mysqli_query($connection,$query_2);
											
                                            if(!$result_2){die("Database query failed.");}
											
											return ($result_2);
		
	}

	?>