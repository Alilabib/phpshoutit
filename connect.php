<?php  
$dsn = "localhost";
$user="root";
$pass="";
$db="shoutit";

$conn = mysqli_connect($dsn,$user,$pass,$db);

if(mysqli_connect_error()){
    echo"Failed To Connect To DataBase"; 
}

?>