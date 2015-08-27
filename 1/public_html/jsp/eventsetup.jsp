
<!DOCTYPE html>
<html ng-app="app">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/tab.css"/>
   <link rel="stylesheet" href="../css/style.css"/>
  <link rel="stylesheet" href="../css/bootstrap-select.css"/>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js"></script>
  <script src="../js/jquery.color-RGBa-patch.js"></script>
    <script src="../js/example.js"></script>
    
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  
  </head>

  <body>

    <div class="container">
    <br>

<header>
<jsp:include page="header.jsp" />
</header>
<!--<div class="jumbotron">-->
 <div class="panel panel-default"> 
             <div class="panel-heading">
               <div><h4>Events</h4></div>
              
            </div>


<br>

	<ul class="nav nav-tabs ">
			<li class="active">
			<a href="#tab-eventsetup" data-toggle="tab">Event Setup</a>
			</li>
			<li>
			<a href="#tab-fielddata" data-toggle="tab">Field Data</a>
			</li>
			
			</ul>
			<div id="content" class="tab-content">
				<div class="tab-pane active" id="tab-eventsetup">
                                        <jsp:include page="eventSetupData.jsp" />
					</div>

					<div class="tab-pane" id="tab-fielddata">
                                        <jsp:include page="fielddataaccordion.jsp" />
                                        </div>

     

</div>
</div>
<!--</div>-->
</div>

  
  
  



  
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
     
</body>
</html>