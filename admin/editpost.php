<?php

/* In this page edit option is done of postlist page*/

include'inc/header.php';

?>


<?php
include'inc/sidebar.php';

?>

<?php
if(!isset($_GET['editpostid']) || $_GET['editpostid']== NULL){
    echo"<script>window.location='postlist.php';</script>";
}else{
    $postid=$_GET['editpostid'];
}

?>



        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Update Post</h2>
<?php

if($_SERVER['REQUEST_METHOD']=='POST'){

    $title=mysqli_real_escape_string($db->link,$_POST['title']);
    $cat=mysqli_real_escape_string($db->link,$_POST['cat']);

    $body=mysqli_real_escape_string($db->link,$_POST['body']);

    $tags=mysqli_real_escape_string($db->link,$_POST['tags']);

    $author=mysqli_real_escape_string($db->link,$_POST['author']);


$userid=mysqli_real_escape_string($db->link,$_POST['userid']);

$permited=array('jpg','jpeg','png','gif');
$file_name=$_FILES['image']['name'];
$file_size=$_FILES['image']['size'];

$file_temp=$_FILES['image']['tmp_name'];


/*$photo=explode('.',$_FILES['photo']['name']);
 $photo=end($photo);

 $photo_name=$username.'.'.$photo;

move_uploaded_file($file_name, "upload/");*/



$div=explode('.',$file_name);
$file_ext=strtolower(end($div));
$unique_image=substr(md5(time()),0,10) .'.'.$file_ext;
$uploaded_image="upload/".$unique_image; 

if($title=="" || $cat=="" ||$body=="" ||$tags=="" ||$author==""  ){
  echo"<span class='error'>Field must not be empty</span>";
}
else{
if(!empty($file_name)){


if($file_size>1048567){
   echo"<span class='error'>Image should be less than !MB!</span>";
}elseif(in_array($file_ext,$permited)===false){
echo"<span>You can upload only:".implode($permited)."</span>";
}


else{
   /*postlist.php er edit click er maddome editpost.php te update er kaj somapto hoiche*/
    
    move_uploaded_file($file_temp, $uploaded_image);
    $query="UPDATE tbl_post
     SET
     cat='$cat',
     title='$title',
     body='$body',
     image='$uploaded_image',
     author='$author',
     tags='$tags',
     userid='$userid'
     WHERE id='$postid'
    ";

    $updated_row=$db->update($query);

    if($updated_row){
        echo"<span class='success'>Data Updated Successfully</span>";
    }else{
        echo"<span class='error'>Data not Updated</span>";
    }
}
}else{

    /*postlist.php er edit click er maddome editpost.php te update er kaj somapto hoiche but akhane image chara update korte caile ai functionality kaj korbe*/
   $query="UPDATE tbl_post
     SET
     cat='$cat',
     title='$title',
     body='$body',
    
     author='$author',
     tags='$tags',
     userid='$userid'
     WHERE id='$postid'
    ";

    $updated_row=$db->update($query);

    if($updated_row){
        echo"<span class='success'>Data Updated Successfully</span>";
    }else{
        echo"<span class='error'>Data not Updated</span>";
    }
}
}

}

?>
<div class="block">

<?php
$query="select * from tbl_post where id='$postid' order by id desc";
$getpost=$db->select($query);

while($postresult=$getpost->fetch_assoc()){
?>               
<form action="" method="post" enctype="multipart/form-data">
<table class="form">
                       
<tr>
 <td>
<label>Title</label>
</td>
<td>
<input type="text" value="<?php echo $postresult['title'];?>" name="title"class="medium" />
     </td>
 </tr>
                     
     <tr>
         <td>
 <label>Category</label>
    </td>
    <td>
<select id="select"  name="cat">
                                    <option value="1"> Select Category</option>
<?php
/* taking data from table tabl_category*/

$query="select * from tbl_category";
$category=$db->select($query);
if($category){
    while($result=$category->fetch_assoc()){


?>

                                  
<option

<?php

/* select er moddo theke kono akta category dorar jonno ata kora hoiche*/

if($postresult['cat']==$result['id']){
    echo "selected='selected'";
}
?>


 value="<?php echo $result['id'];?>"> 

 <?php echo $result['name'];?>
     
 </option>


<?php 
    }
}
?>
                                    
                                </select>
                            </td>
                        </tr>
                   
                    
                       
                        <tr>
                            <td>
                                <label>Upload Image</label>
                            </td>
                            <td>
                                <img src="<?php echo $postresult['image'];?>" height="80px" width="200px">
                                <br>
                                <input type="file" name="image" />
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding-top: 9px;">
                                <label>Content</label>
                            </td>
                            <td>
                                <textarea class="tinymce" name="body">
                                     <?php echo $postresult['body'];?>
                                </textarea>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label>Tags</label>
                            </td>
                            <td>
                                <input type="text"  value="<?php echo $postresult['tags'];?>" name="tags"class="medium" />
                            </td>
                        </tr>
                     
                     <tr>
                            <td>
                                <label>Author</label>
                            </td>
                            <td>
                                <input type="text"  value="<?php echo $postresult['author'];?>" name="author"class="medium" />

                                <input type="hidden"  name="userid"value="<?php echo Session::get('userId')?>"class="medium" />
                            </td>
                        </tr>
                     



						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>

<?php

}
?>
                </div>
            </div>
        </div>
        
<!-- Load TinyMCE -->
    <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            setupTinyMCE();
            setDatePicker('date-picker');
            $('input[type="checkbox"]').fancybutton();
            $('input[type="radio"]').fancybutton();
        });
    </script>


                <?php
include'inc/footer.php';

?>


