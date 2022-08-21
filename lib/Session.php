<?php

class Session{
	public static function init(){
		session_start();
	} 

	public static function set($key,$val){
		$_SESSION[$key]=$val;

	}

	public static function get($key){
     

   if(isset($_SESSION[$key])){


   return $_SESSION[$key];


   }else{
   	return false;
   }
   
    

	}

	/*Check user and password is available after login in every page*/

	public static function checkSession(){
		self::init();
		if(self::get("login")==false){
           self::destroy();
           header("Location:login.php");
		}
	}

/*login korar por kew login.php te enter korte parbe na sejonno a method ta kora*/

	public static function checkLogin(){
		self::init();
		if(self::get("login")==true){
           
           header("Location:index.php");
		}
	}

public static function destroy(){
	session_destroy();
	header("Location:login.php");
}

}


?>