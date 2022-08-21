
<?php
/* title ke dynamic kora hoiche proti page onojae*/
if(isset($_GET['pageid'])){
	$pagetitleid=$_GET['pageid'];



/* fetch data from database for showing  new page  in front*/

$query="select * from tbl_page where id='$pagetitleid'";
$pages=$db->select($query);
if($pages){
    while($result=$pages->fetch_assoc()){?>

<title><?php  echo $result['name'];?>-<?php  echo TITLE;?></title>

<?php
}
}



}else{

/* here static page title is done dynamically*/
	?>

	<title><?php echo $fm->title();?>-<?php  echo TITLE;?></title>

<?php
}
	?>
	
<meta name="language" content="English">
	<meta name="description" content="It is a website about education">
	<?php
if(isset($_GET['pageid'])){
$Keywordid=$_GET['pageid'];
	$query="select * from tbl_post where id='$Keywordid'";
	$Keywords=$db->select($query);
	if($Keywords){
		while ($result=$Keywords->fetch_assoc()) {?>
			<meta name="keywords" content="<?php echo $result['tags'];?>">
	<?php	}
	}}else{?>

<meta name="keywords" content="<?php echo KEYWORDS;?>">

<?php	}


	?>
	<meta name="keywords" content="blog,cms blog">
	<meta name="author" content="Delowar">