<?php
include'inc/header.php';

?>


<?php
include'inc/sidebar.php';

?>

<?php
if(!isset($_GET['pageid']) || $_GET['pageid']== NULL){
    echo"<script>window.location='index.php';</script>";
}else{
    $id=$_GET['pageid'];
}

?>

        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Edit Page</h2>
<?php

/* data taken from tbl_page and show into addpage.php input field */

if($_SERVER['REQUEST_METHOD']=='POST'){

    $name=mysqli_real_escape_string($db->link,$_POST['name']);
    $body=mysqli_real_escape_string($db->link,$_POST['body']);

    











if($name=="" || $body==""){
  echo"<span class='error'>Field must not be empty</span>";
}



else{
   
     $query="update tbl_page set name='$name',body='$body' where id='$id'";

    $updated_row=$db->update($query);
    if($updated_row){
        echo"<span class='success'>Page Updated Successfully</span>";
    }else{
        echo"<span class='error'>Page  not Updated</span>";
    }
}


}

?>
                <div class="block">  


                        <?php
$pagequery="select * from tbl_page where id='$id'";
 $pagedetail=$db->select($pagequery);

  if($pagedetail){
   while($result=$pagedetail->fetch_assoc()){
                 
 ?>             
<form action="" method="post" enctype="multipart/form-data">
 <table class="form">
<tr>
    <td>
<label>Title</label>
    </td>
    <td>
    <input type="text" value="<?php echo $result['name'];?>" name="name"class="medium" />
    </td>
    </tr>
                     
                   
                    
                       
                       
<tr>
<td style="vertical-align: top; padding-top: 9px;">
<label>Content</label>
</td>
<td>
<textarea class="tinymce" name="body">

<?php echo $result['body'];?>
</textarea>
</td>
</tr>

                        
                     
                     
                     



<tr>
<td></td>
<td>
 <input type="submit" name="submit" Value="Update" />
 <a onclick="return confirm('Are you sure to delete the page!');"href="deletepage.php?delpage=<?php echo $result['id'];?>">Delete</a>
</td>
</tr>
</table>
</form>
<?php }}?>
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


