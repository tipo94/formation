<?php

class Login{



	public function httpGetMethod(){


		$view= new Template();

		$view->loadView('login');
	}

	public function httpPostMethod(){

		try{

			$userModel = new UserModel();

			$userModel->signIn($_POST['email'], $_POST['password']);

			header('location:'.$_SERVER['SCRIPT_NAME']);
			exit();
		}
		catch(Exception $e){

			echo $e->getMessage();

			$view= new Template();

			$view->loadView('login');
		}
	}
}
