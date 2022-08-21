<?php

/* Anyone one cannot use any page of admin without login because header is available in all page*/

include'../lib/Session.php';
Session::checkSession();

?>





<?php include'../config/config.php';  ?>

<?php include'../lib/Database.php';  ?>

<?php include'../helpers/Format.php';  ?>



<?php

$db=new Database();

?>


<?php
if(!isset($_GET['delpostid']) || $_GET['delpostid']== NULL){
    echo"<script>window.location='postlist.php';</script>";
}else{
    $postid=$_GET['delpostid'];
/* akhane select query calano hoeche jate image ta nie aste pari ar image upload folder theke delete korte hbe tai unlink use kora hoeche*/

    $query="select * from tbl_post where id='$postid' ";
    $getData=$db->select($query);
    if($getData){
    	while($delimg=$getData->fetch_assoc()){
   $dellink=$delimg['image'];
   unlink($dellink);
    	}
    }

  $delquery="delete from tbl_post where id='$postid'";
  $delData=$db->delete($delquery);
  if($delData){
  	echo"<script>alert('Data Deleted Successfully.');</script>";
  	echo"<script>window.location='postlist.php';</script>";
  }else{
     echo"<script>alert('Data Deleted Successfully.');</script>";
  	echo"<script>window.location='postlist.php';</script>";	
  }
}

?>