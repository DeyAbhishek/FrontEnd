<!DOCTYPE html>
<html ng-app="app">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../css/style.css"/>
    
</head>
<body>
   
		<jsp:include page="/jsp/header.jsp" />
                
                
                <div ng-controller="displayData" align="center">
                <table>
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
					<tr ng-repeat="e in events" >
					<td>{{ e.orderid }}</td>
					<td> {{ e.customercontact }}</td>
					<td> {{ e.projectid  }} </td>
                                        <td>{{ e.employeeid }}</td>
                                        <td> {{ e.orderdate}}</td>
                                        <td> {{ e.commnt}}</td>
                                        <td> {{ e.samplenumber}}</td>
                                        <td> {{ e.site }}</td>
					
					</tr>
					</tbody>
					</table>
                                       </div> 

  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
</body>
</html>