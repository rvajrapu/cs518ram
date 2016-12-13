<?php
  include("./includes/session.php");
  include("./includes/db_connection.php");
  include("./includes/functions.php");
?>
<?php
if(isset($_GET['code']))
    {
            $code = $_GET['code'];
            $post = http_build_query(array(
                'client_id' => 'a5160dfe6fa2708500fd',
                'redirect_url' => 'http://localhost/GIT/git_login.php',
                'client_secret' => '00c582ee80465ae3c4925fe40eabdf9ad4aba9d1',
                'code' => $code,
            ));

            $context = stream_context_create(
                array(
                    "http" => array(
                        "method" => "POST",
                        'header'=> "Content-type: application/x-www-form-urlencoded\r\n" .
                                    "Content-Length: ". strlen($post) . "\r\n".
                                    "Accept: application/json" ,  
                        "content" => $post,
                    )
                )
            );

            $json_data = file_get_contents("https://github.com/login/oauth/access_token", false, $context);
            $r = json_decode($json_data , true);
            $access_token = $r['access_token'];
            $scope = $r['scope']; 

            /*- Get User Details -*/
            $url = "https://api.github.com/user?access_token=".$access_token."";
            $options  = array('http' => array('user_agent'=> $_SERVER['HTTP_USER_AGENT']));
            $context  = stream_context_create($options);
            $data = file_get_contents($url, false, $context); 
            $user_data  = json_decode($data, true);
            $username = $user_data['login'];

            /*- Get User e-mail Details -*/                
            $url = "https://api.github.com/user/emails?access_token=".$access_token."";
            $options  = array('http' => array('user_agent'=> $_SERVER['HTTP_USER_AGENT']));
            $context  = stream_context_create($options);
            $emails =  file_get_contents($url, false, $context);
            $email_data = json_decode($emails, true);
            $email_id = $email_data[0]['email'];
            $email_primary = $email_data[0]['primary'];
            $email_verified = $email_data[0]['verified'];


            $result = git_validate_user($username);
            $row = mysqli_fetch_assoc($result);


            if ($row["u_id"] != NULL)
            {
                $_SESSION["uid"] = (int)$row["u_id"];
                $_SESSION["username"] = $row["user_id"];
                $_SESSION["git_user"] = 'True';
                $_SESSION["git_image"] = 'https://github.com/'.$row["user_id"].'png';

                redirect_to("index.php");
            }
            else
            {

                insert_user($username,$email_id,'gituser','');
                $result_new = git_validate_user($username);
                $row_new = mysqli_fetch_assoc($result_new);
                if ($row_new["u_id"] != NULL)
                {
                    $_SESSION["uid"] = (int)$row_new["u_id"];
                    $_SESSION["username"] = $row_new["user_id"]; 
                    $_SESSION["git_user"] = 'True';
                    $_SESSION["git_image"] = 'https://github.com/'.$row["user_id"].'.png';         
                    redirect_to("index.php");
                }
    }
      ?>
    </div>
      <?php

    }
 ?>   