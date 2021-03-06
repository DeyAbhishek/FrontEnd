
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
                <button type="button" class="btn btn-primary">Schedule</button>
            </div>
                <table class="table table-striped table-bordered table-hover">
					<thead>
					<tr>
					<th>Order ID</th>
					<th>Customer Contact</th>
					<th>Project ID</th>
					<th>Employee ID</th>
                                        <th>Order Date</th>
                                        <th>Comment</th>
                                        <th>Sample Number</th>
                                        <th>Site</th>
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
      </div>

    </div> <!-- /container -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
  </body>
</html>
 