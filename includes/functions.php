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
