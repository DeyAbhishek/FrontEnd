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
        <div class="col-xs-6">
            <div class="panel panel-default"> 
            <div class="panel-heading">
                <div class="col-xs-10"><h4>Projects</h4></div>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-addProjectPopup" align="right">Add</button>
            </div>
           
                  <table class="table table-bordered table-hover" data-click-to-select="true">
                    <thead>
                        <tr>
                        <th></th>
                        <th>Project Name</th>
                        <th>DEP Project</th>
                        <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                             <td><input type="radio" name="project"/></td>
                            <td>DEP TV</td>
                            <td>Y</td>
                            <td align="center"><button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target=".bs-addProjectPopup">Edit</button></td>
                        </tr>
                        <tr>
                             <td><input type="radio" name="project"/></td>
                            <td>Lower Ocklawaha</td>
                            <td>N</td>
                            <td align="center"><button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target=".bs-addProjectPopup">Edit</button></td>
                        </tr>
      
                    </tbody>
                    </table>
            
        </div>
        </div>
        <div class="col-xs-1"></div>
        <div class="col-xs-5">
            <div class="panel panel-default"> 
            <div class="panel-heading">
                <div class="col-xs-10"><h4>Sub-Projects</h4></div>
                <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addSubprojectPopup" align="right">Add</button>
            </div>
         
                  <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                        <th></th>
                        <th>Sub-Project Name</th>
                        <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="radio" name="subproject"/></td>
                            <td>DE15Creeks</td>
                            <td align="center"><button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target=".bs-addSubprojectPopup">Edit</button></td>
                        </tr>
                        
      
                    </tbody>
                    </table>
          
        </div>
        </div>
</div><br>

    <div class="row">
                <div class="col-xs-12">
            <div class="panel panel-default"> 
            <div class="panel-heading">
                <div class="col-xs-11"><h4>Stations</h4></div>
                <button type="button" class="btn btn-primary"  data-toggle="modal" data-target=".bs-addStationPopup">Add</button>
            </div>
                   <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                        <th>Station ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>ED Station ID</th>
                        <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>10</td>
                            <td>20020012</td>
                            <td>OKLAWAHA RIVER AT SR316</td>
                            <td>44589</td>
                            <td align="center"><button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target=".bs-addStationPopup">Edit</button></td>
                        </tr>      
                    </tbody>
                    </table>
            </div>
        
        </div>
    </div>
    
 <br>
</div>

<div class="modal fade bs-addProjectPopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Add/Edit Project</h4></div>
      <div class="modal-body">
            <div class="row">
            <label class="col-xs-3 control-label" align="center">Project Name:</label>
            <div class="col-xs-9">
                <input type="text" class="form-control"/>
            </div>
            </div><br>
            <div class="row">
                <div align="center">
                <label class="control-lable"><input type="checkbox" value="">DEP Project</label>
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


<div class="modal fade bs-addSubprojectPopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Add/Edit Sub-Project</h4></div>
      <div class="modal-body">
            <div class="row">
        <label class="col-xs-3 control-label" align="center">Sub-Project Name:</label>
        <div class="col-xs-9">
            <input type="text" class="form-control"/>
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

<div class="modal fade bs-addStationPopup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Add/Edit Station</h4></div>
      <div class="modal-body">
            
   <div class="row">
        <label class="col-xs-3 control-label" align="center">Station ID:</label>
        <div class="col-xs-3">
            <input type="text" class="form-control"/>
        </div>
        <label class="col-xs-3 control-label" align="center">ED Station ID:</label>
        <div class="col-xs-3">
            <input type="text" class="form-control"/>
        </div>
    </div>
  <br> 
    
    <div class="row">
        <label class="col-xs-3 control-label" align="center">Name:</label>
        <div class="col-xs-9">
            <input type="text" class="form-control"/>
        </div>
    </div>
  <br> 
  <div class="row">
        <label class="col-xs-3 control-label" align="center">Description:</label>
        <div class="col-xs-9">
            <input type="text" class="form-control"/>
        </div>
    </div>
    </div>
  <br> 
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
