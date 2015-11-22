<?php

$dsn = 'mysql:dbname=heroncro_Docents;host=localhost;port=3306';
$name = 'heroncro_dbhoppe';
$pass = '8ah!iC{FnmSV';
$db = false;
//connect to the database
try {
  $db=new PDO($dsn, $name, $pass);
  $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOexception $e) {
  die('Could not connect to the database:<br/>'. $e);
}
?>
