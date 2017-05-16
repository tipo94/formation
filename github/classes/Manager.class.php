<?php

class Manager{


	protected $view;

	public function __construct(){

		$this->view= new Template();
	}
	function controllerCheck(){


		if(array_key_exists('PATH_INFO', $_SERVER)){
			
			$path=$_SERVER['PATH_INFO'];
			include __DIR__."/../controllers/".$path.".php";

			
			$controller=ucfirst ( ltrim($path,'/'));
			$manage= new $controller();

			if($_SERVER['REQUEST_METHOD']=='GET'){
				

				$manage->httpGetMethod();
			}
			else
			{

				$manage->httpPostMethod();
			}
		}
		else
		{
			$this->view->loadView('home');
		}
	}

}