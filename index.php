<html>
  <head>
    <title>Weaves</title>
  </head>
<body>
  <form method="POST" action="">

  What Weave are you looking for;
  <input type="text" name"draft"></input>
  <input type="submit" name="submit" value="submit"></input>
</form><br />
<form method = "POST" action="">

  How many shafts?;
  <input type="num" name"shaft"></input>
  <input type="submit" name="submit" value="submit"></input>
</form><br />

<?php

require_once('Weave.php');

if(isset($_POST['draft']) && $_POST['draft'] !=''){
  $myWeave = new Weave();
  $myWeave->setDraft($_POST['draft']);
    echo "The weave draft you want is...<br />";
$myWeave->getDraft();
} else
{
  echo "Please enter a draft name and number of shafts for more information";
}


?>

  </body>
</html>
