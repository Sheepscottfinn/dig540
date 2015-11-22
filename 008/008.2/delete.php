<?php
require_once('config.php');
require_once('Docents.php');

if(isset($_POST['submit'])){
$docents = new Docents($_POST['name'], $_POST['contact'],
$_POST['availability'],$_POST['specialty'],$POST['research']);
$docents->delete();
}
?>
<html>
  <head>
    <title>Delete Docent Information</title>
  </head>
  <body>
  Delete Docent from schedule:<br/><br/>
    <form method="POST" action="">
    Delete contact information:
      <input type="text" name="contact"></input><br/>
      Delete schedule for docent:
      <input type="text" name="availability"></input><br/>
    Delete docent specialty:
      <input type="text" name="specialty"></input><br/>
      <input type="submit" name="submit" value="submit"></input><br/>
    </form>
  </body>
  </html>
