<?php

$arrModulo = $data['slider'];
/* dep( $arrSlider); */

$arrBane = $data['banner'];
$arrCate = $data['categoria'];

$arrCateTres = $data['categoriatres'];
$arrProductos = $data['productos'];

$arrProductosDesi = $data['productos_desi'];

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


 <div class="container-fluid fondoBackground paddinbBienvenida">
	<div class="row">
		<div class="col-md-12 contenidoBienvenida">
			<h3 class="text-center">Customizable Designs</h3>
			<p class=" text-center">We offer personalized one-of-a-kind designs, in out best <br/>
			selling styles, for your business</p>
		</div>
	</div>

	<div class="flex-contenedor">
		<div class="flex-items">
			<img src="Assets/tienda/img/texas.webp" alt="">
		</div>
		<div class="flex-items">
			<img src="Assets/tienda/img/los-angeles.webp" alt="">
		</div>
		<div class="flex-items">
			<img src="Assets/tienda/img/new-mexico.webp" alt="">
		</div>
		<div class="flex-items">
			<img src="Assets/tienda/img/seattle.webp" alt="">
		</div>
		<div class="flex-items">
			<img src="Assets/tienda/img/texas-2.webp" alt="">
		</div>
	</div>
	 
</div>
<!-- Bienvenida -->
<div class="espacio"></div>

<div class="container">
	<div class="row">

		<div class="col-md-3 ">
		 	<h3 class="categorycss">Shop by Category</h3>
			 <ul id="accordion">  
					
					<li>  <h3>ZIP BAGS MIX COLORS</h3> 
							<div>
								<a href="#"><h4>BAGS ONE</h4></a>
							</div>
					</li>  
						<li>  <h3>BACK PACKS</h3>  
						
						</li>  

						<li>  <h3>ZIP BAGS MIX COLORS</h3>  
						</li>
  		</ul>  
			<!-- /acordeon -->
		</div>
		<div class="col-md-9 ">
		<h3 class="bestsellcss">Bestsellers</h3>

			<div class="  divProductos">
						<div class=" ">
							<h2 class="text-center"><?= $arrProductos[0]['nombrecategoriatres']?></h2>
							<h3 class="text-center"> <?= $arrProductos[0]['nombrecategoriatres']?></h3>
						</div>
						<br>
					<div class="" id="inventory">
						<div class="row">
							<?php

							for($p=0; $p < count($arrProductos); $p++){

								if(count($arrProductos[$p]['images']) > 0 ){
									$portada = $arrProductos[$p]['images'][0]['url_image'];
								}else{
									$portada = media().'/images/uploads/product.png';
								}
							?>
							<div class="col-md-3 productoOrganico">
								<div class="card">
									<div class="ribbon"><span>NEW</span></div>
									<div class="flex-items">
										<a href="<?= $portada ?>?w=700" data-lightbox="<?= $arrProductos[$p]['nombre'] ?>" data-title="<?= $arrProductos[$p]['nombre'] ?>"><img class="img-fluid"  width="100%" src="<?= $portada ?>?w=400"  alt="<?= $arrProductos[$p]['nombre'] ?>" ></a>
									</div>
										<a href="<?= base_url().'/tienda/producto/'.$arrProductos[$p]['ruta']; ?>"><h3 class="titulo_producto" ><?= $arrProductos[$p]['nombre'] ?></h3></a>
										 
										<a href="<?= base_url().'/tienda/producto/'.$arrProductos[$p]['ruta']; ?>"><button class="btn view-btn">Buy Now</button></a>
								</div>
							</div>
						<?php
						}
						?>
						</div>
					</div>
				</div>
				<!-- Categorias -->

		</div>
	</div>
</div>



<div class="container divProductos">
		<div class="row">
			<h2 class="text-center"><?= $arrProductosDesi[0]['nombrecategoriatres']?></h2>
			<h3 class="text-center"> <?= $arrProductosDesi[0]['nombrecategoriatres']?></h3>
		</div>
		<br>
	<div class="container-fluid" id="inventory">
		<div class="row">
            <?php

            for($p=0; $p < count($arrProductosDesi); $p++){

                if(count($arrProductosDesi[$p]['images']) > 0 ){
                    $portada = $arrProductosDesi[$p]['images'][0]['url_image'];
                }else{
                    $portada = media().'/images/uploads/product.png';
                }
            ?>
			<div class="col-md-3 productoOrganico">
				<div class="card">
            		<div class="ribbon"><span>New</span></div>
					<div class="flex-items">
						<a href="<?= $portada ?>?w=700" data-lightbox="<?= $arrProductosDesi[$p]['nombre'] ?>" data-title="<?= $arrProductosDesi[$p]['nombre'] ?>"><img class="img-fluid"  width="100%" src="<?= $portada ?>?w=400"  alt="<?= $arrProductosDesi[$p]['nombre'] ?>" ></a>
					</div>
						<a href="<?= base_url().'/tienda/producto/'.$arrProductosDesi[$p]['ruta']; ?>"><h3 class="titulo_producto" ><?= $arrProductosDesi[$p]['nombre'] ?></h3></a>
						 
						<a href="<?= base_url().'/tienda/producto/'.$arrProductosDesi[$p]['ruta']; ?>"><button class="btn view-btn">Buy Now</button></a>
				</div>
			</div>
		<?php
		}
		?>
		</div>
	</div>
</div>
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