<?php

@include 'config.php';


?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>VLEWM: Découvrez de nouvelles recettes</title>
    <link href="../formulaire.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  </head>
  <body>
  	
	<input type="checkbox" id="check">
    <label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fas fa-times" id="cancel"></i>
    </label>
	<div class="sidebar">  
		<header ><i class="fas fa-crown"></i>VLEWM</header>
		<ul>
			<li><a href="admin_page.php"><i class="fas fa-sign-in-alt"></i>Login</a></li>
		</ul>
	</div> 
	<section></section>

    <div class="menu-bar">
	    <ul>
	    	<li class="active"><a href="#">Accueil</a></li>
	    	<li><a href="bmi.php">BMI</a></li>
	    	<li><a href="../Recettes.html">Recettes</a></li> 
    	</ul>
	</div>

    <div class="text-center">
    	<h1 class="underline">Lisez, Cuisinez, Appréciez</h1>
    </div>


    <div class="slider">
    	<div class="slides">
    		<input type="radio" name="radio-btn" id="radio1">
    		<input type="radio" name="radio-btn" id="radio2">
    		<input type="radio" name="radio-btn" id="radio3">
    		<input type="radio" name="radio-btn" id="radio4">
    		<input type="radio" name="radio-btn" id="radio5">

	    	<div class="slide first">
	    		<img src="recettes/burger.jpg" alt="">
	    	</div>		
	    	<div class="slide">
	    		<img src="recettes/quiche.jpg" alt="">
	    	</div>
	    	<div class="slide">
	    		<img src="recettes/carbonara.jpg" alt="">
	    	</div>
	    	<div class="slide">
	    		<img src="recettes/rizz_cantonais.jpg" alt="">
	    	</div>
	    	<div class="slide">
	    		<img src="recettes/fondant_chocolat.jpg" alt="">
	    	</div>

	    	<div class="navigation-auto">
	    		<div class="auto-btn1"></div>
	    		<div class="auto-btn2"></div>
	    		<div class="auto-btn3"></div>
	    		<div class="auto-btn4"></div>
	    		<div class="auto-btn5"></div>
	    	</div>

	    	<div class="navigation-manual">
	    		<label for="radio1" class="manual-btn"></label>
	    		<label for="radio2" class="manual-btn"></label>
	    		<label for="radio3" class="manual-btn"></label>
	    		<label for="radio4" class="manual-btn"></label>
	    		<label for="radio5" class="manual-btn"></label>
	    	</div>
	    </div>

	    <script type="text/javascript">
	    	var counter =1;
	    	setInterval(function(){
	    		document.getElementById('radio' + counter).checked = true;
	    		counter++;
	    		if (counter > 5) {
	    			counter = 1;
	    		}
	    	}, 3000);
	    </script>
    </div>
    
    <div class="center-text-middle">
    	<h2 class="underline"><br>Des aliments meilleurs pour votre santé</h1><br>
    		<p1>Manger mieux, Bougez mieux</p1>
    		<div class="grille_images">

    			<figure class="im1">
    				<img src="accueil/brocoli.jpg" class="im"><br>Brocoli<!--/>https://i-reg.unimedias.fr/sites/art-de-vivre/files/styles/large/public/brocoli-thinkstockphotos-468434854.jpg?auto=compress%2Cformat&crop=faces%2Cedges&cs=srgb&fit=crop&h=549&w=900</!-->

    			</figure>

    			<figure class="im2">
    				<img src="accueil/citron.jpg" class="im"><br>Citron<!--/>https://img-3.journaldesfemmes.fr/Td9O9E7JJ3Uu8Vr2WvjsuPU6pt4=/910x607/smart/b689fdee4bf84892bfcd0ac5a7d65ced/ccmcms-jdf/11409756.jpg<!-->
    			</figure>

    			<figure class="im3">
    				<img src="accueil/noix_graines.jpg" class="im"><br>Noix et Graines<!--/>https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/87/44/63/74/14/49033.jpg<!-->
    			</figure>

    			<figure class="im4">
    				<img src="accueil/tablette_chocolat_noir.jpg" class="im"><br>Chocolats noirs<!--/>https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcsSnLg0RXMiPrE1TTYPF0Pcmta5gV7apbKQuL9Xa_niM_woI&s<!-->
    			</figure>

    			<figure class="im5">
    				<img src="accueil/legumineuse.jpg" class="im"><br>Legumineuses<!--/>https://static.cms.yp.ca/ecms/media/2/20243478_xxl-1447242890-600x360.jpg<!-->
    			</figure>

    			<figure class="im6">
    				<img src="accueil/epinard.jpg" class="im"><br>Epinard<!--/>https://img.cuisineaz.com/680x357/2018-07-24/i141078-epinards.jpeg<!-->
    			</figure>

    			<figure class="im7">
    				<img src="accueil/lin.jpg" class="im"><br>Lin<!--/>https://static.passeportsante.net/i93325-.jpeg<!-->
    			</figure>

    			<figure class="im8">
    				<img src="accueil/ail.jpg" class="im"><br>Ail<!--/>https://www.observatoire-sante.fr/wp-content/uploads/2020/06/iStock-513652225-660x400@2x.jpg<!-->
    			</figure>

    			<figure class="im9">
    				<img src="accueil/avocat.jpg" class="im"><br>Avocat<!--/>https://img.cuisineaz.com/680x357/2018-07-28/i141241-avocat.jpeg<!-->
    			</figure>
    			
    		</div>
  	</div>

  	<div class="pub_cacaotier">
    	<h2 class="underline"><br>Un des meilleurs chocolatiers de France</h2><br>
    	<p1>Venez découvrir !</p1>
    	<div class="grille_cacaotier">

    		<figure class="ima1">
    			<img src="pub/choco.jpg" class="ima"><!--/>https://www.ot-honfleur.fr/wp-content/uploads/2020/01/le-cacaotier-honfleur-2.jpg<!-->
    		</figure>

    		<figure class="texte"><br>
				<p>
					"Hubert Masse, à travers sa chocolaterie Le Cacaotier, vous propose le résultat de son savoir-faire dans ses magasins de Normandie et de région parisienne.

					Artisan chocolatier depuis 1995, Hubert Masse s’est rapidement fait une place parmi les meilleurs chocolatiers de France et de Paris. Il fait partie des premiers chocolatiers qui travaillent le chocolat depuis la fève, pour réaliser les tablettes "Bean-to-bar"."
				</p><br><br>    			
    			<p>Pour en savoir plus sur Le Cacaotier vous pouvez cliquer sur<br><a href="https://www.lecacaotier.com/"> ce lien</a>.</p>
    		</figure>

    		<figure class="ima2">
    			<img src="pub/hubert.jpg" class="ima"><!--/>https://www.lecacaotier.com/upload/image/-image-28578-grande.png?1615217316<!-->
    		</figure>
    	</div>	
    </div>

  	<div class="video_pub">
    	<h3 class="underline"><br>Apprenez la cuisine avec des vidéos</h3><br>
    	<div class="grille_video">

    		<figure class="video1">
    			<a href="https://www.youtube.com/watch?v=m8GDCL6TSnk"><img src="videos/espace_cuisine.jpg" class="video"></a>
    		</figure>

    		<figure class="video2">
    			<a href="https://www.youtube.com/watch?v=N0p-p3_Cdw4"><img src="videos/squisine.jpg" class="video"></a>
    		</figure>

    		<figure class="video3">
    			<a href="https://www.youtube.com/watch?v=ruDn0tdvHCs"><img src="videos/verrechia.jpg" class="video"></a>
    		</figure>

    		<figure class="video4">
    			<a href="https://www.youtube.com/watch?v=avRL1K8WVHk"><img src="videos/Dumas.jpg" class="video"></a>
    		</figure>

    		<figure class="video5">
    			<a href="https://www.youtube.com/watch?v=1LxDuGsXYgQ&ab_channel=PhilippeEtchebestPhilippeEtchebest"><img src="videos/philippe.jpg" class="video"></a>
    		</figure>

    		<figure class="video6">
    			<a href="https://www.youtube.com/watch?v=QWaMPmG0zvQ"><img src="videos/croquettes.jpg" class="video"></a>
    		</figure>
    	</div>	
    </div>

    <footer class="sticky-footer">
      	<ul>
        	<li><a href="Propos.html">À propos</a></li>
      	</ul>
      	<p>© Copyright VLEWM 2021.</p>
    </footer>

  </body>
</html>
