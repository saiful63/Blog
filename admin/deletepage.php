<?php

/* Anyone one cannot use any page of admin without login because header is available in all page*/

include'../lib/Session.php';
Session::checkSession();

?>





<?php include'../config/config.php';  ?>

<?php include'../lib/Database.php';  ?>





<?php

$db=new Database();

?>


<?php
if(!isset($_GET['delpage']) || $_GET['delpage']== NULL){
    echo"<script>window.location='index.php';</script>";
}else{
    $pageid=$_GET['delpage'];
/* akhane select query calano hoeche jate image ta nie aste pari ar image upload folder theke delete korte hbe tai unlink use kora hoeche*/

    
  $delquery="delete from tbl_page where id='$pageid'";
  $delData=$db->delete($delquery);
  if($delData){
  	echo"<script>alert('Data Deleted Successfully.');</script>";
  	echo"<script>window.location='index.php';</script>";
  }else{
     echo"<script>alert('Data Deleted Successfully.');</script>";
  	echo"<script>window.location='index.php';</script>";	
  }
}

?>