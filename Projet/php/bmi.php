<?php

@include 'config.php';

session_start();

if(isset($_POST['submit'])){

   $taille = mysqli_real_escape_string($conn, $_POST['Taille']);
   $poids = mysqli_real_escape_string($conn, $_POST['Poids']);
   #$bmio = mysqli_real_escape_string($conn, $_POST['IMC']);
   #$user_type = $_POST['user_type'];
   $id_patient = mysqli::$client_info['ID_PATIENT'];

   $select = " SELECT * FROM patient WHERE Taille = '$taille' && Poids= '$poids' ";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) <= 0){
     $error[] = 'IMC already exist!';

   }else{
      $insert = "UPDATE patient SET Taille = '$taille', Poids = '$poids' WHERE ID_PATIENT = 6";
         #$insert = "UPDATE patient WHERE (Taille='0', Poids='0') BY VALUES('$taille','$poids')";
      
         #$insert = "INSERT INTO patient(Taille, Poids, IMC, user_type) VALUES('$taille','$poids','$bmio','$user_type')";
         mysqli_query($conn, $insert);
         header('location:bmi.php');
   }
};
?>

<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <title>register form</title>
   </head>
   <style media="screen" >

		body{
			margin: 0;
			padding: 0;
			text-align: center;
			font-family: sans-serif;
			background-image: linear-gradient(120deg,#ff6b6b, #5f27cd);
			min-height: 100vh;
		}

		.bmi{
			width: 500px;
			position: absolute;
			top: 50%;
			left: 50%;
			background-color: #fff;
			transform: translate(-50%, -50%);
			padding: 20px;
			border-radius: 10px;
			box-shadow: 1px 1px 20px #ee5253;
		}
		h2{
			font-size: 30px;
			font-weight: 600;
		}
		.text{
			text-align: left;
			margin-left: 150px;
		}
		#Poids, #Taille{
			color: #222f3e;
			text-align: left;
			font-size: 20px;
			font-weight: 200;
			outline: none;
			border: none;
			background: none;
			border-bottom: 1px solid #341f97;
			width: 200px;
		}
			#Poids:focus, #Taille:focus{
				border-bottom: 2px solid #341f97;
				width: 300px;
				transition: 0.5s;
			}
			#result{
				color: #341f97;
			}
			#btn{
				font-family: inherit;
				margin-top: 10px;
				border: none;
				color: #fff;
				background-image: linear-gradient(120deg,#ff6b6b, #5f27cd);
				width: 150px;
				padding: 10px;
				border-radius: 30px;
				outline: none;
				cursor: pointer;
			}
			#btn:hover{
				box-shadow: 1px 1px 10px #341f97;
			}
			#info{
				font-size: 12px;
				font-family: inherit;
			}
         .menu-bar{
	background: rgb(0,100,0);
	text-align: center;
   }
   .menu-bar ul{
      display: inline-flex;
      list-style: none;
      color: #fff;
   }
   .menu-bar ul li{
      width: 120px;
      margin: 15px;
      padding: 15px;
   }
   .menu-bar ul li a{
      text-decoration: none;
      color: #fff;
   }
   @media (max-width:640px){
      .menu-bar ul{
      display: inline-flex;
      list-style: none;
      margin-left:70px;
      color: #fff;
      }
      .menu-bar ul li{
      width: 25%;
      font-size: 12px;
      padding-left: 3%;
      margin-left: 2%;
      }
   }
   .active, .menu-bar ul li:hover{
      background: #2bab0d ;
      border-radius: 3px;
   }
   
.sticky-footer{
	position: sticky;
	margin-top: 35%;
	padding: 2em;
	background: rgb(0,100,0);
	text-align: center;
	margin-bottom: auto;
}
.sticky-footer ul{
	display: inline-flex;
	list-style: none;
	color: #fff;
}
.sticky-footer ul li{
	width: 120px;
	margin: 62px;
	padding: 15px;
}
.sticky-footer ul li a{
	text-decoration: none;
	color: #fff;
}
.active, .sticky-footer ul li:hover{
	background: #2bab0d ;
	border-radius: 3px;
}
.sidebar {
  position: fixed;
  left: -250px;
  width: 250px;
  height: 100%;
  background: #03350D;
  transition: all .5s ease;
}
.sidebar header {
  font-size: 22px;
  color: white;
  line-height: 77px;
  text-align: center;
  background: #046318;
  user-select: none;
}
.sidebar ul a{
  display: block;
  height: 100%;
  width: 100%;
  line-height: 65px;
  font-size: 20px;
  color: white;
  padding-left: 40px;
  box-sizing: border-box;
  border-bottom: 1px solid black;
  border-top: 1px solid rgba(255,255,255,.1);
  transition: .4s;
}

.sidebar ul li:hover a{
  padding-left: 50px;
}
.sidebar ul a i{
  margin-right: 16px;
}


	</style>

   <script type="text/javascript">
		function BMI() {
			var Taille=document.getElementById('Taille').value;
			var Poids=document.getElementById('Poids').value;
			var bmi=Poids/(Taille/100*Taille/100);
			var bmio=(bmi.toFixed(2));

			document.getElementById("result").innerHTML="Your BMI is " + bmio;
		}
	</script>
	<body>

      <div class="menu-bar">
         <ul>
            <li><a href="accueil.php">Accueil</a></li>
            <li class="active"><a href="#">BMI</a></li>
            <li><a href="../Recettes.html">Recettes</a></li> 
         </ul>
      </div>

		<!--<div class="bmi">
			<h2>BMI Calculator</h2>
			<p class="text">Taille</p>
			<input type="text" id="Taille">
			<p class="text">Poids</p>
			<input type="text" id="Poids">
			<p id="result"></p>
			<button id="btn" onClick="BMI()" type="submit" name="submit ">Calculate</button>
			<p id="info">Please enter height [cm] and weight [kg]</p>
		</div>-->
      <div class="form-container">

   <form action="" method="post">
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
      <div>
         <h2>BMI Calculator</h2>
         <input type="int" name="Taille" required placeholder="Entrer votre taille">
         <input type="int" name="Poids" required placeholder="Entrer votre poids">
         <select name="user_type">
            <option value="client">client</option>
         </select>
         <input type="submit" name="submit" value="register now" class="form-btn" href="#">
      </div>
   </form>

</div>
      <footer class="sticky-footer">
      	<ul>
        	<li><a href="Propos.html">À propos</a></li>
      	</ul>
      	<p>© Copyright VLEWM 2021.</p>
    </footer>
	</body>
</html>