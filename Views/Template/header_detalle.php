<!DOCTYPE html>
<html lang="en">
 <head>
	<meta charset="UTF-8">
	<title><?= NOMBRE_EMPRESA ?> &#8211; We offer personalized one-of-a-kind designs, in our bestselling styles, for your business. </title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	

	<link rel="shortcut icon" href="<?= media();?>/images/favicon.ico" type="image/x-icon">

	<meta name="author" content="McKenneth Flores">
    <meta name="msapplication-TileColor" content="#f3e1d7">
    <meta name="theme-color" content="#f3e1d7">

	<!--Yoast Seo--> 
	
	<meta name="description" content="We offer personalized one-of-a-kind designs, in our bestselling styles, for your business."/>
	<!-- Facebook Tags -->
	<meta property="og:locale" content="es_PE" />	
	<meta property="fb:admins" content="1694154767535867" />
	<meta property="fb:page_id" content="1694154767535867" />
	<meta property="og:title" itemprop="name" content="We offer personalized one-of-a-kind designs, in our bestselling styles, for your business." />
	<meta property="og:description" content="We offer personalized one-of-a-kind designs, in our bestselling styles, for your business." />
	<meta property="og:type" content="website" />
	<meta property="og:site_name" content="<?= NOMBRE_EMPRESA ?> | We offer personalized one-of-a-kind designs, in our bestselling styles, for your business." />
	<meta property="og:url" content="<?= base_url(); ?>" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:title" content="<?= NOMBRE_EMPRESA ?> | We offer personalized one-of-a-kind designs, in our bestselling styles, for your business.s" />

	<link rel="shortcut icon" type="image/png" href="<?= media(); ?>/tienda/img/logo-hidden.png" />
	<link rel="apple-touch-icon" href="<?= media(); ?>/tienda/img/logo-hidden.png" />
	<link rel="author" type="text/plain" href="humans.txt" />
	<link rel="sitemap" type="application/xml" title="Sitemap" href="sitemap.xml" />
	<link rel="canonical" href="<?= base_url(); ?>">
	
	<!-- /Yoast Seo-->

<!--  Iconos -->
 
<link rel="stylesheet" href="<?= media(); ?>/tienda/css/bootstrap.min.css">

<!-- / Iconos -->

<!-- lightbox -->
<link rel="stylesheet" href="<?= media(); ?>/tienda/css/lightbox.min.css">
<!-- lightbox -->

<link href="<?= media(); ?>/tienda/css/custom.css" rel="stylesheet">

</head>

<body onunload="myStopFunction();" >

<div class="container-fluid rosado fuente cabecera">
	<div class="row">
		<div class="col-md-4 fatherLogo">
		 
			<a href="<?= base_url(); ?>"><img class="imagen" src="<?= media(); ?>/tienda/img/logo-hidden.png" width="245"  alt="<?= NOMBRE_EMPRESA ?>" title="<?= NOMBRE_EMPRESA ?>"></a>
		</div>
		<div class="col-md-4">
			<div class="buscador">
				<input id="buscador" type="text" placeholder="Buscar"></div>
		</div>
		<div class="col-md-4 cart_css">
			<div class="carrito">
				<span>Cart</span>
				<a href="#"><span><i class="fa fa-shopping-cart " aria-hidden="true"></i></span></a>
			</div>
		</div>
	</div>
</div>

 <!--/header-->

 <nav class="menu" id="divNavegation">

 <a class="toggleMenu" href="<?= base_url(); ?>"><img src="<?= media(); ?>/tienda/img/menu/menu.png" width="40"alt="">Menu</a>
 	<ul class="nav">
					<li  class="test"><a href="<?= base_url(); ?>"><i class="fa fa-home" aria-hidden="true"></i></a></li>
					<li><a href="<?= base_url(); ?>/nosotros">Company</a></li>
					<li><a  class="clsProducto">Shop</a></li>
					<li><a href="<?= base_url(); ?>/contacto">Contact us</a></li>
	</ul>
	<div class="wsp"><a href="https://api.whatsapp.com/send?phone=195138333868&amp;text=Hi%20Can%20I%20have%20more%20information?"><i class="fa fa-whatsapp" aria-hidden="true"></i> +1 (513) 833-3868</a></div>
 </nav>

 <!--/header-->
