<?php

class ListProduct{



    public function httpGetMethod(){


        $view= new Template();

        $view->loadView('listing-product');
    }

    public function httpPostMethod(){

        $view= new Template();

        $view->loadView('listing-product');
    }
}