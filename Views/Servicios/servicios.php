<?php

headerDetalle($data); 

$banner = $data['page']['portada'];
$idpagina = $data['page']['idpost'];
?>

    <!-- ************************************************************** -->
    <!-- *************************  portada  ************************* -->
    <!-- ************************************************************** -->
    <section class="banner">
    <div class="capa">
        
        <h1 class="bannerTit">
        <?php
        if(viewPage($idpagina)){
            echo $data['page']['titulo'];
        }
        ?>
        </h1>
    </div>
    
    </section>
    <!-- ************************************************************** -->
    <!-- *************************  /portada  ************************* -->
    <!-- ************************************************************** -->

    <div class="container-fluid">
        <ul class="breadcrumb">
            <li><a href="<?= base_url(); ?>">Inicio</a></li> / 
            <li class="active"><strong> <?php
            if(viewPage($idpagina)){
                echo $data['page']['titulo'];
            } ?> </strong></li>
        </ul>
    </div>

        <div class="container">
                <div class="row">
                  
                            <?php
	if(viewPage($idpagina)){
		?>

            <article class="col-md-3 sProduct">
               <div class="containerSer">
                <h3>Boletos Aéreos</h3>
                <img src="<?= media().'/tienda/img/Boletos-Aereos.png'; ?>" height="50" alt="">
               </div>
            </article>
            <article class="col-md-3 sProduct">
               <div class="containerSer">
                <h3>Traslados</h3>
                <img src="<?= media().'/tienda/img/Traslados.png'; ?>" height="50" alt="">
               </div>
            </article>
            <article class="col-md-3 sProduct">
               <div class="containerSer">
                <h3>Tarjetas de Asistencias
                </h3>
                <img src="<?= media().'/tienda/img/Tarjetas-de-asistencia-150x150.png'; ?>" height="50" alt="">
               </div>
            </article>
            <article class="col-md-3 sProduct">
               <div class="containerSer">
                <h3>Salón VIP aeropuerto</h3>
                <img src="<?= media().'/tienda/img/Salon-VIP-aeropuerto.png'; ?>" height="50" alt="">
               </div>
            </article>

            <article class="col-md-3 sProduct">
               <div class="containerSer">
                <h3>Logistica</h3>
                <img src="<?= media().'/tienda/img/logistica.png'; ?>" height="50" alt="">
               </div>
            </article>
            <article class="col-md-3 sProduct">
               <div class="containerSer">
                <h3>Vacaciones Corporativas</h3>
                <img src="<?= media().'/tienda/img/vacaciones.png'; ?>" height="50" alt="">
               </div>
            </article>
            <article class="col-md-3 sProduct">
               <div class="containerSer">
                <h3>Programas de Fin de Semana

                </h3>
                <img src="<?= media().'/tienda/img/fin-de-semana.png'; ?>" height="50" alt="">
               </div>
            </article>
            <article class="col-md-3 sProduct">
               <div class="containerSer">
                <h3>Hoteles</h3>
                <img src="<?= media().'/tienda/img/hotel.png'; ?>" height="50" alt="">
               </div>
            </article>
  
        <?php
	}else{
  ?>
<div>
	<div class="container-fluid py-5 text-center" >
		<img src="<?= media() ?>/images/construction.png" alt="En construcción">
		<h3>Estamos trabajando para usted.</h3>
	</div>
</div>
<?php 
	}

?>

                   

                    </div>
        </div>
<?php

footerDetalle($data); 

?>            