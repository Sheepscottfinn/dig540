<?php
$dsn = 'mysql:dbname=heroncro_folklore';host=local;port=3306;
$name = 'heroncro@localhost';
$pass = '.&s}w_#6g#+n';

$db = false;

//connect to the database

try {
  $db=new PDO($dsn, $name, $pass);
  $db->setAttributes(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOexception $e) {
  die('Could not connect to the database:<br/>', $e);
}
?>
