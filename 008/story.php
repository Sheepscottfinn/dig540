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
    $q = $db ->prepare('SELECT * FROM '' WHERE ''= ?');

    $q->execute(array($id));
    if($item = $q->fetch()){
      $theme = new Story($item['media'],$item['contributor'], $item['story_name'])
      return $theme;
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

public function delete($$_media,$contributor,$_story_name=''){
  global $db;
  if($db){
    $db->begin transaction();
    $q = $db->prepare('DELETE * FROM 'story' WHERE id = ?');
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

public static function story_list
  ($dsn = 'mysql:dbname=heroncro_story';host=local;port=3306);
  $db-.beginTransaction();
  $q->execute(array($id));
  if($item = $q->fetch())  {
  (1, 'river lee in cork'),
  (2, 'grandad'),
  (3, 'spring festival'),
  (4, 'first communion'),
  (5, 'at the quay in cork',),
  (6, 'growing up in germany'),
  (7, 'cold and different'),
  (8, 'exchange studies at uc cork'),
  (9, 'patrick street in cork city center'),
  (10, 'walking cork'),
  (11, 'cycling cork'),
  (12, 'bringing traditions'),
  (13, 'southwest cork pub music'),
  (14, 'cork talk'),
  (15, 'shop');
}{
$db->commit();
return true;

return false;
}
public static function find($target){
  global $db;

  if($db){
    $db->beginTransaction();
  $statement = $db ->execute('SELECT * FROM 'story' WHERE 'story_name'= ? AND 'cork'=?');
  $statement2 = $db ->execute('SELECT * FROM 'story' WHERE 'name=:name' AND 'radio'=: 'radio'');
  $statement3 = $db ->execute('SELECT * FROM 'story' WHERE 'story_name' AND 'media'=?');
}
{
$story = $q->fetchAll(PDO::FETCH_CLASS, 'stoy');
$media = $q->fetchALL(PDO::FETCH_CLASS, 'media');
$contributor = $q->fetchAll(PDO::FETCH_CLASS, 'contributor');
$db->commit();
return  true;
return false;
}

public function create(){
    global $db;

    if($db){
      $db->beginTransaction();

      $q = $db->prepare('INSERT INTO 'story' (media, contributor, story_name) VALUES (?,?,?)');
      try{
        $q->execute(array($this->media,this->contributor this->story_name));
      }catch(PDOExeptuib $e){
        print_r($e);
        $db->rollback();
        return false;
      }
      $this->id = $db->lastInsertID();
        $db->commit();
        return true;
    }
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
