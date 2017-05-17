<?php
class TeaModel{


	function listAll(){

		$db = new Database();

		$sql='SELECT * FROM tea';

		return $db->query($sql);
	}
}