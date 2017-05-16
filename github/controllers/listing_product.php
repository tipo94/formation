<?php
class Listing_product{
    public function httpGetMethod(){
        $view= new Template();
        $view->loadView('listing_product');
    }
    public function httpPostMethod(){
        $view= new Template();
        $view->loadView('listing_product');
    }
}