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
                <div class="col-xs-11"><h4>WQCS Standards and Preservatives</h4></div>
                <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addStandardPopup">Add</button>
            </div>
                  <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><input type="checkbox" value=""></th>
                            <th>Type</th>
                            <th>Serial Number</th>
                            <th>Date Received</th>
                            <th>Date Opened</th>
                            <th>Expiration Date</th>
                            <th>Office</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" value=""></td>
                            <td>Conductivity</td>
                            <td>Serial Number</td>
                            <td>Date Received</td>
                            <td>Date Opened</td>
                            <td>Expiration</td>
                            <td>Office</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" value=""></td>
                            <td>pH 7</td>
                            <td>Serial Number</td>
                            <td>Date Received</td>
                            <td>Date Opened</td>
                            <td>Expiration</td>
                            <td>Office</td>
                        </tr>  
                    </tbody>
                    </table>
            </div>
        </div>
        


<div class="modal fade bs-addStandardPopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Add/Edit Standard</h4></div>
      <div class="modal-body">
            <div class="row">
            <label class="col-xs-2 control-label" align="right">Type:</label>
            <div class="col-xs-3">
                <select name="colors" class="form-control">
                <option value="Option1">Standard</option>
                <option value="Option2">Preservative</option>
                <option value="Make this a query">Other</option>
        </select>
            </div>
              <label class="col-xs-3 control-label" align="right">Test:</label>
            <div class="col-xs-3">
                <select name="colors" class="form-control">
                <option value="Option1">pH</option>
                <option value="Option2">Conductivity</option>
                <option value="Make this a query">Etc</option>
        </select>
            </div>
            </div><br>
            <div class="row">
            <label class="col-xs-2 control-label" align="right">Serial Num:</label>
            <div class="col-xs-3">
                <input type="text" class="form-control"/>
            </div>
              <label class="col-xs-3 control-label" align="right">Expiration Date:</label>
            <div class="col-xs-3">
                 <input type="text" class="form-control"/>
            </div>
            </div><br>
            <div class="row">
            <label class="col-xs-2 control-label" align="right">Receive Date:</label>
            <div class="col-xs-3">
                <input type="text" class="form-control"/>
            </div>
              <label class="col-xs-3 control-label" align="right">Open Date:</label>
            <div class="col-xs-3">
                 <input type="text" class="form-control"/>
            </div>
            </div><br>
            
            <div class="row">
            <div class="col-xs-3"></div>
              <label class="col-xs-2 control-label" align="right">Office:</label>
            <div class="col-xs-3">
                 <select name="colors" class="form-control">
                <option value="Option1">Palatka</option>
                <option value="Option2">Palm Bay</option>
                <option value="Make this a query">Apopka</option>
        </select>
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




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
 
  </body>
</html>
