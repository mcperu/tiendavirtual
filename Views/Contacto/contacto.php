<?php

headerDetalle($data); 


?>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57482.19878097922!2d-80.26447910825667!3d25.782536929228108!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d9b0a20ec8c111%3A0xff96f271ddad4f65!2sMiami%2C%20FL%2C%20USA!5e0!3m2!1sen!2spe!4v1668862026322!5m2!1sen!2spe" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

        <div class="container top17">
          <div class="row">
              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                  <div class="breadcrumbs" style="background-image: url(&quot;img/breadcrumbs.png&quot;); height: 33px; padding-top: 9px;">
                      <div class="container">
                          <span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage" title="<?= NOMBRE_EMPRESA ?>" href="<?= base_url(); ?>" class="home">
                          <span property="name"> Home </span></a><meta property="position" content="1"></span>
                          <span property="itemListElement" typeof="ListItem"><span property="name" style="margin-left: 30px;">Contact</span>
                          <meta property="position" content="2"></span>		
                      </div>
                </div>
			        </div>
			    </div>
      </div>
      
      <div class="container">
      <div class="row">
        <div class="sombra col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div class="form-contact bg_blanco clearfix">
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <span class="titulos tit-int">Contact Form</span>
            </div>
          <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 clearfix">
              <ul class="dats">
                <li class="c-tel"><strong>Phone</strong><br><a href="tel:<?= PAIS.CODIGO.CELULAR1 ?>"><?= PAIS.' '.CODIGO.' '. CELULAR1 ?></a>  
               </li>
                <li class="c-mail">Email<br><a href="mailto:<?= EMAIL ?>"><?= EMAIL ?></a></li>
              </ul>            
          </div>
              <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                <div class="col-xs-12 col-sm-6 col-md-12 col-lg-12 agotado">
                  <span class="pull-left"></span>
                </div>
              <form class="contacto" id="fcontacto"   method="post">		  
                  <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 bot20">
                    <input name="nombres"  placeholder="NAME*" type="text"required>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 bot20">
                    <input name="telefono_movil" aria-describedby="Telefono"  placeholder="PHONE*" type="text"required>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 bot20">
                    <input  name="email"  aria-describedby="emailHelp"  placeholder="E-MAIL*" type="text" required>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 bot20">
                    <textarea   name="mensaje"  placeholder="MESSAGE*" rows="8" required></textarea>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 form-group">
                  <div id="estado"></div> <br>
                  <button type="button" class="btn btn-success enviar">SEND MESSAGE</button>    
                  </div>  		
              </form>
            </div>
          <!-- divContenidoFormulario -->
          </div>
        </div>
      </div>
  </div>

</div>

<div class="divisor"></div>

<?php

footerDetalle($data); 

?>            