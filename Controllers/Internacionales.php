<?php 
require_once("Models/TCategoriauno.php");
require_once("Models/TProducto.php");

	class Internacionales extends Controllers{
		public function __construct()
		{
			session_start();
			/* getPermisos(MODPAGINAS); */
			parent::__construct();
		}

		use TCategoriauno,TCategoriaDos,TCategoriaTres,TProducto;

		public function internacionales()
		{
		
				$data['page_tag'] = NOMBRE_EMPRESA;
				$data['paquetes-internacionales'] = $this->getProductosCategoriaInicio(3);

				$data['page_title'] = NOMBRE_EMPRESA." - ". $data['paquetes-internacionales'][0]['nombrecategoriatres'];
				$data['page_name'] = "Internacionales";
			 
				$this->views->getView($this,"internacionales",$data);  
			
		}

	}
 ?>
