<?php
class Servicios extends Controllers{
    public function __construct(){
        parent::__construct();
    }

    public function servicios(){
       // echo "mensaje desde el controlador";
       $data['page_tag'] = "Servicios";
       $data['page_title'] = "MasterDent | Servicios en Odontología General y Especializada - Servicios";
       $data['page_name'] = "servicios";
       $data['page_content'] = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas sequi rerum debitis reiciendis qui fugiat corrupti beatae neque repellendus enim! Aliquam quos consequuntur cupiditate culpa animi dicta beatae delectus magni.";
       $this->views->getView($this,"servicios",$data);
    }

}
?>