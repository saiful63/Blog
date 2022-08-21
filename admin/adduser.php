<?php
include'inc/header.php';

?>


<?php
include'inc/sidebar.php';

?>

<?php
//index.php ta gie url a adduser.php likle admin chara ar kew access nite parbe

if (!Session::get('userRole')=='0') {
    echo"<script>window.location='index.php';</script>";
}

?>


        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Add New User</h2>
               <div class="block copyblock"> 

<?php

//User role creation by admin

if($_SERVER['REQUEST_METHOD']=='POST'){
  $username=$fm->validation($_POST['username']);
  $password=$fm->validation(md5($_POST['password']));
  $email=$fm->validation($_POST['email']);

  $role=$fm->validation($_POST['role']);



    $username=mysqli_real_escape_string($db->link,$username);

    $password=mysqli_real_escape_string($db->link,$password);

    $email=mysqli_real_escape_string($db->link,$email);

    $role=mysqli_real_escape_string($db->link,$role);

    /* validation is done and css is written in layout.css*/

    if(empty($username) || empty($password) || empty($role) || empty($email)) {

        echo"<span class='error'>Field must not be empty.</span>";
    }


  else{

//Check email i s exist or not for add user
    $mailquery="select * from tbl_user where email='$email' limit 1";
    $mailcheck=$db->select($mailquery);
    if($mailcheck != false){
        echo"<span class='error'>Email Already Exist!</span>";
    }
  //end Check email i s exist or not for add user

    else{
        $query = "INSERT INTO `tbl_user` ( `username`, `password`,`email`, `role`) VALUES ( '$username', '$password','$email', '$role');";

    $catinsert=$db->insert($query);

    if($catinsert){
     echo"<span class='success'>User created Successfully.</span>";   
 }else{

   echo"<span class='error'>User Not Created!</span>";
 
    }
}
}
}

?>
                 <form action=""method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <label>Username</label>
                            </td>
                            <td>
                                <input type="text" name="username"placeholder="Enter Username..." class="medium" />
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <label>Password</label>
                            </td>
                            <td>
                                <input type="text" name="password"placeholder="Enter Password..." class="medium" />
                            </td>
                        </tr>


             <tr>
                            <td>
                                <label>Email</label>
                            </td>
                            <td>
                                <input type="text" name="email"placeholder="Enter Valid Email..." class="medium" />
                            </td>
                        </tr>
                        


                    <tr>
                            <td>
                                <label>Username</label>
                            </td>
                            <td>
                <select id="select" name="role">
                    <option>Select User Role</option>
                   
                   <option value="0">Admin</option>

                   <option value="1">Author</option><!--akhane value=1 hoai data insert er somoi value=1 insert hbe-->

                   <option value="2">Editor</option>

                </select>   
                            </td>
                        </tr>



						<tr>
                        <td></td> 
                            <td>
                                <input type="submit" name="submit" Value="Create" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
        
        <?php
include'inc/footer.php';

?>