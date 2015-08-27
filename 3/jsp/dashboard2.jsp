
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
        <div class="col-xs-3 selectContainer" align="left">
            <select name="colors" class="form-control">
                <option value="Palatka">Palatka</option>
                <option value="Apopka">Apopka</option>
                <option value="Groundwater">Groundwater</option>
            </select>
      
      </div>
      <label class="col-xs-1 control-label" align="right">Sampler:</label>
        <div class="col-xs-3 selectContainer" align="left">
            <select name="colors" class="form-control">
                <option value="Sampler 1">Sampler 1</option>
                <option value="Sampler 2">Sampler 2</option>
            </select>
      
      </div>
      <label class="checkbox-inline col-xs-4" align="center">
      <input type="checkbox" value="" checked><b>Hide Completed</b>
    </label>
    
    <br><br>
      <label class="col-xs-1 control-label">From Date:</label> 
      <div class="col-xs-3">
      <input type="date" class="form-control" placeholder="From Date" />
      </div>
       <label class="col-xs-1 control-label">To Date:</label>
      <div class="col-xs-3">
      <input type="date" class="form-control" placeholder="To Date" />
  </div>
    </div >
  <br><br>
    <div style="float:right;">
   <button id="newevent" type="button" class="btn btn-primary">New Event</button>
</div>
  <br><br>
 <!-- <h3>Scheduled Events</h3>
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
                   <div ng-controller="displayData" align="center" style="height:374px;">                  
                <table class="table table-bordered table-hover">
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
                                        <th></th>
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
                                        <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#events">Event Setup</button>
                                        </td>
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
                                         <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#events">Event Setup</button>
                                   </td>
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
                                         <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#events">Event Setup</button>
                                   </td>
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
					 <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#events">Event Setup</button>
                                       </td>
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
                                         <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#events">Event Setup</button>
                                        </td>
					</tr>
                                        
					</tbody>
					</table>
                                        </div>
                                        </td>
                                        </tr>
                                        
                                        </table>
                                    
                                        
      </div>
      
    
    </div> <!-- /container -->









<!-- Modal 1 -->

<div class="modal fade" id="events" data-backdrop="static">
	<div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Events</h4>
        </div><div class="container"></div>
        <div class="modal-body" style="height: 600px;">  
 <!--
 <div class="panel panel-default"> 
             <!--<div class="panel-heading">
               <div><h4>Events</h4></div>
              
            </div>
            -->
<br>

	<ul class="nav nav-tabs ">
			<li class="active">
			<a href="#tab-eventsetup" data-toggle="tab">Event Setup</a>
			</li>
			<li>
			<a href="#tab-fielddata" data-toggle="tab">Field Data</a>
			</li>
			
        </ul>
			<div id="content" class="tab-content">
				<div class="tab-pane active" id="tab-eventsetup">
                                       <jsp:include page="eventSetupData.jsp" />
					</div>

					<div class="tab-pane" id="tab-fielddata">
                                        <jsp:include page="fielddataaccordion.jsp" />
                                        </div>

     

</div>
<!--
</div>
<!--</div>-->
<br><br><br><br><br><br><br>
 </div>
        <div class="modal-footer">
           <button type="button" class="btn btn-primary">Save</button>
    <button type="button" class="btn" data-dismiss="modal" >Cancel</button>
        </div>
      </div>
    </div>
</div>
  
  
  
  
  
  <!--  Modal 2 -->
  

