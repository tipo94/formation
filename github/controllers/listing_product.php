<?php
class Listing_product{
    public function httpGetMethod(){

    	$teaModel= new TeaModel();
    	$teas=$teaModel->listAll();

    	$categoryModel = new CategoryModel();
    	$categories= $categoryModel->listAll();

        $view= new Template();
        $view->loadView('listing_product', ['teas'=>$teas, 'categories'=>$categories]);
    }
    public function httpPostMethod(){
        $view= new Template();
        $view->loadView('listing_product');
    }
}
