<?php

$arrModulo = $data['slider'];


$arrBane = $data['banner'];
$arrCate = $data['categoria'];

$arrCateTres = $data['categoriatres'];
$arrProductos = $data['productos'];
//dep($arrProductos);

$arrPackInter = $data['paquetes-internacionales'];
// dep($arrPackInter);
headerTienda($data); 


?>
<!-- ************************************************************** -->
    <!-- *************************  portada  ************************* -->
    <!-- ************************************************************** -->
    <div id="slider" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active" data-bs-interval="2000">
            <img src="<?= media(); ?>/tienda/img/slide1.jpg" class="d-block w-100" alt="Peru Turismo - Proyajkon">
            <div class="carousel-caption d-none d-md-block">
              <h2 class="tituloSlide">Peru Turismo - Proyajkon</h2>
              <a class="btn btn-warning" href="#"><b>VER PAQUETES</b></a>
            </div>
          </div>
          <div class="carousel-item" data-bs-interval="2000">
            <img src="<?= media(); ?>/tienda/img/slide2.jpg" class="d-block w-100" alt="Turismo en peru - Proyajkon">
            <div class="carousel-caption d-none d-md-block">
              <h2 class="tituloSlide">Turismo en peru - Proyajkon</h2>
              <a class="btn btn-warning" href="#"><b>VER PAQUETES</b></a>
            </div>
          </div>
          <div class="carousel-item" data-bs-interval="2000">
            <img src="<?= media(); ?>/tienda/img/slide3.jpg" class="d-block w-100" alt="Viajes a peru - Proyajkon">
            <div class="carousel-caption d-none d-md-block">
              <h2 class="tituloSlide">Viajes a peru - Proyajkon</h2>
              <a class="btn btn-warning" href="#"><b>VER PAQUETES</b></a>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    <!-- ************************************************************** -->
    <!-- *************************  /portada  ************************* -->
    <!-- ************************************************************** -->

	<!-- ************************************************************** -->
    <!-- *************************  paquetes turisticos Nacionales  ************************* -->
    <!-- ************************************************************** -->    
	<section class="staticData">
    <!-- titulo -->
    <h2 class="text-success">Paquetes Turisticos Lima</h2>
    <p>Siempre podrás contar con nosotros
        para conocer la belleza y grandeza del Perú
        con seguridad y confianza. </p>
    <p class="text-warning-emphasis text-center">NATURALEZA Y GASTRONOMIA</p>
    <!-- /titulo -->
    <div class="clearfix"></div>
    <div class="container">
        <div class="row">
		<?php

			for($p=0; $p < count($arrProductos); $p++){

				if(count($arrProductos[$p]['images']) > 0 ){
					$portada = $arrProductos[$p]['images'][0]['url_image'];
				}else{
					$portada = media().'/images/uploads/product.png';
			}

		?>
            <article class="col-md-4">
                <div class="conProd">
                   <a class="text-d-none" href="<?= base_url().'/tienda/producto/'.$arrProductos[$p]['ruta']; ?>"> <img src="<?= $portada ?>" alt="<?= $arrProductos[$p]['nombre'] ?>"  title="Viaja a Tarapoto"></a>
                    <div class="conSlog"><a class="text-d-none"href="<?= base_url().'/tienda/producto/'.$arrProductos[$p]['ruta']; ?>"><h3><?= $arrProductos[$p]['lugar'] ?></h3></a></div>
                    <div class="conTit"><a class="text-d-none"href="<?= base_url().'/tienda/producto/'.$arrProductos[$p]['ruta']; ?>"><p><?= $arrProductos[$p]['nombre'] ?></p></a></div>
                </div>
                <div class="descripcion">
                    <a href="<?= base_url().'/tienda/producto/'.$arrProductos[$p]['ruta']; ?>"><h3><?= $arrProductos[$p]['nombre'] ?></h3></a>
                    <p><?= $arrProductos[$p]['resumen'] ?>
                    </p>
                    <div class="precio">Precio: <span class="sym">S/</span><span class="price"><?= $arrProductos[$p]['preciosolesigv'] ?></span></div>
                    <a class="btnBuy btn btn-warning" href="<?= base_url().'/tienda/producto/'.$arrProductos[$p]['ruta']; ?>">VER MAS</a>
                </div>
            </article>
		<?php
			}
		?>
             
        </div>
    </div>
