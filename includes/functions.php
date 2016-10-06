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
		$result_set = mysqli_query($connection, $query);
		confirm_query($result_set);
		return $result_set;
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
	
	function logged_in() {
		return isset($_SESSION['uid']);
	}
	
	function confirm_logged_in() {
		if (!logged_in()) {
			redirect_to("index.php");
		}
	}
	?>