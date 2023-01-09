<script> const base_url = "<?= base_url(); ?>";
    </script>

<footer>
	<div class="contenedor1">
		<div class="box1">
			<a href="<?= base_url(); ?>"><img src="<?= media(); ?>/tienda/img/logo-hidden.png" alt=""></a>
		</div>
		<div class="box1">
			<h3>Elida's Imports</h3>
			<ul class="links">
				<li><a href="#">Company</a></li>
				<li><a href="#">Shop</a></li>
				<li><a href="#">Contact us</a></li>
				<li><a href="#">Terms and Conditions</a></li>
			</ul>
		</div>
		<div class="box1">
			<h3>Contact</h3>
			<ul class="linksCont">
				<li><a href="#">Warehouse: 1515 W. Deer Valley Road,
Unit A 103, Phoenix AZ 85027</a></li>
				<li><a href="#">Neyda: (513) 833-3868</a></li>
				<li><a href="#">David: (513) 453-3607</a></li>
				<li><a href="#">E-mail: elidasimports@gmail.com</a></li>
				<li><a href="#">Mail Payments to: 9241 W Molly Ln. Peoria, AZ 85383
</a></li>
			</ul>
		</div>
		<div class="box1">
			<h3>Follow us on</h3>
			<ul class="linksocial">
				<li><a href="#"><i class="fa fa-facebook " aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-instagram " aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin " aria-hidden="true"></i></a></li>
				
			</ul>
		</div>
	</div>
	<div class="contenedor2">
		<div class="compa"> <span>Elida's Import © | All rights reserved 2022</span></div>
		<div class="copyr"> <a href="#">Powered By FR SYSTEM S.A.C.</a></div>


	</div>
</footer>


 

</div>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	 
<!-- /footer -->
<!-- /footer -->
<div class="social hidden-xs">
<ul>
                 <li class="ocultarobjmovil" >
					 <a href="https://api.whatsapp.com/send?phone=195138333868&amp;text=Hi%20Can%20I%20have%20more%20information?" target="_blank" class="icon-whatsapp">
					 <img src="<?= media(); ?>/tienda/img/whatsapp-logo.png" width="60px"></a></li>
                <li class="ocultarobjmovil">
					<a href="<?= INSTAGRAM ?>" target="_blank" class="icon-twitter"><img src="<?= media(); ?>/tienda/img/twitter-logo.png" width="60px"></a></li>
				<li>
					<a href="<?= TIKTOK ?>" target="_blank" class="icon-tiktok"><img src="<?= media(); ?>/tienda/img/tiktok.jpg" width="60px"></a></li>
                <li>
					<a href="<?= YOUTUBE ?>" target="_blank" class="icon-youtube"><img src="<?= media(); ?>/tienda/img/youtube-logo.JPG" width="60px"></a></li>
                <li>
					<a href="<?= FACEBOOK ?>" target="_blank" class="icon-facebook"><img src="<?= media(); ?>/tienda/img/face-logo.JPG" width="60px"></a></li>

            </ul> 
        </div>
		<div class="copyright">
	

<script src="<?= media(); ?>/tienda/js/lightbox-plus-jquery.min.js"></script>
<script src="<?= media(); ?>/tienda/js/jquery.min.1.9.1.js"></script>

<script type="text/javascript">
var ww = document.body.clientWidth;

$(document).ready(function() {
    $(".nav li a").each(function() {
    	if ($(this).next().length > 0) {
			$(this).addClass("parent");
		};
	})
	
	$(".toggleMenu").click(function(e) {
		e.preventDefault();
		$(this).toggleClass("active");
		$(".nav").toggle();
	});
	adjustMenu();
})

$(window).bind('resize orientationchange', function() {
	ww = document.body.clientWidth;
	adjustMenu();
});

var adjustMenu = function() {
	if (ww < 768) {
		$(".toggleMenu").css("display", "inline-block");
		if (!$(".toggleMenu").hasClass("active")) {
			$(".nav").hide();
		} else {
			$(".nav").show();
		}
		$(".nav li").unbind('mouseenter mouseleave');
		$(".nav li a.parent").unbind('click').bind('click', function(e) {
			// must be attached to anchor element to prevent bubbling
			e.preventDefault();
			$(this).parent("li").toggleClass("hover");
		});
	} 
	else if (ww >= 768) {
		$(".toggleMenu").css("display", "none");
		$(".nav").show();
		$(".nav li").removeClass("hover");
		$(".nav li a").unbind('click');
		$(".nav li").unbind('mouseenter mouseleave').bind('mouseenter mouseleave', function() {
		 	// must be attached to li so that mouseleave is not triggered when hover over submenu
		 	$(this).toggleClass('hover');
		});
	}
}

</script>
<script src="<?= media(); ?>/tienda/js/jquery-3.3.1.min.js"></script>
<script src="<?= media(); ?>/tienda/js/jquery.min.js"></script>

<script src="<?= media(); ?>/tienda/js/bootstrap.min.js"></script>
<script src="<?= media(); ?>/tienda/js/validacionFormulario.js"></script>
</body>
</html>