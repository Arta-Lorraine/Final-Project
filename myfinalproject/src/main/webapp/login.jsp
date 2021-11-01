<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="my robot lab">
    <meta name="author" content="">    
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >   
    <link href="bootstrap/bootstrap-4.1.3/site/docs/4.1/examples/carousel/carousel.css" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery.min.js"></script> 
    
<!-- firebase -->	
	<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>        
	<script src="https://www.gstatic.com/firebasejs/5.7.2/firebase.js"></script>
	<script>
  // Initialize Firebase
  	var config = {
   	apiKey: "AIzaSyCifQkvzz4sJsn4nY8Z91LRDlpFQCkDlfY",
    authDomain: "robot-lab-7afcb.firebaseapp.com",
    databaseURL: "https://robot-lab-7afcb.firebaseio.com",
    projectId: "robot-lab-7afcb",
    storageBucket: "robot-lab-7afcb.appspot.com",
    messagingSenderId: "284162821058"
  	};
  	firebase.initializeApp(config);
  	
  	 /* Handle 建立使用者方法 */

    var create_error_func = function(error) {
              var errorCode     = error.code;
              var errorMessage  = error.message;
              alert("建立失敗:"+errorMessage);  
    }
    var create_success_func = function(error) {
              alert("建立成功");  
    }           
    /* Handle 使用者登入方法 */
    var login_error_func = function(error) {
              var errorCode     = error.code;
              var errorMessage  = error.message;
              alert("登入失敗:"+errorMessage);  
    }
    var login_success_func = function(error) {
              alert("登入成功");  
    }            
    $(document).ready(function(){
        /* 建立使用者 */
        $("#create_user").click(function(){
            var email       = $('#create_email').val();
            var password    = $('#create_password').val(); 
            firebase.auth().createUserWithEmailAndPassword(email,password).then(create_success_func).catch(create_error_func);
        });     
        /* 登入使用者 */
        $("#login_user").click(function(){
            var email       = $('#login_email').val();
            var password    = $('#login_password').val(); 
            firebase.auth().signInWithEmailAndPassword(email, password).then(login_success_func).catch(login_error_func);
        });            
    });    
	</script>
    
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">




    <link rel="stylesheet" href="css/loginsystem.css" >   


</head>
<body>

 <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="index.jsp">Robot Lab  </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
              <a class="nav-link" href="#nao">Nao</a>
            </li>
         
            <li class="nav-item">
              <a class="nav-link" href="#zenbo">Zenbo</a>
            </li>
               <li class="nav-item">
              <a class="nav-link" href="#robottinno">Robottinno</a>
            </li>
          </ul>
          <a href="login.jsp" class="btn btn-outline-success my-2 my-sm-0"  data-toggle="modal"  >Login</a>

        </div>
      </nav>
    </header>
       




<form action="mylogintest" method="post">
<!--   <div class="imgcontainer">
      <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div> -->

  <div class="container">
    <label for="name"><b>Username</b></label>
    <input type="text" id="login_email" placeholder="Enter Username" name="name" required>

    <label for="pw"><b>Password</b></label>
    <input type="password" id="login_password" placeholder="Enter Password" name="pw" required>

    <button id="login_user">Login</button>
<!--     <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label> -->
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw"> <a href="#"> Forgot password?</a></span>
  </div>
</form>












<!-- 

<a href="#" data-toggle="modal" data-target="#login-modal">Login</a>

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Login to Your Account</h1><br>
				  <form>
					<input type="text" name="user" placeholder="Username">
					<input type="password" name="pass" placeholder="Password">
					<input type="submit" name="login" class="login loginmodal-submit" value="Login">
				  </form>
					
				  <div class="login-help">
					<a href="#register">Register</a> - <a href="#">Forgot Password</a>
				  </div>
				</div>
			</div>
</div>


 -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script> 	

</body>
</html>