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

    <div class="row">
                <div class="col-xs-12">
            <div class="panel panel-default"> 
            <div class="panel-heading">
                <div class="col-xs-11"><h4>WQCS Instruments</h4></div>
                <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addInstrumentPopup">Add</button>
            </div>
            <div class="panel-body">
                  <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                        <th></th>
                        <th>Type</th>
                        <th>Test</th>
                        <th>Serial Num</th>
                        <th>Last Cal</th>
                        <th>Last Maint</th>
                        <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" value=""></td>
                            <td>Sensor</td>
                            <td>pH</td>
                            <td>XXXXXXX</td>
                            <td>Date <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addCalibrationPopup" >Add</button></td>
                            <td>Date <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addMaintenancePopup">Add</button></td>
                            <td>Edit</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" value=""></td>
                            <td>Sonde</td>
                            <td>Depth</td>
                            <td>XXXXXXX</td>
                            <td>Date <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addCalibrationPopup" >Add</button></td>
                            <td>Date <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addMaintenancePopup">Add</button></td>
                            <td>Edit</td>
                        </tr>     
                    </tbody>
                    </table>
            </div>
        </div>
        </div>
    </div>
    
 <br>
</div>

<div class="modal fade bs-addInstrumentPopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Add/Edit Instrument</h4></div>
      <div class="modal-body">
            <div class="row">
            <label class="col-xs-2 control-label" align="right">Type:</label>
            <div class="col-xs-3">
                <select name="colors" class="form-control">
                <option value="Option1">Sonde</option>
                <option value="Option2">Sensor</option>
                <option value="Make this a query">Make it a query</option>
        </select>
            </div>
              <label class="col-xs-3 control-label" align="right">Test:</label>
            <div class="col-xs-3">
                <select name="colors" class="form-control">
                <option value="Option1">pH</option>
                <option value="Option2">Depth</option>
                <option value="Make this a query">Make it a query</option>
        </select>
            </div>
            </div><br>
            <div class="row">
            <label class="col-xs-2 control-label" align="right">Serial Num:</label>
            <div class="col-xs-3">
                <input type="text" class="form-control"/>
            </div>
              <label class="col-xs-3 control-label" align="right">Maintenance Period:</label>
            <div class="col-xs-3">
                 <input type="text" class="form-control"/>
            </div>
            </div><br>
            <div class="row">
            <div class="col-xs-3"></div>
              <label class="col-xs-2 control-label" align="right">Calibration Period:</label>
            <div class="col-xs-3">
                 <input type="text" class="form-control"/>
            </div>         
            </div>
 </div>
<br> 
    <div class="modal-footer center">
    <button type="button" class="btn btn-primary">Save</button>
    <button type="button" class="btn" data-dismiss="modal">Cancel</button>
    </div>
  </div>
</div>
</div>


<div class="modal fade bs-addMaintenancePopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Add Maintenance</h4></div>
      <div class="modal-body">
            <div class="row">
            <label class="col-xs-2 control-label" align="right">Maintenance Date:</label>
            <div class="col-xs-3">
                <input type="date" class="form-control"/>
            </div>
              <label class="col-xs-3 control-label" align="right">Comment:</label>
            <div class="col-xs-4">
                 <input type="text" class="form-control"/>
            </div>
            </div><br>
    </div>
<br> 
    <div class="modal-footer center">
    <button type="button" class="btn btn-primary">Save</button>
    <button type="button" class="btn" data-dismiss="modal">Cancel</button>
    </div>
  </div>
</div>
</div>

<div class="modal fade bs-addCalibrationPopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Add Calibration</h4></div>
      <div class="modal-body">
            <div class="btn-group" role="group" aria-label="...">
  <button type="button" class="btn btn-default">ICV</button>
  <button type="button" class="btn btn-default">CCV</button>
    </div>
<div class="row">
            <label class="col-xs-3 control-label" align="right">Calibration Date:</label>
            <div class="col-xs-3">
                <input type="date" class="form-control"/>
            </div>
              <label class="col-xs-3 control-label" align="right">Calibration Pass:</label>
            <div class="col-xs-3">
                 <input type="checkbox" value=""/>
            </div>
            </div><br>
            
            <div class="row">
            <label class="col-xs-3 control-label" align="right">Low Standard:</label>
            <div class="col-xs-3">
                <select name="colors" class="form-control">
                <option value="Blah">Query Standards</option>
                <option value="Option2">Standard 2</option>
                <option value="Make this a query">Make it a query</option>
        </select>
            </div>
              <label class="col-xs-3 control-label" align="right">High Standard:</label>
            <div class="col-xs-3">
                <select name="colors" class="form-control">
                <option value="Blah">Query Standards</option>
                <option value="Option2">Standard 2</option>
                <option value="Make this a query">Make it a query</option>
        </select>
            </div>
            </div><br>
            
            <div class="row">
            <label class="col-xs-3 control-label" align="right">Low Reading:</label>
            <div class="col-xs-3">
                <input type="text" class="form-control"/>
            </div>
              <label class="col-xs-3 control-label" align="right">High Reading:</label>
            <div class="col-xs-3">
                 <input type="text" class="form-control"/>
            </div>
            </div><br>
            
            <div class="row">
            <label class="col-xs-3 control-label" align="right">Bracket Pass:</label>
            <div class="col-xs-3">
                Bracket Pass/Fail
            </div>
              <label class="col-xs-3 control-label" align="right">Cal Criteria:</label>
            <div class="col-xs-3">
                 Report Cal Criteria
            </div>
            </div><br>
            
            
    </div>
<br> 
    <div class="modal-footer center">
    <button type="button" class="btn btn-primary">Save</button>
    <button type="button" class="btn" data-dismiss="modal">Cancel</button>
    </div>
  </div>
</div>
</div>



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
 
  </body>
</html>
