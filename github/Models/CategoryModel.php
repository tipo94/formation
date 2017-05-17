<?php

class CategoryModel{


	function listAll(){

		$db = new Database();

		return $db->query('SELECT * FROM category');
	}
}