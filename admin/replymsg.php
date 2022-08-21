<?php
include'inc/header.php';

?>


<?php
include'inc/sidebar.php';

?>


<?php
if(!isset($_GET['msgid']) || $_GET['msgid']== NULL){
    echo"<script>window.location='inbox.php';</script>";
}else{
    $id=$_GET['msgid'];
}

?>


        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>View Message</h2>
<?php

/* New page crete in dashboard*/

if($_SERVER['REQUEST_METHOD']=='POST'){

    $to=$fm->validation($_POST['toEmail']);
    $from=$fm->validation($_POST['fromEmail']);
    $sub=$fm->validation($_POST['sub']);
    $message=$fm->validation($_POST['message']);
    
    $sendmail=mail($to,$sub,$message,$from);

    if($sendmail){
        echo"<span class='success'>Message Sent Succesfully</span>";
    }
    else{
        echo"<span class='error'>Something went wrong!</span>";
    }

}

?>
                <div class="block">               
                 <form action="" method="post" enctype="multipart/form-data">

                    <?php


 $query="select * from tbl_contact where id='$id'";
 $msg=$db->select($query);
 if($msg){
    
    while($result=$msg->fetch_assoc()){
        
 


                        ?>


                    <table class="form">
                       
                       
                         <tr>
                            <td>
                                <label>To</label>
                            </td>
                            <td>
                                <input readonly type="text" value="<?php  echo $result['email'];?>" name="toEmail"class="medium" />
                            </td>
                        </tr>


                         <tr>
                            <td>
                                <label>From</label>
                            </td>
                            <td>
                                <input  type="text" placeholder="Enter your Email..." name="fromEmail" class="medium" />
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <label>Subject</label>
                            </td>
                            <td>
                                <input  type="text" placeholder="Enter your Subject..." name="sub"class="medium" />
                            </td>
                        </tr>
                   
                    
                       
                       
                        <tr>
                            <td style="vertical-align: top; padding-top: 9px;">
                                <label>Message</label>
                            </td>
                            <td>
                                <textarea class="tinymce" name="message">
                                    <?php  echo $result['body'];?>

                                </textarea>
                            </td>
                        </tr>

                        
                     
                     
                     



						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Send" />
                            </td>
                        </tr>
                    </table>
<?php
}}
?>
                    </form>
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


