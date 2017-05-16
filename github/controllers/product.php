<?php

class Product{



    public function httpGetMethod(){


        $view= new Template();

        $view->loadView('product');
    }

    public function httpPostMethod(){

        $view= new Template();

        $view->loadView('product');
    }
}