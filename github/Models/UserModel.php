<?php

class UserModel{


	public function signUp($name, $email, $password){

		$db = new Database();

		$result=$db->queryOne('SELECT id FROM user WHERE email=?', [$email]);

		if($result!=false){

			throw new Exception('adresse email déjà enregistrée');
		}

		$sql='INSERT INTO `user`( `name`, `email`, `pass`) VALUES (?,?,?)';

		$db->executeSql($sql, [$name,$email,$this->hashPassword($password)]);

	}

	public function signIn($email, $password){


		$db = new Database();

		$result= $db->queryOne('SELECT id, name, email, pass FROM user WHERE email=?', [$email]);

		if($result==false){
			throw new Exception('adresse email inconnue');

		}

		if($result['pass']!=crypt($password, $result['pass'])){

			throw new Exception('Mot d epasse faux');
		}

		$userSession= new UserSession();

		$userSession->create($result['id'], $result['name'], $result['email']);
	}
	private function hashPassword($password)
    {

  	
        $salt = '$2y$11$'.substr(bin2hex(openssl_random_pseudo_bytes(32)), 0, 22);

   
        return crypt($password, $salt);
    }
}