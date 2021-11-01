<!DOCTYPE html>
<html lang="en">
  <head>
  <title>Robot labs</title>
  
  
  
    <!-- all the bootstrap things    by hill-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="my robot lab">
    <meta name="author" content="">    
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >   
    <link href="bootstrap/bootstrap-4.1.3/site/docs/4.1/examples/carousel/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="loginstyle.css">
    
    <script src="https://code.jquery.com/jquery.min.js"></script> 
 

</head>
<body>    

<!-- header -->
    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="index.jsp">Robot Lab  </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
              <a class="nav-link" href="#nao.jsp">Nao</a>
            </li>
         
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">Zenbo</a>
            </li>
               <li class="nav-item">
              <a class="nav-link" href="#robottinno">Robottinno</a>
            </li>
          </ul>
       
          <a href="login.jsp" class="btn btn-outline-success my-2 my-sm-0"   >Login</a>
    <!--       <form class="form-inline mt-2 mt-md-0" data-toggle="modal" data-target="#login-modal" >          
            <button class="btn btn-outline-success my-2 my-sm-0"  >Login</button>
          </form> -->
      
        </div>
      </nav>
    </header>
       
<!--     <a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
 -->    
    
<!--  				  <div class="testpage">
					<a href="testpage.jsp">testing page</a>
				  </div> -->
    
        
    <!-- main fade     by hill -->
    <main role="main">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img  src="picture/nao5.jpg" alt="Nao pic." class="first-slide" witch="1080" height="1920" >
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Nao</h1>
                <p>Info.</p>
<!--                 <p><a class="btn btn-lg btn-primary" href="#nao.jsp" role="button">Try it</a></p>
 -->              </div>
            </div>
          </div>
          <div class="carousel-item">
<!--             <img class="second-slide" src="" alt="Second slide">
 -->            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Zenbo</h1>
                <p></p>
                <p><a class="btn btn-lg btn-primary" href="login.jsp" role="button">Try it</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Robottinno</h1>
                <p></p>
<!--                 <p><a class="btn btn-lg btn-primary" href="#robottinno" role="button">Try it</a></p>
 -->              </div>
            </div>
          </div>
        </div>    
    </div>
    </main>
    
    
    



<!-- unfinished   ---     login modal       by hill -->
<!-- <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
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
</div> -->
    
 
 
 
    

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script> 	



</body>
</html>