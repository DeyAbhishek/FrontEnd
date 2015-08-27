
<!DOCTYPE html>
<html ng-app="app">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../css/style.css"/>
  <link rel="stylesheet" href="../css/style.css"/>
  <link rel="stylesheet" href="../css/bootstrap-select.css"/>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js"></script>
    
  </head>

  <body>

    <div class="container">
<br><jsp:include page="header.jsp" />
   
       <div class="panel panel-default"> 
            <div class="panel-heading">
                <div class="col-xs-11"><h4>Pending Events</h4></div>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-Schedule">Schedule</button>
            </div>
                <table class="table table-bordered table-hover">
					<thead>
					<tr>
                                        <th></th>
					<th>LIMS ID</th>
					<th>Field Office</th>
					<th>Sub-Project</th>
					<th>Assigned to</th>
                                        <th>Sampling Date</th>
                                        <th>Comment</th>
                                        </tr>
					</thead>
					<tbody>
					<!--<tr ng-repeat="e in events" >
					<td>{{ e.orderid }}</td>
					<td> {{ e.customercontact }}</td>
					<td> {{ e.projectid  }} </td>
                                        <td>{{ e.employeeid }}</td>
                                        <td> {{ e.orderdate}}</td>
                                        <td> {{ e.commnt}}</td>
                                        <td> {{ e.samplenumber}}</td>
                                        <td> {{ e.site }}</td>
					
					</tr>
                                        -->
                                           <tr>
                                           <th><input type="checkbox" value=""></th>
                                        <td>E45349053</td>
					<td>Apopka</td>
					<td>PM15 Lk Lvls</td>
                                        <td>Courtney Rickett</td>
                                        <td>09/15/2015</td>
                                        <td></td>
					</tr>
                                        
                                            <tr>
                                            <th><input type="checkbox" value=""></th>
                                        <td> E45349053</td>
					<td>Apopka</td>
					<td>PM15 Sample Something</td>
                                        <td>Courtney Rickett</td>
                                        <td>09/16/2015</td>
                                        <td></td>
					</tr>
                                         <tr>
                                         <th><input type="checkbox" value=""></th>
                                        <td> E45349053</td>
					<td>Palatka</td>
					<td>PM15 River North</td>
                                        <td>Ashley Taylor</td>
                                        <td>09/15/2015</td>
                                        <td></td>
					</tr>
                                         <tr>
                                         <th><input type="checkbox" value=""></th>
                                        <td> E45349053</td>
					<td>Palatka</td>
					<td>PM15 River South</td>
                                        <td>Ashley Taylor</td>
                                        <td>09/16/2015</td>
                                        <td>Reschedule from last month</td>
					</tr>
                                            <tr>
                                            <th><input type="checkbox" value=""></th>
                                        <td> E45349053</td>
					<td>Palm Bay</td>
					<td>PM15 PBSampling</td>
                                        <td>Lauren Peacock</td>
                                        <td>09/21/2015</td>
                                        <td></td>
					</tr>
                                        <tr>
                                        <th><input type="checkbox" value=""></th>
                                         <td> E45349053</td>
					<td>Palm Bay</td>
					<td>PM15LookupSub-Project</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
					</tr>
                                        <tr>
                                        <th><input type="checkbox" value=""></th>
                                        <td> E45349053</td>
					<td>Palm Bay</td>
					<td>PM15 Need a Name</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
					</tr>
					</tbody>
					</table>
                                       </div>
      </div>
      
<div class="modal fade bs-Schedule" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
         <h4>Schedule Events</h4></div>
      <div class="modal-body">
            <div class="row">
            <label class="col-xs-2 control-label" align="right">Assign to:</label>
                 <div class="col-xs-4">
                 <select name="colors" class="form-control">
                <option value="Option1">Sampler 1</option>
                <option value="Option2">Sampler 2</option>
                <option value="Make this a query">Make it a query</option>
                </select>
            </div>
              <label class="col-xs-2 control-label" align="right">Date:</label>
            <div class="col-xs-4">
                 <input type="date" class="form-control"/>
            </div>
            </div><br>
            <div class="row">
            <label class="col-xs-3 control-label" align="right">Comment:</label>
            <div class="col-xs-6">
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

 <!-- /container -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
  </body>
</html>
 