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
                <div class="col-xs-11"><h4>WQCS Users</h4></div>
                <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addSamplerPopup">Add</button>
            </div>
            
            

            
                  <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                        <th></th>
                        <th>Name</th>
                        <th>Initials</th>
                        <th>Agency</th>
                        <th>Role(s)</th>
                        <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" value=""></td>
                            <td>Elizabeth Mace</td>
                            <td>EM</td>
                            <td>21FLSJWM</td>
                            <td>Sampler; Database Manager</td>
                           <td align="center"><button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target=".bs-addSamplerPopup">Edit</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" value=""></td>
                            <td>Rick Breed</td>
                            <td>RB</td>
                            <td>21FLSJWM</td>
                            <td>Sampler</td>
                            <td align="center"><button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target=".bs-addSamplerPopup">Edit</button></td>
                        </tr>     
                    </tbody>
                    </table>
            </div>
        

    </div>
    



<div class="modal fade bs-addSamplerPopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Add/Edit Users</h4></div>
      <div class="modal-body">
            <div class="row">
            <label class="col-xs-2 control-label" align="right">ID:</label>
            <div class="col-xs-3">
                <input type="text" class="form-control"/>
            </div>
              <label class="col-xs-3 control-label" align="right">Name:</label>
            <div class="col-xs-4">
                <input type="text" class="form-control"/>
            </div>
            </div><br>
            <div class="row">
            <label class="col-xs-2 control-label" align="right">Initials:</label>
            <div class="col-xs-3">
                <input type="text" class="form-control"/>
            </div>
              <label class="col-xs-3 control-label" align="right">Agency:</label>
            <div class="col-xs-4">
                <select name="colors" class="form-control">
                <option value="Option1">Option 1</option>
                <option value="Option2">Option 2</option>
                <option value="Make this a query">Make it a query</option>
        </select>
            </div>
            </div><br>
            <div class="row">
            <div class="col-xs-3"></div>
              <label class="col-xs-2 control-label" align="right">Sampler Role:</label>
            <div class="col-xs-3">
                <select name="colors" class="form-control">
                <option value="Option1">Sampler</option>
                <option value="Option2">Database Manager</option>
                <option value="Make this a query">Make it a query</option>
        </select>
            </div>
            
            </div>
            <br>
 <div class="row">
 <div class="col-xs-3">
 </div>
 <div class="col-xs-2" align="right">
 <button type="button" class="btn btn-primary">Add</button>
 </div>
 <div class="container col-xs-4" align="center">
  <table class="table table-striped table-bordered table-hover">
    <thead>
      <tr>
        <th>Role</th>
        <th> </th>
     </tr>
    </thead>
    <tbody>
      <tr>
        <td>Sampler</td>
        <td>X</td>
      </tr>
      <tr>
        <td>Database Manager</td>
        <td>X</td>
        </tr>
      
    </tbody>
  </table>
</div>
 </div>
   </div>
<br> 
    <div class="modal-footer center">
    <button type="button" class="btn btn-primary">Save</button>
    <button type="button" class="btn" data-dismiss="modal">Cancel</button>
    </div>
<br>
</div>
</div>
</div>






    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
 
  </body>
</html>
