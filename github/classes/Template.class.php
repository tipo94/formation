<?php
class Template{


	function loadView($template, array $variables=[]){

			$wwwUrl= __DIR__."/../views/";
			$requestUrl= __DIR__."/../controllers/";
			if(count($variables)>0){

				foreach ($variables as $key => $value) {
					$$key=$value;
				}
			}
			include __DIR__."/../views/LayoutView.phtml";
	}

}
