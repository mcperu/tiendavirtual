<!DOCTYPE html>
<html lang="es-PE">
<head>
    <meta charset="UTF-8">
    <title><?= $data['page_title']; ?></title>
    <meta name="description" content="">
    <meta name="robots" content="index,follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="revisit-after" content="1 day" />
    <meta name="theme-color" content="#33489e">
    <meta name="msapplication-navbutton-color" content="#33489e">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

    <link rel="icon" type="image/png" href="<?= media(); ?>favicon.png">
    <link rel="stylesheet" href="<?= styleCss(); ?>bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700">

    <link rel="stylesheet" href="<?= jsFile(); ?>plugins/royalslider/royalslider.css" media="all">
    <link rel="stylesheet" href="<?= jsFile(); ?>plugins/royalslider/skins/minimal-white/rs-minimal-white.css" media="all">
    <link rel="stylesheet" href="<?= jsFile(); ?>plugins/isotope/css/style.css" media="all">
    <link rel="stylesheet" href="<?= jsFile(); ?>plugins/jquery-ui/jquery-ui.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.5/css/bootstrap-select.min.css">

    <link rel="stylesheet" href="<?= jsFile(); ?>plugins/magnific-popup/magnific-popup.css">

    <!-- <link rel="stylesheet" href="common/css/shortcodes.css"> -->
    <link rel="stylesheet" href="<?= styleCss(); ?>layout.css">
    <link rel="stylesheet" href="<?= styleCss(); ?>colors.css" id="colors">
    <link rel="stylesheet" href="<?= styleCss(); ?>custom.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
   <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.5/js/bootstrap-select.min.js"></script>
    
    <script src="<?= jsFile(); ?>modernizr-2.6.1.min.js"></script>
    <script src="<?= jsFile(); ?>bootstrap.min.js"></script>

    <!-- Start WOWSlider.com HEAD section -->
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>Assets/engine1/style.css" media="screen" />
	<script type="text/javascript" src="<?= base_url(); ?>Assets/engine1/jquery.js"></script>
    <!-- End WOWSlider.com HEAD section -->
</head>
<body itemscope itemtype="https://schema.org/WebPage"> 

<header class="navbar-fixed-top" role="banner">
    <div id="preHeader">
        <div class="container">
            <div class="row">
                <div class="col-xs-10"><span class="info-header" dir="ltr"><i class="fa fa-phone"></i> <b> 489 0429</b></span>   
                    <span class="info-header" dir="ltr"><i class="fa fa-mobile"></i> <b>922 051 194</b></span>                   
                </div>
                <div class="col-xs-2">
                    <div id="contactBloc" class="clearfix">
                        <div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'es', includedLanguages: 'en,es', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL, autoDisplay: false}, 'google_translate_element');
}
</script><script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
                                            </div>
                </div>
            </div>
        </div>
    </div>
    <div id="mainHeader">
        <div class="container">
            <div class="navbar navbar-default">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
    <a class="navbar-brand" href="" title="MasterDent"><img class="img-responsive" src="<?= media(); ?>logo.png" alt="Cl&iacute;nica dental MasterDent"></a>
                </div>
                <div class="collapse navbar-collapse" id="mainMenu">
                    <ul class="nav navbar-nav">
                                                        
                                    <li class="primary nav-1">
                                                            <a class="firstLevel" href="inicio" title="MasterDent">Inicio</a>
                                                                                </li>
                                                                    
                                    <li class="primary nav-10">
                                                                                    <a class="dropdown-toggle disabled firstLevel" href="nosotros" title="Nosotros">Nosotros</a>
                                                                                </li>
                                                                    
                                    <li class="primary nav-5">
                                                                                    <a class="dropdown-toggle disabled firstLevel active" href="servicios" title="Servicios">Servicios</a>
                                                                                </li>
                                                                    
                                    <li class="primary nav-7">
                                                                                    <a class="dropdown-toggle disabled firstLevel" href="franquicias" title="franquicias">Franquicias</a>
                                                                                </li>
                                                                    
                                    <li class="primary nav-9">
                                                                                    <a class="dropdown-toggle disabled firstLevel" href="convenios" title="Convenios">Convenios</a>
                                                                                </li>
                                                                    
                                    <li class="primary nav-2">
                                                                                    <a class="dropdown-toggle disabled firstLevel" href="ubicanos" title="Ubícanos">Ubícanos</a>
                                                                                </li>
                                                        </ul>
                </div>
            </div>
        </div>
    </div>
