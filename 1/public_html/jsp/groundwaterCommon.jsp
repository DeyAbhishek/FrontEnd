<html ng-app="app">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
 
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
         <h3>Groundwater Event</h3></div>
       <br><label class="col-xs-3" align="right">Station ID:</label>
       <div class="col-xs-2" >StationIDfromQuery</div> 
           </div></div>

  <div class="panel-body">
    <div class="row">
    <label class="col-xs-3 control-label" align="right">Collection Date:</label>
    <div class="col-xs-2">
      <input type="date" class="form-control" placeholder="From Date" />
    </div>
    <label class="col-xs-3 control-label" align="right">Collection Time:</label> 
      <div class="col-xs-2">
        <input type="time"class="form-control" placeholder="From Time" /></div>
             </div> <br>
    
     <div class="row">
    <label class="col-xs-2 control-label" align="right">Measuring Point Elev:</label>
      <div class="col-xs-2">
       <input type="text" class="form-control"/> 
      </div>
  

   
      <label class="col-xs-2 control-label"  align="right">Casing Diameter:</label>
      <div class="col-xs-2">
          <select name="colors" class="form-control">
                <option value="Option1">Option 1</option>
                <option value="Option2">Option 2</option>
                <option value="Make this a query">Make it a query</option>
          </select>
      </div>
      <label class="col-xs-2 control-label" align="right">Total Depth:</label>
      <div class="col-xs-2">
        <input type="text" class="form-control"/> 
            
      </div>  
      </div>
      <br>
            
         <div class="row">    
       <label class="col-xs-2 control-label" align="right">Depth to Collection:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Depth to Water:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Stickup:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div> 
      </div>
      <br>
       <div class="row">
             <label class="col-xs-2 control-label" align="right">Purge Rate:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Color:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Sulfur Odor:</label>
        <div class=" radio-inline col-xs-2">
        
    
  <label class="radio-inline"><input type="radio" name="optradio">Yes</label>
<label class="radio-inline"><input type="radio" name="optradio">No</label>
            
      </div>   
      </div><br><br>
      
      <div class="row">    
       <label class="col-xs-2 control-label" align="right">Water Column Height:</label>
        <div class="col-xs-2">
        Report WCH              
      </div>
       <label class="col-xs-2 control-label" align="right">Well Capacity:</label>
        <div class="col-xs-2">
        Report WCap
        </div>
       <label class="col-xs-2 control-label" align="right">Min. Purge Volume:</label>
        <div class="col-xs-2">
        Report MPV
        </div> 
      </div>
      
       <div class="row">    
       <label class="col-xs-2 control-label" align="right">1 Well Purge Vol:</label>
        <div class="col-xs-2">
        Report 1 WPV              
      </div>
       <label class="col-xs-2 control-label" align="right">1/4 Well Purge Vol:</label>
        <div class="col-xs-2">
        Report 1/4 WPV
        </div>
       <label class="col-xs-2 control-label" align="right">Min. Purge Time:</label>
        <div class="col-xs-2">
        Report MPTime
        </div> 
      </div>
      <br>
       <div class="row">    
       <label class="col-xs-2 control-label" align="right">Time Purge Begin:</label>
        <div class="col-xs-2">
         <input type="time"class="form-control" placeholder="From Time" />          
      </div>
       <label class="col-xs-2 control-label" align="right">Time Purge Stop:</label>
        <div class="col-xs-2">
        <input type="time"class="form-control" placeholder="From Time" />
        </div>
       <label class="col-xs-2 control-label" align="right">Well Volumes Purged:</label>
        <div class="col-xs-2">
        Report WVP
        </div> 
      </div>
      
      
       <div class="row">
 
      <br><br> 
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