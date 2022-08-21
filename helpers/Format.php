<?php


/*here post shorten and date functionality is used*/

class Format{

	public function formatDate($date){

		return date('F j,Y, g:i a',strtotime($date));

	}


 public function textShorten($text,$limit=400){
   
   $text=$text." ";

   $text=substr($text,0,$limit);

 $text=substr($text,0,strrpos($text,' '));
   $text=$text."....";

   return $text;

 }

 /* Login form validation of Login.php page*/

 public function validation($data){
   
   $data=trim($data);
   $data=stripcslashes($data);
   $data=htmlspecialchars($data);
   return $data;
 }

 /* This method is for static  page title dynamic like contact and home page*/

 public function title(){
   $path=$_SERVER['SCRIPT_FILENAME'];
   $title=basename($path,'.php');
   if($title=='index'){
    $title='home';
   }elseif($title=='contact'){
      $title='contact';
   }

   return $title=ucwords($title);
 }

}

?>