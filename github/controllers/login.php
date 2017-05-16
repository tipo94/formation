<?php

class Login{



	public function httpGetMethod(){


		$view= new Template();

		$view->loadView('login');
	}

	public function httpPostMethod(){

		$view= new Template();

		$view->loadView('login');
	}
}