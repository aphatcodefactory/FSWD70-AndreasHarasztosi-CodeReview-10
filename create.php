<?php

require_once 'classes/Database.php';
require_once 'dbconnect.php';

if (isset($_POST['save']) && !empty($_POST['save'])) {

	echo $biglib->insertTbl('media', array(
	'isbn', 'fk_authorID', 'title', 'discription', 'fk_publisherID', 'type', 'status', 'img_link'),
	array($_POST['isbn'], $_POST['fk_authorID'], $_POST['title'], $_POST['discription'],
			$_POST['fk_publisherID'], $_POST['type'], 0, $_POST['imglink']));

	header('Location: ./');
}
