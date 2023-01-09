<?php
require_once("Models/TCategoriauno.php");
require_once("Models/TProducto.php");

class Inicio extends Controllers{

    public function __construct(){
        parent::__construct();
    }

    use TCategoriauno,TCategoriaDos,TCategoriaTres,TProducto;

    public function inicio(){
       
/* dep($this->selectProductos()); */
       $data['page_tag'] = "Inicio";
       $data['page_title'] = "Página Principal";
       $data['page_name'] = "inicio";
       $data['slider'] = $this->getCategoriaUnoT(CAT_SLIDER);
       $data['banner'] = $this->getCategoriaUnoT(CAT_BANNER);
       $data['categoria'] = $this->getCategoriaDosT();
       $data['categoriatres'] = $this->getCategoriaTresT(CATEGORIA_TRES);
 
       $data['productos'] = $this->getProductosCategoriaInicio(1);
       $data['paquetes-internacionales'] = $this->getProductosCategoriaInicio(3);
      
       $this->views->getView($this,"inicio",$data);
    }

}
?>