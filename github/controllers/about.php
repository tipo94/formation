<?php

class About{
    
    public function httpGetMethod(){


		$view= new Template();

		$view->loadView('about');
	}

	public function httpPostMethod(){

		$view= new Template();

		$view->loadView('about');
	}
    
}

