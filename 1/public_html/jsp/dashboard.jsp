
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
                <div><h4>Scheduled Events</h4></div>
           
            </div>
      <div><br>
      <label class="col-xs-1 control-label">Location:</label>
        <div class="col-xs-2 selectContainer">
            <select name="colors" class="form-control">
                <option value="Palatka">Palatka</option>
                <option value="Apopka">Apopka</option>
                <option value="Groundwater">Groundwater</option>
            </select>
      
      </div>
      
      <label class="col-xs-1 control-label">From Date:</label> 
      <div class="col-xs-3">
      <input type="date" class="form-control" placeholder="From Date" />
      </div>
       <label class="col-xs-1 control-label">To Date:</label>
      <div class="col-xs-3">
      <input type="date" class="form-control" placeholder="To Date" />
  </div>
  <label class="checkbox-inline">
      <input type="checkbox" value="">Hide Completed
    </label>
    </div >
    <div style="float:right;">
   <button type="button" class="btn btn-primary">New Event</button>
</div>
  <br><br>
  <h3>Scheduled Events</h3>
         <!--  <div ng-controller="displayData" align="center" style="height:450px; overflow:auto; border: 3px solid black;">
   <table>
   <tr><td>
   <table>
   <tr style="color:white;background-color:grey">
					<td>Order ID</td>
					<td>Customer Contact</td>
					<td>Project ID</td>
					<td>Employee ID</td>
                                        <td>Order Date</td>
                                        <td>Comment</td>
                                        <td>Sample Number</td>
                                        <td>Site</td>
					</tr>
                                        </table>
                                        </td>
                                        </tr>
                                        <tr><td>
                                        
                                          <div ng-controller="displayData" align="center" style="height:200px; overflow:auto; border: 3px solid black;">
                                          -->
                   <div ng-controller="displayData" align="center" style="height:400px;">                  
                <table class="table table-bordered table-hover">
					<thead>
					<tr>
					<td>Order ID</td>
					<td>Customer Contact</td>
					<td>Project ID</td>
					<td>Employee ID</td>
                                        <td>Order Date</td>
                                        <td>Comment</td>
                                        <td>Sample Number</td>
                                        <td>Site</td>
					</tr>
					</thead>
					<tbody>
                                        <!--
					<tr ng-repeat="e in events" >
					<td>{{ e.orderid }}</td>
					<td> {{ e.customercontact }}</td>
					<td> {{ e.projectid  }} </td>
                                        <td>{{ e.employeeid }}</td>
                                        <td> {{ e.orderdate}}</td>
                                        <td> {{ e.commnt}}</td>
                                        <td> {{ e.samplenumber}}</td>
                                        <td> {{ e.site }}</td>
					-->
                                        <tr>
                                        <td> E45349053</td>
					<td>  </td>
					<td> P838948239 </td>
                                        <td> EMP879832129</td>
                                        <td> </td>
                                        <td> Satisfactory</td>
                                        <td> SAM89348</td>
                                        <td> Apopka</td>
					</tr>
                                        
                                            <tr>
                                        <td> E45349053</td>
					<td>  </td>
					<td> P8904793 </td>
                                        <td> EMP2129</td>
                                        <td> </td>
                                        <td> OK</td>
                                        <td> SAM348</td>
                                        <td> Palatka</td>
					</tr>
                                         <tr>
                                        <td> E45349053</td>
					<td>  </td>
					<td> P838948239 </td>
                                        <td> EMP879832129</td>
                                        <td> </td>
                                        <td> Satisfactory</td>
                                        <td> SAM89348</td>
                                        <td> Apopka</td>
					</tr>
                                            <tr>
                                        <td> E45349053</td>
					<td>  </td>
					<td> P8904793 </td>
                                        <td> EMP2129</td>
                                        <td> </td>
                                        <td> OK</td>
                                        <td> SAM348</td>
                                        <td> Palatka</td>
					</tr>
                                         <tr>
                                        <td> E45349053</td>
					<td>  </td>
					<td> P8904793 </td>
                                        <td> EMP2129</td>
                                        <td> </td>
                                        <td> OK</td>
                                        <td> SAM348</td>
                                        <td> Palatka</td>
					</tr>
                                         <tr>
                                        <td> E45349053</td>
					<td>  </td>
					<td> P838948239 </td>
                                        <td> EMP879832129</td>
                                        <td> </td>
                                        <td> Satisfactory</td>
                                        <td> SAM89348</td>
                                        <td> Apopka</td>
					</tr>
                                            <tr>
                                        <td> E45349053</td>
					<td>  </td>
					<td> P8904793 </td>
                                        <td> EMP2129</td>
                                        <td> </td>
                                        <td> OK</td>
                                        <td> SAM348</td>
                                        <td> Palatka</td>
					</tr>
                                        
                                            <tr>
                                        <td> E45349053</td>
					<td>  </td>
					<td> P838948239 </td>
                                        <td> EMP879832129</td>
                                        <td> </td>
                                        <td> Satisfactory</td>
                                        <td> SAM89348</td>
                                        <td> Apopka</td>
					</tr>
					</tbody>
					</table>
                                        </div>
                                        </td>
                                        </tr>
                                        
                                        </table>
                                    
                                        
      </div>
      
    
    </div> <!-- /container -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
  </body>
</html>
 