
 <?php

    if (isset($_POST['submit'])) {
      
      include "../inc/dbh.inc.php";
      $name = $_POST['fname'];
      $uname = $_POST['uname'];
      $email = $_POST['email'];
      $blood = $_POST['blood'];
      $license = $_POST['dlicense'];
      $contact = $_POST['contact'];
      $address = $_POST['address'];
      $file = $_FILES['file'];
      $pwd = $_POST['pwd']; 
      $status = $_POST['status'];  
      $dstatus = $_POST['dstatus'];      

      //echo $name;
      //echo $username;
      //echo $email;
     // echo $blood;
      //echo $license;
      //echo $contact;
      //echo $address;
      //echo $pwd;
      //print_r($file);

      //gettinf file details
      $filename = $_FILES['file']['name'];
      $filetype = $_FILES['file']['type'];
      $filetmploc = $_FILES['file']['tmp_name'];
      $fileerror = $_FILES['file']['error'];
      $filesize = $_FILES['file']['size'];

      //image validation
      $fileext = explode('.', $filename);
      $fileactualext = strtolower(end($fileext));
      $allowed = array('jpg', 'jpeg', 'png', 'jfif');

      if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        header("Location: ../dsignup.php?error=invalidemail");
        exit();
      } elseif (!filter_var($contact, FILTER_VALIDATE_INT)) {
        header("Location: ../dsignup.php?error=invalidinteger");
        exit();
      } elseif (!preg_match("/^[6-9][0-9]{9}$/", $contact)) {
        header("Location: ../dsignup.php?error=invalidnumber");
        exit();
      }elseif (in_array($fileactualext, $allowed)) {
        if ($fileerror === 0) {
          
          $filenewname = uniqid('', true).".".$fileactualext;
          $filedestination = '../uploads/'.$filenewname;
          move_uploaded_file($filetmploc, $filedestination);

          $sql = "insert into deliveryboy (name, uname, email, bgroup, license, contact, address, profile, pwd, status, dstatus) values ('$name', '$uname', '$email', '$blood', '$license', '$contact', '$address', '$filenewname', '$pwd', '$status', '$dstatus');";
            mysqli_query($con, $sql);
            
            header("Location: ../dlogin.php?type=success");
            exit(); 

        } else {
          header("Location: ../dsignup.php?error=fileerror"); 
          exit(); 
        }
      } else {
       header("Location: ../dsignup.php?error=extnotallowed"); 
       exit(); 
      }
    }