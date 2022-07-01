<?php

@include 'config.php';

if(isset($_POST['submit'])){

   $nom = mysqli_real_escape_string($conn, $_POST['Nom']);
   $prenom = mysqli_real_escape_string($conn, $_POST['Prénom']);
   $email = mysqli_real_escape_string($conn, $_POST['Mail']);
   $age = mysqli_real_escape_string($conn, $_POST['Age']);
   $tel = mysqli_real_escape_string($conn, $_POST['Telephone']);
   $pass = md5($_POST['password']);
   $cpass = md5($_POST['cpassword']);
   $user_type = $_POST['user_type'];

   $select = " SELECT * FROM patient WHERE Mail = '$email' && password = '$pass' ";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

      $error[] = 'user already exist!';

   }else{

      if($pass != $cpass){
         $error[] = 'password not matched!';
      }else{
         $insert = "INSERT INTO patient(Nom, Prénom, Mail,Age, Telephone,password,user_type) VALUES('$nom','$prenom','$email','$age','$tel','$pass','$user_type')";
         mysqli_query($conn, $insert);
         header('location:Login.php');
      }
   }

};


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register form</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../authentification.css">

</head>
<body>
   
<div class="form-container">

   <form action="" method="post">
      <h3>register now</h3>
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
      <input type="text" name="Nom" required placeholder="entrer votre nom">
      <input type="text" name="Prénom" required placeholder="entrer votre prenom">
      <input type="email" name="Mail" required placeholder="enter your email">
      <input type="int" name="Age" required placeholder="enter your age">
      <input type="int" name="Telephone" required placeholder="entrer votre numéro de téléphone">
      <input type="password" name="password" required placeholder="enter your password">
      <input type="password" name="cpassword" required placeholder="confirm your password">
      <select name="user_type">
         <option value="client">client</option>
      </select>
      <input type="submit" name="submit" value="register now" class="form-btn" href="Accueil.html">
      <p>already have an account? <a href="Login.php">login now</a></p>
   </form>

</div>

</body>
</html>