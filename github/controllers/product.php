<?php

class Product{



    public function httpGetMethod(){

    	if(array_key_exists('id', $_GET)){
    		$id=$_GET['id'];
    	}
    	else
    	{
    		$id=1;
    	}
        $view= new Template();
        $teaModel= new TeaModel();
  		$tea=$teaModel->listone($id);

        $view->loadView('product', ['tea'=>$tea]);
    }

    public function httpPostMethod(){

        $view= new Template();

        $view->loadView('product');
    }
}
