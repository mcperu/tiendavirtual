<?php

headerDetalle($data); 

$banner = $data['page']['portada'];
$idpagina = $data['page']['idpost'];
?>

        <div class="container">
                <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                            <div class="row">

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        
            <div class="breadcrumbs" style="
            background-image: url(&quot;img/breadcrumbs.png&quot;);
            height: 33px; 
            padding-top: 9px;
        ">
                <div class="container">
                    <!-- Breadcrumb NavXT 5.4.0 -->
        <span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage" title="Parihuelas" href="<?= base_url(); ?>" class="home">
        <span property="name"> Inicio </span></a><meta property="position" content="1"></span>
        <span property="itemListElement" typeof="ListItem"><span property="name" style="
            margin-left: 30px;
        "><?= $data['page']['titulo'] ?></span>
        <meta property="position" content="2"></span>		</div>
            </div>

                            </div>
                            
                            
                            
                            </div>

        <div class="espacio">
        </div>	 	      

                          

                            <?php
	if(viewPage($idpagina)){
		echo $data['page']['contenido'];
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
        </div>
<?php

footerDetalle($data); 

?>            