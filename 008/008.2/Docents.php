<?php
class SDocents{
  private $id;
  private $name;
  private $contact;
  private $availability;
  private $specialty;
  private $research;

  //creating a new docent file

    public function _construct($_name,$_contact,$_availability, $_specialty,$_research='') {
      if(empty($name)) return false;

      $this->name = $_name;
      $this->contact = $_contact;
      $this->availability = $_availability;
      $this->specialty = $_specialty;
      $this->research = $_research;
    }
public static function read($id){
  global $db;

  if($db){
    $q = $db->prepare('SELECT * FROM  WHERE id = ?');
    $q->execute(array($id));
    if($item = $q->fetch()){
      $docents = new Docent($item['name'],$item['contact'],
      $item['availability'],$item['specialty'],$item['research']);
      return $item;
    }
  }
  return false;
}

public function update($_name,$_contact,$_availability,$_specialty,$_research='') {
  if(empty($_story_name)) return false;

  $this->name = $_name;
  $this->contact = $_contact;
  $this->availability = $_availability;
  $this->specialty = $_specialty;
  $this->research = $_research;
}

public function delete($_name,$_contact,$_availability,$_specialty,$_research=''){
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
  $statement = $db ->execute('SELECT * FROM "docents" WHERE "name"= ? AND "contact"=?');
  $statement2 = $db ->execute('SELECT * FROM "docents" WHERE "availability" AND "specialty"=?');
  $statement3 = $db ->execute('SELECT * FROM "docents"WHERE "name" AND "research"=?');
}
{
$docents= $q->fetchAll(PDO::FETCH_CLASS, 'docents');
$name = $q->fetchALL(PDO::FETCH_CLASS, 'name');
$contact = $q->fetchAll(PDO::FETCH_CLASS, 'contact');
$availability = $q->fetchALL(PDO::FETCH_CLASS, 'availability');
$specialty = $q->fetchALL(PDO::FETCH_CLASS, 'specialty');
$research = $q->fetchALL(PDO::FETCH_CLASS, 'research');

$db->commit();
}
return  true;
return false;
}
public function create(){
    global $db;
    if($db){
      $db->beginTransaction();
      $q = $db->prepare('INSERT INTO "docents" (name, contact, availability,specialty,research) VALUES (?,?,?)');
      try{
        $q->execute(array($this->name, $this->contact, $this->availability, $this->specialty, $this->research));
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
  public function setName($newName){
      if(empty($newName)) return false;

      $this->name = $newName;
      return $this->name;
  }
  public function getName(){
    return $this->name;
  }
  public function setContact($newContact){
      if(empty($newContact)) return false;

      $this->contact = $newContact;
      return $this->contact;
  }
  public function getContact(){
    return $this->contact;
  }
  public function setAvailability($newAvailability){
    if(empty($newAvailability)) return false;

    $this->availability= $newAvailability;
    return $this->Availibility;
  }

  public function getAvailibility(){
    return $this->availability;
  }
  public function setSpecialty($newCSpecialty){
      if(empty($newSpecialty)) return false;

      $this->specialty = $newSpecialty;
      return $this->specialty;
  }
  public function getSpecialty(){
    return $this->specialty;
  }
  public function setResearch($newResearch){
      if(empty($newResearch)) return false;

      $this->research = $newResearch;
      return $this->research;
  }
  public function getResearch(){
    return $this->research;
  }
}
?>
