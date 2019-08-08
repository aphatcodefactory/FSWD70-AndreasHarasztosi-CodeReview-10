<?php
ob_start();
session_start();

require_once 'classes/Database.php';
require_once 'dbconnect.php';

$biglib->deleteRow('media', 'WHERE mediaID = '.$_GET['id'].';');
header('Location: ./');