</header>

<section id="page">
    
    <header class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-sm-7">
                                        
                        <h1 itemprop="name">Servicios</h1>
                                    </div>
                <div class="col-sm-5 hidden-xs">
                    <div itemprop="breadcrumb" class="breadcrumb clearfix">
                        
                        <a href="inicio" title="MasterDent">Inicio</a>
                        
                                            
                        <span>Servicios</span>
                    </div>
                                </div>
            </div>
        </div>
    </header>

    <div id="content" class="pt30 pb20">
        <div class="container" itemprop="text">
            
            <div class="alert alert-success" style="display:none;"></div>
            <div class="alert alert-danger" style="display:none;"></div>
            
            <div class="row">
                                
                <section class="col-sm-12">
                    <div class="row">
  <div class="col-md-4">
  <h2>ODONTOLOGIA ESTETICA</h2>
  <img class="img-responsive img-thumbnail" src="<?= media(); ?>1.png" alt="ODONTOLOGIA ESTETICA">
    <ul>
        <li>Curaciones estéticas instantáneas.</li>
        <li>Blanqueamiento dental láser.</li>
        <li>Carillas cosméticas de porcelana.</li>
    </ul>

  </div>



  <div class="col-md-4">
  <h2>TRATAMIENTOS</h2>
  <img class="img-responsive img-thumbnail" src="<?= media(); ?>2.png" alt="TRATAMIENTO">
    <ul>
        <li>Endodoncia (tratamiento de conductos).</li>
        <li>Periodoncia (tratamientos de encías).</li>
        <li>Ortodoncia (mal posición dental).</li>
        <li>Cirugía Bucal (cirugía dental en general).</li>
        <li>Radiografía (rayos x).</li>
    </ul>

  </div>




  <div class="col-md-4">
  <h2>PRÓTESIS DENTAL</h2>
  <img class="img-responsive img-thumbnail" src="<?= media(); ?>3.png" alt="PRÓTESIS DENTAL">
    <ul>
        <li>Dentaduras totales.</li>
        <li>Dentaduras parciales.</li>
        <li>Coronas estéticas de porcelana.</li>
        <li>Implantes dentales.</li>
        <li>Puentes fijos.</li>
    </ul>

  </div>
</div>
<p>

      <a class="btn btn-primary btn-lg btn-block" href="/ubicanos" role="button">¿INTERESADO? HAZ UNA CITA</a>
                </section>
                
                            </div>

            <div class="row">
                            </div>
            
                    </div>
    </div>
</section>

<footer>
    <section id="mainFooter">
        <div class="container" id="footer">
            <div class="row">
                <div class="widget-footer">
                    <div class="col-md-6">
                        <h6 class="tituloQr">Codigo QR</h6>
                        <img class="qrcode" src="<?= media(); ?>qr-code.png" alt="Qr">
                    </div>
                    
                    <div class="col-md-6" style=" margin-top: 17px;">
                        <a href="https://www.facebook.com/Clinica-Dental-Master-Dent-158945841234141/" target="_blank">
                            <img alt="Facebook" class="facebook" src="<?= media(); ?>facebook.png" />
                        </a>
                        <a href="https://twitter.com/CMaterdent" target="_blank">
                            <img alt="Ver fan Twitter" class="twitter" src="<?= media(); ?>twitter.png" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="footerRights">
        <div class="container">
            <div class="row">
                <div class="direccion" style="text-align: center;">
                    <p><b>Jr. Chinchaysuyo 401 | Zarate - Sjl - Lima 036 Perú  | Telf: (01) 489 0429 | WhatsApp: 922 051 194</b></p>
                </div>
</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
/* btn.onclick = function() {
    modal.style.display = "block";
} */

// When the user clicks on <span> (x), close the modal
/* span.onclick = function() {
    modal.style.display = "none";
} */

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
                <div class="col-md-6">
                    <p class="text-right">
                        
                                            </p>
                </div>
            </div>
        </div>
    </div>
</footer>
<a href="#" id="toTop"><i class="fa fa-angle-up"></i></a>

</body>
</html>