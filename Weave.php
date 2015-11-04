<?php
  class Weave{
    private $draft;
    private $numbersheds;

public function setDraft($draftName){
  //error checking happens here
  $this->draft = $draftName;
  }

public function getDraft(){
  echo $this->draft;
  }
}
 ?>
