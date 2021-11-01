<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=BIG5">




    <link rel="stylesheet" href="css/loginsystem.css" >   

<title>Insert title here</title>
</head>
<body>





	<form action="helloServlet" method="post">
		Enter your package name: <input type="text" name="yourName" size="20">
		<input type="submit" value="Call Servlet" />
	</form>
	
	<form action="Stop" method="post">
		<input type="submit" value="Stop" />
	</form>












<form action="mylogin" method="post">
<!--   <div class="imgcontainer">
      <img src="img_avatar2.png" alt="Avatar" class="avatar">IO4
  </div> -->

  <div class="container">
    <label for="name"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="name" required>

    <label for="pw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pw" required>

    <button type="submit">Login</button>
<!--     <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
      .
    </label> -->
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw"> <a href="#"> Forgot password?</a></span>
  </div>
</form>




</body>
</html>