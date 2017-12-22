<?php include 'connect.php'; ?>

<?php
//Check For Comming Request from form 

if($_SERVER['REQUEST_METHOD']=='POST'){
    if(isset($_POST['submit'])){
        $user    = mysqli_real_escape_string($conn,$_POST['user'   ]);
        $message = mysqli_real_escape_string($conn,$_POST['message']);
        
        // Set Time zone Area 

    @date_default_timezone_set('Cairo');
    $time = date('h:i:s a', time());

    if(!isset($user) || $user =='' || !isset($message) || $message == ''){
        $error ="Please Fill in Your Name And Message";
        header("Location:index.php?error=".urlencode($error));
    } else {
        $query ="INSERT INTO shouts (user, message, time)
            VALUES('$user','$message','$time') ";
        //$add = mysqli_query($conn,$query);
        if(!mysqli_query($conn,$query)) {
         die("DataBase Error");   
        }else{
            header("Location:index.php");
            exit();
        }   
    }
    }
}

?>