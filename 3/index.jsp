<!DOCTYPE html>
<html ng-app="app">
<head>

    <title>Water Quality Control System</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />
	<link rel="stylesheet" href="css/style.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
	<!-- jQuery easyUI --><!--  
<script type="text/javascript" src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>-->
<meta charset="UTF-8">

  </head>

  <body>
  
  <header>
		<nav class="navbar navbar-default" role="navigation">
                
  <div class="container">
<div class="center">
 <h1>Water Quality Collection System</h1>
</div>
</div>
</nav>

	</header>




			<section>
                        <div id="main"  >
                     <!--
                         <br><br><br><br> <br><br><br><br>
                    <br><br> <br><br><br><br> <br><br>-->
                      
                        <div class="absolute-center center " >
                      
              <form method="POST" target="">
             <font size="4px">  <b> Login</b></font><br><br>
              
              <b>Username:</b>    <input type="text"  >
              <br><br>
              <b>Password:</b> <input type="password"><br><br>
              <button type="button" id="submit" class="btn btn-primary">Login</button>
              </form>
                 </div>       
                   
                        <!-- 
                          <br><br><br><br> <br><br><br><br><br> <br><br><br><br>
                       -->
                    
                       </div></section>
<div class="footer-note">
	<!-- Copyright   © 2015 <a href="#">SJRWMD</a>  -->
        
         <div style="position: fixed; bottom: 5px; left: 0px; right: 0px;width:100%" align="center" >
         Copyright  &#169; 2015 <a href="#">SJRWMD</a>
       </div>


</div>
</footer>

	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
	<script src="app.js"></script>


<script>
  document.getElementById("submit").onclick = function () {
        location.href = "../wqcs/jsp/dashboard.jsp";
    };
    
    /*
$(document).ready(function(){
   document.body.style.backgroundPosition="bottom left"; 
   document.getElementById("non-opac").style.opacity = "0.9";
});
   */

</script>

  </body>
  
  
</html>