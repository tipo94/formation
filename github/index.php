<?php 

include __DIR__."/classes/UserSession.class.php";
include __DIR__."/classes/Template.class.php";
include __DIR__."/classes/Manager.class.php";


$manager= new Manager();

$manager->loadModels();

$manager->controllerCheck();

