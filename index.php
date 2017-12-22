<?php 
    include('init.php');
    include($tbl."header.php");
?>

<?php 
  $query  ="SELECT * FROM shouts" ;
  $shouts = mysqli_query($conn,$query);

?>
<div class ="Shouts-section">
<div class="container">
<div class="header">
    <h2>Shout IT SHOUTBOX  </h2>

</div>

<div class="shouts"> 
   
    <ul class="list-unstyled">

    <?php    while($row = mysqli_fetch_assoc($shouts)){  ?>
       
    <li class="shout"><span> <?php echo $row['time']; ?> -</span> <b> <?php echo $row['user']; ?> :</b> <?php echo $row['message']; ?>  </li> 
    
    <?php } ?>
        
    </ul>
</div>
<div class="form text-center">
            <?php  if(isset($_GET['error'])){ ?>
           
                <div class="alert alert-danger"><?php echo $_GET['error']; ?> </div>

            <?php }?>
    <form class="form-inline" action="function.php" method="POST">
    <div class="row">
       <div class="col-xs-12">  
        <input class="form-control" type="text" name="user"    Placeholder="Enter Your Name"/>
        <input class="form-control" type="text" name="message" placeholder="Enter Your Message"/>       
        <input class="form-control btn btn-primary text-center shout-button" type="submit" name="submit" value ="Shout It Out">
        
    </div>
    </form>
</div>
</div>
</div>

<?php 
    include($tbl."footer.php");
?>
