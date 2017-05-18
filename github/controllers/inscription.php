<?php

class Inscription{


	function httpGetMethod(){

		$view= new Template();

		$view->loadView('inscription');

	}


	function httpPostMethod(){


		try{

			$userModel = new UserModel();

			$userModel->signUp($_POST['name'], $_POST['email'], $_POST['password']);

			header('location:'.$_SERVER['SCRIPT_NAME']);
			exit();
		}
		catch(Exception $e){

			echo $e->getMessage();

			$view= new Template();

			$view->loadView('inscription');
		}


	}


}