<div class="modal fade" id="fielddata" data-backdrop="static">
	<div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Events</h4>
        </div><div class="container"></div>
        <div class="modal-body" style="height: 450px;">  
        
        
 <table width="90%" align="center" style="border: 0px solid black;">
            <tr>
            <td style="border: 0px;">
            <br>
            <ul class="nav nav-tabs ">
            
			<li class="active">
			<a href="#tab-commondata4" data-toggle="tab">Common Data</a>
			</li>
			<li>
			<a href="#tab-waterquality4" data-toggle="tab">Water Quality Readings</a>
			</li>
			
			</ul>
                        	<div class="tab-content">
				<div id="tab-commondata4" class="tab-pane active">
                                        <jsp:include page="commonData.jsp" />
                                </div>

                                <div id="tab-waterquality4" class="tab-pane" >
                                        <jsp:include page="waterquality.jsp" />
                               </div>

  
   
                                </div>
                                <br>
                               </td></tr>
               </table> 
               
               
               
               
               
               
 </div>
        <div class="modal-footer">
           <button type="button" class="btn btn-primary">Save</button>
    <button type="button" class="btn" data-dismiss="modal" >Cancel</button>
        </div>
      </div>
    </div>
</div>
  
  
  
  
  
     
    
    
    


<!-- Modal 3 -->
<div id="myModal" class="modal fade" role="dialog" data-backdrop="static">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
     <div class="modal-content">
      <div class="modal-header">
         <h4>Add/Edit Field Reading Data</h4></div>
      <div class="modal-body">
                <div class="row"><br>
        <label class="col-xs-2 control-label" align="left">Collection Time:             </label> 
        <div class="col-xs-2">
            <input type="time"class="form-control" placeholder="From Time" align="left" /></div>
        <label class="col-xs-2 control-label" align="right">Collection Depth:</label>
       <div class="col-xs-2">
      <input type="text" class="form-control"/>
    </div> 
             </div> <br>
    
          
         <div class="row">    
       <label class="col-xs-2 control-label" align="right">Water Temp:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">pH:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">DO:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div> 
      </div>
      <br>
       <div class="row">
             <label class="col-xs-2 control-label" align="right">DO % Sat:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Conductivity:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Salinity:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div>   
      </div><br>
       <div class="row">
  <label class="col-xs-2 control-label" align="right">Blue-Green Algae:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Chlorophyll:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Turbidity:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div>
    </div>
      <br>
      <div class="row">
  <label class="col-xs-2 control-label" align="right">Battery:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       </div>

    </div>

<br> 
    <div class="modal-footer">
    <button type="button" class="btn btn-primary">Save</button>
    <button type="button" class="btn" data-dismiss="modal" >Cancel</button>
    </div>
</div>
  </div>
</div>


  
  
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
    <script>
     document.getElementById("newevent").onclick = function () {
        location.href = "../jsp/eventsetup.jsp";
    };
    </script>
    
    
    
    <!-- Code for Multiple Open Modals -->
    
        <script type='text/javascript'>
     

 $(document).ready(function() {
$('.modal').on('hidden.bs.modal', function( event ) {
                $(this).removeClass( 'fv-modal-stack' );
                $('body').data( 'fv_open_modals', $('body').data( 'fv_open_modals' ) - 1 );
                });


$( '.modal' ).on( 'shown.bs.modal', function ( event ) {
                   
                   // keep track of the number of open modals
                   
                   if ( typeof( $('body').data( 'fv_open_modals' ) ) == 'undefined' )
                   {
                     $('body').data( 'fv_open_modals', 0 );
                   }
                   
                     
                   // if the z-index of this modal has been set, ignore.
                        
                if ( $(this).hasClass( 'fv-modal-stack' ) )
                        {
                        return;
                        }
                   
                $(this).addClass( 'fv-modal-stack' );

                $('body').data( 'fv_open_modals', $('body').data( 'fv_open_modals' ) + 1 );

                $(this).css('z-index', 1040 + (10 * $('body').data( 'fv_open_modals' )));

                $( '.modal-backdrop' ).not( '.fv-modal-stack' )
                        .css( 'z-index', 1039 + (10 * $('body').data( 'fv_open_modals' )));


                $( '.modal-backdrop' ).not( 'fv-modal-stack' )
                        .addClass( 'fv-modal-stack' ); 

                 });       
        });
        
        </script>
        
        
  </body>
</html>
 