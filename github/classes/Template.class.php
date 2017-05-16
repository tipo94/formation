<?php
class Template{


	function loadView($template, array $variables=[]){

			$wwwUrl= str_replace('index.php', 'views/', $_SERVER['SCRIPT_NAME']);
			$requestUrl= $_SERVER['SCRIPT_NAME'];
			if(count($variables)>0){

				foreach ($variables as $key => $value) {
					$$key=$value;
				}
			}
			include __DIR__."/../views/LayoutView.phtml";
	}

}