</section>

	<!-- ************************************************************** -->
    <!-- ************************* /paquetes turisticos Nacionales ************************* -->
    <!-- ************************************************************** -->    


<section class="callToAction">
     <h2>Reserva y busca tu viaje ya!</h2>
</section>
<section class="callToAction4">
    <h3> Paquetes Turisticos </h3>
</section>
<section class="callToAction3">
    
    <div class="divImageText1">
        <div class="dIleft"></div>
        <div class="dIright"></div>
    </div>
    <div class="divImageText2">
        <div class="dI2left">
          
        </div>
        <div class="dI2right"></div>
    </div>
</section>
	<!-- ************************************************************** -->
    <!-- *************************  paquetes turisticos Internacionales  ************************* -->
    <!-- ************************************************************** -->    
	<section class="staticData">
    <!-- titulo -->
    <h2 class="text-success">Paquetes Turisticos Internacionales</h2>
    <p>Siempre podrás contar con nosotros
        para conocer la belleza y grandeza del mundo
        con seguridad y confianza. </p>
    <p class="text-warning-emphasis text-center">NATURALEZA</p>
    <!-- /titulo -->
    <div class="clearfix"></div>
    <div class="container">
        <div class="row">
		<?php

			for($p=0; $p < count($arrPackInter); $p++){

				if(count($arrPackInter[$p]['images']) > 0 ){
					$portada = $arrPackInter[$p]['images'][0]['url_image'];
				}else{
					$portada = media().'/images/uploads/product.png';
			}

		?>
            <article class="col-md-4">
                <div class="conProd">
                   <a class="text-d-none" href="<?= base_url().'/tienda/producto/'.$arrPackInter[$p]['ruta']; ?>"> <img src="<?= $portada ?>" alt="<?= $arrPackInter[$p]['nombre'] ?>"  title="Viaja a Tarapoto"></a>
                    <div class="conSlog"><a class="text-d-none"href="<?= base_url().'/tienda/producto/'.$arrPackInter[$p]['ruta']; ?>"><h3><?= $arrPackInter[$p]['lugar'] ?></h3></a></div>
                    <div class="conTit"><a class="text-d-none"href="<?= base_url().'/tienda/producto/'.$arrPackInter[$p]['ruta']; ?>"><p><?= $arrPackInter[$p]['nombre'] ?></p></a></div>
                </div>
                <div class="descripcion">
                    <a href="<?= base_url().'/tienda/producto/'.$arrPackInter[$p]['ruta']; ?>"><h3><?= $arrPackInter[$p]['nombre'] ?></h3></a>
                    <p><?= $arrPackInter[$p]['resumen'] ?>
                    </p>
                    <div class="precio">Precio: <span class="sym">S/</span><span class="price"><?= $arrPackInter[$p]['preciosolesigv'] ?></span></div>
                    <a class="btnBuy btn btn-warning" href="<?= base_url().'/tienda/producto/'.$arrPackInter[$p]['ruta']; ?>">VER MAS</a>
                </div>
            </article>
		<?php
			}
		?>
             
        </div>
    </div>
