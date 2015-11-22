<?php
require_once('config.php');
require_once('Docents.php');

if(isset($_POST['submit'])){
  $docents = new Docents($_POST['name'], $_POST['contact'],
  $_POST['availability'],$_POST['specialty'],$POST['research']);
$docents->create();
}
?>

<html>
  <head>
    <title>Docents</title>
  </head>
  <body>
    FIND Docent in Database:<br/><br/>
    <form method="POST" action="">
    Enter Docent name:
    <input type="text" name="name"></input><br/>
    Enter Docent contact information:
    <input type="text" name="contact"></input><br/>
  Enter docent in schedule:
      <input type="text" name="availability"></input><br/>
  Enter docent specialty:
    <input type="text" name="specialty"></input><br/>
Enter Docent research interests:
      <input type="text" name="research"></input><br/>

      <input type="submit" name="submit" value="submit docent information"></input><br/>
    </form>


<?php
    require_once('config.php');
    require_once('Docents.php');

    if(isset($_POST['submit'])){
    $docents = new Docents($_POST['name'], $_POST['contact'],
    $_POST['availability'],$_POST['specialty'],$POST['research']);
    $docents->update();
  }
?>
<head>
    <title>Update Docent</title>
  </head>

    Update Docent in Database:<br/><br/>
    <form method="POST" action="">
      Enter new Docent name:
      <input type="text" name="name"></input><br/>
      Update contact information:
      <input type="text" name="contact"></input><br/>
      Update schedule availability:
      <input type="text" name="availability"></input><br/>
      Update new specialty:
        <input type="text" name="specialty"></input><br/>
      Update research interest:
        <input type="text" name="research"></input><br/>
      <input type="submit" name="submit" value="update information"></input><br/>
    </form>




<?php
require_once('config.php');
require_once('Docents.php');

if(isset($_POST['submit'])){
$docents = new Docents($_POST['name'], $_POST['contact'],
$_POST['availability'],$_POST['specialty'],$POST['research']);
$docents->delete();
}
?>
<head>
    <title>Delete Docent Information</title>
</head>
  Delete Docent from schedule:<br/><br/>
    <form method="POST" action="">
    Delete contact information:
      <input type="text" name="contact"></input><br/>
      Delete schedule for docent:
      <input type="text" name="availability"></input><br/>
    Delete docent specialty:
      <input type="text" name="specialty"></input><br/>
      <input type="submit" name="submit" value="delete information"></input><br/>
    </form>
  </body>
  </html>
