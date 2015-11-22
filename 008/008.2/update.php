<?php
    require_once('config.php');
    require_once('Docents.php');

    if(isset($_POST['submit'])){
    $docents = new Docents($_POST['name'], $_POST['contact'],
    $_POST['availability'],$_POST['specialty'],$POST['research']);
    $docents->update();
  }
?>
<html>
  <head>
    <title>Update Docent</title>
  </head>
  <body>
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
      <input type="submit" name="submit" value="submit"></input><br/>
    </form>


      </body>
</html>
