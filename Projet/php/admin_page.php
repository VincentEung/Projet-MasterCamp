<?php

@include 'config.php';

session_start();

if(!isset($_SESSION['client_Nom'])){
   header('location:Login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>admin page</title>

   <link rel="stylesheet" href="../authentification.css">

</head>
<div class="container">

<div class="content">
   <h3>hi, <span>user</span></h3>
   <h1>welcome <span><?php echo $_SESSION['client_Nom'] ?></span></h1>
   <p>this is a client page</p>
   <a href="Login.php" class="btn">login</a>
   <a href="register_form.php" class="btn">register</a>
   <a href="logout.php" class="btn">logout</a>
   <a href="accueil.php" class="btn">Accueil</a>

</div>

</div> 
	</body>
</html>