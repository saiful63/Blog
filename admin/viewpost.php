<?php

/* In this page edit option is done of postlist page*/

include'inc/header.php';

?>


<?php
include'inc/sidebar.php';

?>

<?php
if(!isset($_GET['viewpostid']) || $_GET['viewpostid']== NULL){
    echo"<script>window.location='postlist.php';</script>";
}else{
    $postid=$_GET['viewpostid'];
}

?>



        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Update Post</h2>
<?php

if($_SERVER['REQUEST_METHOD']=='POST'){
echo"<script>window.location='postlist.php';</script>";

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
<input type="text" value="<?php echo $postresult['title'];?>" readonly class="medium" />
     </td>
 </tr>
                     
     <tr>
         <td>
 <label>Category</label>
    </td>
    <td>
<select id="select">
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
                                <label>Image</label>
                            </td>
                            <td>
                                <img src="<?php echo $postresult['image'];?>" height="100px" width="250px">
                                <br>
                                
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
                                <input type="text"  value="<?php echo $postresult['tags'];?>" readonly class="medium" />
                            </td>
                        </tr>
                     
                     <tr>
                            <td>
                                <label>Author</label>
                            </td>
                            <td>
                                <input type="text"  value="<?php echo $postresult['author'];?>" readonly class="medium" />

                                
                            </td>
                        </tr>
                     



						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Ok" />
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


