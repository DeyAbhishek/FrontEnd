<html ng-app="app">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../css/style.css"/></script>
  <link rel="stylesheet" href="../css/bootstrap-select.css"/></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js"></script>
    
  </head>
<body>
<div class="container">
<br>

<div class="panel panel-default">
  <div class="panel-heading">
    <div class="panel-title row">
         
         <div class="col-xs-7">
         <h3>Field Reading Data</h3></div>
       <br><label class="col-xs-3"  align="right">Station ID:</label>
       <div class="col-xs-2" >
         Queried ID
       </div> 
           </div></div>

  <div class="panel-body">
    <div class="row">
        <label class="col-xs-3 control-label" align="right">Collection Time:</label> 
        <div class="col-xs-2">
            <input type="time"class="form-control" placeholder="From Time" /></div>
        <label class="col-xs-3 control-label" align="right">Collection Depth:</label>
       <div class="col-xs-2">
      <input type="text" class="form-control"/>
    </div> 
             </div> <br>
    
          
         <div class="row">    
       <label class="col-xs-2 control-label" align="right">Water Temp:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">pH:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">DO:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div> 
      </div>
      <br>
       <div class="row">
             <label class="col-xs-2 control-label" align="right">DO % Sat:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Conductivity:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Salinity:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div>   
      </div><br>
       <div class="row">
  <label class="col-xs-2 control-label" align="right">Blue-Green Algae:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Chlorophyll:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Turbidity:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div></div>  
    
      <br>
      <div class="row">
  <label class="col-xs-2 control-label" align="right">Battery:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       </div>  
      
      <br> 
        <div class="center">
     <button type="button" class="btn btn-primary">Save</button>
      <button type="button" class="btn">Cancel</button>
     </div>
     <br>
    

      </div>
  </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
  </div>
  </div>
  </body>
</html>