</section>

	<!-- ************************************************************** -->
    <!-- ************************* /paquetes turisticos Internacionales ************************* -->
    <!-- ************************************************************** -->  

	<!-- ************************************************************** -->
    <!-- ************************* Opiniones ************************* -->
    <!-- ************************************************************** --> 

	<!-- <section class="reviews">
    <div class="title">
        <div class="espacio"></div>
        <h3 class="title2">Opiniones de nuestros clientes</h3>
    </div>
    <div class="rbox">
        <div class="rbLeft">
            <span class="" id="img1">
                <img src="<?= media(); ?>/tienda/img/rev1.png" alt="">
                <span>Juan Garcia</span>
            </span>
            <span class="hidden" id="img2">
                <img src="img/rev2.jpg" alt="">
                <span >Carla Perez</span>
            </span>
        </div>
        <div class="rbRight">
            <div class="star">
                <ul class="linksocial2">
                    <li><a href="#"><i class="fa fa-star " aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star " aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star " aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star " aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star " aria-hidden="true"></i></a></li>
                   
                    
                </ul>
            </div>
            <div class="text" id="text1">
                <p>Mi viaje por el río Amazonas con la 
                    empresa Arapaima Expeditions fue una
                    experiencia inolvidable. Tuve la 
                    oportunidad de ver la increíble 
                    fauna y flora del Amazonas y visitar
                    algunas de las comunidades indígenas
                    locales. La empresa fue muy respetuosa con el medio ambiente y las comunidades indígenas, y siempre se aseguraron de que todo estuviera  en orden para garantizar nuestra seguridad y comodidad. 
                    Sin duda recomendaría este viaje a 
                    cualquiera interesado en explorar 
                    el Amazonas Peruano.</p>
            </div>
            <div class="text hidden" id="text2">
                <p>Los recomiendo!. Arapaima fue una experiencia inolvidable, los mejores.</p>
            </div>
            <div class="text hidden" id="text3">
                <p>Mi viaje por el río Amazonas con la 
                    empresa Arapaima Expeditions fue una
                    experiencia inolvidable. Tuve la 
                    oportunidad de ver la increíble 
                    fauna y flora del Amazonas y visitar
                    algunas de las comunidades indígenas
                    locales. La empresa fue muy respetuosa con el medio ambiente y las comunidades indígenas, y siempre se aseguraron de que todo estuviera  en orden para garantizar nuestra seguridad y comodidad. 
                    Sin duda recomendaría este viaje a 
                    cualquiera interesado en explorar 
                    el Amazonas Peruano.</p>
            </div>
            <div class="bullets">
                <ul class="linksocial3">
                    <i onclick="carrouselRev(1)" id="c_btn1" class="fa fa-circle" aria-hidden="true"></i>
                    <i onclick="carrouselRev(2)" id="c_btn2" class="fa fa-circle-o" aria-hidden="true"></i>
                </ul>
            </div>

        </div>
    </div>
</section> -->

	<!-- ************************************************************** -->
    <!-- ************************* /Opiniones ************************* -->
    <!-- ************************************************************** --> 

<!-- /Categorias -->

<!-- <div class="container">
      <div class="row">
        <div class="sombra col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div class="form-contact bg_blanco clearfix">
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <span class="titulos tit-int">FORMULARIO DE CONTACTO</span>
            </div>

          <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 clearfix">
              <ul class="dats">
            
                <li class="c-tel"><br>Celular: <a href="tel:<?= PAIS.CELULAR1 ?>"><?= PAIS.' '.CELULAR1 ?></a>  
				
			
			
			</li>
                <li class="c-mail">Correo electrónico<br><a href="mailto:<?= EMAIL ?>"><?= EMAIL ?></a></li> 

              </ul>            
          </div>
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                <div class="col-xs-12 col-sm-6 col-md-12 col-lg-12 agotado">
                  <span class="pull-left"></span>
                </div>
              <form class=" contacto " id="fcontacto"   method="post">		  
                  <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 bot20">
                    <input name="nombres"  placeholder="NOMBRE*" type="text"required>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 bot20">
                    <input name="telefono_movil" aria-describedby="Telefono"  placeholder="TELEFONO*" type="text"required>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 bot20">
                    <input  name="email"  aria-describedby="emailHelp"  placeholder="E-MAIL*" type="text" required>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 bot20">
                    <textarea   name="mensaje"  placeholder="MENSAJE*" rows="8" required></textarea>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 form-group">
                  <div id="estado"></div> <br>
                  <button type="button" class="btn btn-success enviar">ENVIAR CONSULTA</button>    
                  </div>  		
              </form>
            </div>
          </div>
        </div>
      </div>
  </div> -->
<!-- Contacto -->

<div class="espacio"></div>
 <?php

footerTienda($data); 

?>