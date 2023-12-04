<?php
include 'header.php';
?>

<div class="jumbotron">
	<h1>Hi Guest,<br> Welcome to <span style="color:green;">Fresh Food Court'</span></h1>
	<p class="pt-3" style="font-size: 21px;">Get started by creating your account</p>
</div>
   

   <div class="container">
   	<div class="row">
   	<div class="login col-md-6">
   	  <form method="POST" action="inc/signup.inc.php" class="pb-5" enctype="multipart/form-data">
   	  	<legend style="border: 1px solid black; border-radius: 6px; color: black; font-size: 20px; font-weight: 500; margin: 0 auto;" class="pl-3 pr-3 pb-3 pt-1" >Create Account
      	<div class="form-group">
      	 <label>Full Name</label>
      		<input type="text" name="fname" autocomplete="off" placeholder="Your Full Name" class="form-control">
      	</div>
      	<div class="form-group">
      	 <label>Username</label>
      		<input type="text" name="uname" autocomplete="off" placeholder="username" class="form-control">
      	</div>
      	<div class="form-group">
      	 <label>Email</label>
      		<input type="text" name="email" autocomplete="off" placeholder="Email" class="form-control">
      	</div>
      	<div class="form-group">
      	 <label>Contact No</label>
      		<input type="text" name="contact" autocomplete="off" placeholder="Contact Number" class="form-control">
      	</div>
      	<div class="form-group">
      	 <label>Address</label>
      		<input type="text" name="address" autocomplete="off" placeholder="Your Address" class="form-control">
      	</div>
      	<div class="form-group">
      	 <label>Password</label>
      	    <input type="password" name="pwd" autocomplete="off" placeholder="password" class="form-control">
            <input type="hidden" value="../uploads/defaultprofile.png" name="avatar">
      	</div>
      		<button class="btn btn-default btn-md" name="submit">Signup</button>
           <span class="pl-2 pr-2" style="font-weight: 700; font-size: 15px;">Or</span>
      		<a class="btn btn-default btn-md" href="login.php">Login</a>
      	</legend>
      </form>
     </div>
     </div>
    </div>


<?php
 include 'footer.php';
?>