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
  
  
<!--all my code mirror things    by hill-->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="codemirror-5.40.0/lib/codemirror.js"></script>
	<link rel="stylesheet" href="codemirror-5.40.0/lib/codemirror.css">
	
	<style>
	.CodeMirror {
		border: 2px inset #dee;
	}	
	</style>  
	    
	<script src="codemirror-5.40.0/mode/javascript/javascript.js"></script>
	<script src="codemirror-5.40.0/mode/clike/clike.js"></script>
	<script src="codemirror-5.40.0/mode/cmake/cmake.js"></script>
	
	<script src="codemirror-5.40.0/addon/hint/show-hint.js"></script>
	<script src="codemirror-5.40.0/addon/hint/css-hint.js"></script>
	<link rel="stylesheet" href="codemirror-5.40.0/addon/hint/show-hint.css">
	<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
  
  
<!-- Jquery  -->
    <script src="https://code.jquery.com/jquery.min.js"></script> 
 

<!-- viedo player -->
	<script src="https://unpkg.com/videojs-fla	sh/dist/videojs-flash.js"></script>
	<script src="https://unpkg.com/videojs-contrib-hls/dist/videojs-contrib-hls.js"></script>
	<link href="https://unpkg.com/video.js/dist/video-js.css" rel="stylesheet">
	<script src="https://unpkg.com/video.js/dist/video.js"></script>
	<script src="https://unpkg.com/videojs-contrib-hls/dist/videojs-contrib-hls.js"></script>


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
              <a class="nav-link" href="#nao">Nao</a>
            </li>
         
            <li class="nav-item">
              <a class="nav-link" href="#zenbo">Zenbo</a>
            </li>
               <li class="nav-item">
              <a class="nav-link" href="#robottinno">Robottinno</a>
            </li>
          </ul>
          <a href="#" class="btn btn-outline-success my-2 my-sm-0"  data-toggle="modal" data-target="#login-modal">Login</a>
        </div>
      </nav>
    </header>
   
   
<!-- 	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
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
      </div>     -->
    
<!-- viedo player -->
	<div align="center" >
	 <video id="my_video_1" class="video-js vjs-default-skin" controls preload="auto"  data-setup='{}' width="640" height="400" controls>
	  <source
	     src="C:/Users/Kai/eclipse-workspace/myfinalproject/src/main/webapp/videotemp/myvideostreaming.m3u8"
	     type="application/x-mpegURL">
	</video>
	</div>

<hr>
<CENTER>
<!-- file uploader (connect to Uploadservlet)    -->
	<form action="uploader" method="post" enctype="multipart/form-data" >
		<!--<input type="text" name="description" />  --> 
		<input type="file"
			name="file" /> <br><input type="submit" />
			
	</form>
</CENTER>
<hr>

<CENTER>
	<form action="helloServlet" method="post">
		Enter your package name: <input type="text" name="yourName" size="20">
		<br><input type="submit" value="Call Servlet" />
		<form action="Stop" method="post">
			<input type="submit" value="Stop" />
		</form>
	</form>
</CENTER>	
	










<!-- myIDE form -->
<!-- 	<form>
		<textarea id="code" name="code">	
#include <iostearm>
using namespace std;
		
void main(){
	printf("hello world");
	return 0;
}
		
		</textarea>
	</form>

mybtn 
	<input type="button" onclick="myFunction()" value="clear"></input>
	<input type="button" onclick="myFunction2()" value="save"></input>
	<input type="button" onclick="writehtml()" value="writehtml"></input>
	
unfinished -- my IDE  write to html function 
	<form action="mytest" method="post">
		<div id="data" name="data"></div>
		<input type="button" onclick="writehtml()" value="save"></input>
		<input type="submit" value="go" />
	</form>

unfinished --  script for code mirror ide
	<script>
var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
	lineNumbers : true,
	matchBrackets : true,
	mode : "text/x-c++src",
	lineNumbers : true,
	extraKeys : {
		"Ctrl-Space" : "autocomplete"
	}
});

		function myFunction() {
			editor.setValue('');
		}

		function writehtml() {
			// your CodeMirror textarea ID
			var textToWrite = document.getElementById("code").value;
			var textToWrite = textToWrite.replace(/\n/g, "\r\n");
			
			
			
			document.getElementById("data").innerHTML = textToWrite;
			//document.getElementById("data").firstChild.nodeValue = textToWrite;

			$.post('mytest', function(textToWrite) {
				alert(textToWrite);
			});
		}

		function myFunction2() {
			// your CodeMirror textarea ID
			var textToWrite = document.getElementById("code").value;
			// preserving line breaks
			var textToWrite = textToWrite.replace(/\n/g, "\r\n");

			var textFileAsBlob = new Blob([ textToWrite ], {
				type : 'text/plain'
			});

			// filename to save as
			var fileNameToSaveAs = "mycode.txt";

			var downloadLink = document.createElement("a");
			downloadLink.download = fileNameToSaveAs;

			// hidden link title name
			downloadLink.innerHTML = "LINKTITLE";

			window.URL = window.URL || window.webkitURL;

			downloadLink.href = window.URL.createObjectURL(textFileAsBlob);

			downloadLink.onclick = destroyClickedElement;
			downloadLink.style.display = "none";
			document.body.appendChild(downloadLink);
			downloadLink.click();
		}

		function destroyClickedElement(event) {
			document.body.removeChild(event.target);
		}
	</script> 
	-->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script> 	


</body>
</html>