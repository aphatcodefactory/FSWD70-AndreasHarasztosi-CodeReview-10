<?php
ob_start();
session_start();

require_once 'classes/Database.php';
require_once 'dbconnect.php';

$biglib->updateRow(
	'media',
	"isbn = '".$_POST['isbn']."', 
	title = '".$_POST['title']."',
	 type = '".$_POST['type']."',
	 status = ".$_POST['status'],
	 " WHERE mediaID = ".$_GET['id']);

header('Location: ./');