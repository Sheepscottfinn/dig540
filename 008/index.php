<?php
require_once('config.php');
require_once('story.php');

if(isset($_POST['submit'])){
  $theme = newStory($_POST['media'], $_POST['contributor'], $_POST['story_name']);
$theme->create();
}
?>

<html>
  <head>
    <title>Story</title>
  </head>
  <body>
    FIND oral history stories in Database:<br/><br/>
    <form method="POST" action="">
      Find your story in which Media:
      <input type="text" name="media"></input><br/>
      Find your story by Contributor:
      <input type="text" name="contributor"></input><br/>
      Enter the story name:
      <input type="text" name="story_name"></input><br/>
      <input type="submit" name="submit" value="submit"></input><br/>
    </form>
</body>
</html>

<?php
    require_once('config.php');
    require_once('story.php');

    if(isset($_POST['submit'])){
      $theme = newStory($_POST['media'], $_POST['contributor'], $_POST['story_name']);
    $theme->update();
    }
?>
<html>
  <head>
    <title>Update Story</title>
  </head>
  <body>
    Update oral history stories in Database:<br/><br/>
    <form method="POST" action="">
      Enter your story in Media type:
      <input type="text" name="media"></input><br/>
      Update a Contributor:
      <input type="text" name="contributor"></input><br/>
      Update a story:
      <input type="text" name="story_name"></input><br/>
      <input type="submit" name="submit" value="submit"></input><br/>
    </form>

<?php if(isset($theme)){ ?>
  <p>The story entered was"<?php echo $theme->story; ?>". It was given ID <?php echo $theme->id ?> in the database</p>
  <?php} else{
    $theme = Story::read(1);
    ?>
    <p>The story entered was "<?php echo $theme->story;?>".It was given ID <?php echo $theme->id ?> in the database</p>
<?php} ?>
      </body>
</html>

<?php
require_once('config.php');
require_once('story.php');

if(isset($_POST['submit'])){
  $theme = newStory($_POST['media'], $_POST['contributor'], $_POST['story_name']);
$theme->delete();
}
?>
<html>
  <head>
    <title>Delete Story</title>
  </head>
  <body>
  Delete storiy from Database:<br/><br/>
    <form method="POST" action="">
    Delete a Media type:
      <input type="text" name="media"></input><br/>
      Delete a Contributor:
      <input type="text" name="contributor"></input><br/>
    Delete a story:
      <input type="text" name="story_name"></input><br/>
      <input type="submit" name="submit" value="submit"></input><br/>
    </form>
  </body>
  </html>
