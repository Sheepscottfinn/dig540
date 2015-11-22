<?php
class STORY{
  private $id;
  private $media;
  private $contributor;
  private $story_name;

  //creating a new story name

    public function _construct($_media,$_contributor,$_story_name='') {
      if(empty($_story_name)) return false;

      $this->media = $_media;
      $this->contributor = $_contributor;
      $this->story_name = $_story_name;
    }
public static function read($id){
  global $db;

  if($db){
    $q = $db->prepare('SELECT * FROM  WHERE id = ?');
    $q->execute(array($id));
    if($item = $q->fetch()){
      $story = new Story($item['media'],$item['contributor'], $item['story_name']);
      return $item;
    }
  }
  return false;
}

public function update($_media,$_contributor,$_story_name='') {
  if(empty($_story_name)) return false;

  $this->media = $_media;
  $this->contributor = $_contributor;
  $this->story_name = $_story_name;
}

public function delete($_media,$contributor,$_story_name=''){
  global $db;
  if($db){
    $db->beginTransaction();
    $q = $db->prepare('DELETE * FROM "story" WHERE id = ?');
    try{
      $q = execute(array(id));
    }
    catch(PDOException $e) {
      print_r($e);
      $db->rollback();
      return true;
    }
    $d->commit();
  }
  return false;
}

public static function find($target){
  global $db;

  if($db){
    $db->beginTransaction();
  $statement = $db ->execute('SELECT * FROM "story" WHERE "story_name"= ? AND "cork"=?');
  $statement2 = $db ->execute('SELECT * FROM "story" WHERE "story_name" AND "radio"=?');
  $statement3 = $db ->execute('SELECT * FROM "story"WHERE "story_name" AND "media"=?');
}
{
$story = $q->fetchAll(PDO::FETCH_CLASS, 'story');
$media = $q->fetchALL(PDO::FETCH_CLASS, 'media');
$contributor = $q->fetchAll(PDO::FETCH_CLASS, 'contributor');
$db->commit();
}
return  true;
return false;
}
public function create(){
    global $db;
    if($db){
      $db->beginTransaction();
      $q = $db->prepare('INSERT INTO "story" (media, contributor, story_name) VALUES (?,?,?)');
      try{
        $q->execute(array($this->media, $this->contributor, $this->story_name));
      }
      catch(PDOExeption $e){
        print_r($e);
        $db->rollback();
        return false;
      }
      $this->id = $db->lastInsertID();
        $db->commit();
      }
        return true;
    return false;
  }
    public function setID($newID){
      if(empty($newID)) return false;

      $this->id = $newID;
      return $this ->id;
    }
    public function getID(){
      return $this->id;
    }
  public function setMedia($newMedia){
      if(empty($newMedia)) return false;

      $this->media_id = $newMedia;
      return $this->media;
  }
  public function getMedia(){
    return $this->media;
  }
  public function setContributor($newContributor){
      if(empty($newContributor)) return false;

      $this->contributor = $newContributor;
      return $this->contributor;
  }
  public function getContributor(){
    return $this->contributor;
  }
  public function setStory($newStory){
    if(empty($newStory)) return false;

    $this->story_name = $newStory;
    return $this->story_name;
  }

  public function getStory(){
    return $this->story_name;
  }
}
?>
