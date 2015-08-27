<!DOCTYPE HTML>
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
<header>
<jsp:include page="header.jsp" />
</header>
<br>
    <div class="panel panel-default"> 
        <div class="panel-heading">
            <div class="col-xs-11"><h4>Calibration Criteria</h4></div>
                <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addSamplerPopup">Edit</button>
        </div>
        <div class="panel-body">
              <div class="row">
                <label class="col-xs-2 control-label" align="right">Temperature:</label>
                <div class="col-xs-3">
                    some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">deg C</label>
                
                <label class="col-xs-2 control-label" align="right">Temperature 2:</label>
                <div class="col-xs-3">
                    some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">deg C</label>
            </div><br>
            
            <div class="row">
                <label class="col-xs-2 control-label" align="right">DO:</label>
                <div class="col-xs-3">
                    some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">mg/L</label>
                
                <label class="col-xs-2 control-label" align="right">pH</label>
                <div class="col-xs-3">
                    some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">s.u.</label>
            </div><br>
            
             <div class="row">
                <label class="col-xs-2 control-label" align="right">Conductivity:</label>
                <div class="col-xs-3">
                   some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">%</label>
                
                <label class="col-xs-2 control-label" align="right">Depth</label>
                <div class="col-xs-3">
                    some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">m</label>
            </div><br>
            
             <div class="row">
                <label class="col-xs-2 control-label" align="right">BGA/Chlorophyll</label>
                <div class="col-xs-3">
                    some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">unit</label>
                
                <label class="col-xs-2 control-label" align="right">fdom</label>
                <div class="col-xs-3">
                    some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">unit</label>
            </div><br>
            
             <div class="row">
                <label class="col-xs-2 control-label" align="right">Turbidity:</label>
                <div class="col-xs-3">
                    some saved value
                </div>
                <label class="col-xs-1 control-label" align="left">%</label>
                

            </div><br>
        </div>
    </div>

</div>



<div class="modal fade bs-addSamplerPopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Edit Calibration Criteria</h4></div>
      <div class="modal-body">
<div class="panel-body">
              <div class="row">
                <label class="col-xs-2 control-label" align="right">Temperature:</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">deg C</label>
                
                <label class="col-xs-2 control-label" align="right">Temperature 2:</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">deg C</label>
            </div><br>
            
            <div class="row">
                <label class="col-xs-2 control-label" align="right">DO:</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">mg/L</label>
                
                <label class="col-xs-2 control-label" align="right">pH</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">s.u.</label>
            </div><br>
            
             <div class="row">
                <label class="col-xs-2 control-label" align="right">Conductivity:</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">%</label>
                
                <label class="col-xs-2 control-label" align="right">Depth</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">m</label>
            </div><br>
            
             <div class="row">
                <label class="col-xs-2 control-label" align="right">BGA/Chlorophyll</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">some unit</label>
                
                <label class="col-xs-2 control-label" align="right">fdom</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">some unit</label>
            </div><br>
            
             <div class="row">
                <label class="col-xs-2 control-label" align="right">Turbidity:</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"/>
                </div>
                <label class="col-xs-1 control-label" align="left">%</label>
                

            </div><br>
        </div>

</div>
<br> 
    <div class="modal-footer center">
    <button type="button" class="btn btn-primary">Save</button>
    <button type="button" class="btn" data-dismiss="modal">Cancel</button>
    </div></div></div></div>
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
 
  </body>
</html>
