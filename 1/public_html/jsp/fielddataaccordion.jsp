<!--<table class="table table-condensed" style="border-collapse:collapse; text-decoration: none; font-weigh: normal;">-->
    <table class="table  table-hover table-bordered">
    <thead>
        <tr>
            <th>Station ID</th>
            <th>Station Name</th>
            <th>Coll Date</th>
            <th>Site Depth</th>
            <th>Sechhi</th>
            <th>Air Temp</th>
            <th>Weather</th>
           
        </tr>
    </thead>
    <tbody>
    
   
             <tr  class="accordion-toggle pointer">
           <td   data-toggle="collapse" data-target="#demo2">Station 1</td>
            <td  data-toggle="collapse" data-target="#demo2">Name 1</td>
            <td  data-toggle="collapse" data-target="#demo2"></td>
            <td  data-toggle="collapse" data-target="#demo2"></td>
            <td  data-toggle="collapse" data-target="#demo2"></td>
            <td  data-toggle="collapse" data-target="#demo2"></td>
            <td  data-toggle="collapse" data-target="#demo2"></td>
           <!-- <th><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">Edit</button></th>
            <!--<th><a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">
					Edit</a></th>
                                        
           <th><button class="dialog"> Edit</button></th>-->
        </tr>
        <tr>
            <td colspan="7" class="hiddenRow"><div class="accordian-body collapse" id="demo2"> 
            <table width="90%" align="center" style="border: 0px solid black;">
            <tr>
            <td style="border: 0px;">
            <ul class="nav nav-tabs ">
            <br>
			<li class="active">
			<a href="#tab-commondata" data-toggle="tab">Common Data</a>
			</li>
			<li>
			<a href="#tab-waterquality" data-toggle="tab">Water Quality Readings</a>
			</li>
			
			</ul>
                        	<div id="content" class="tab-content">
				<div class="tab-pane active" id="tab-commondata">
                                        <jsp:include page="commonData.jsp" />
					</div>

					<div class="tab-pane" id="tab-waterquality">
                                        <jsp:include page="waterquality.jsp" />
                                        </div>

  
   
                                </div>
                               </td> </tr>
               </table>         
            </td>
            
        </tr>
        
          <tr  class="accordion-toggle pointer">
            <td  data-toggle="collapse" data-target="#demo3">Station 2</td>
            <td  data-toggle="collapse" data-target="#demo3">Name 2</td>
            <td  data-toggle="collapse" data-target="#demo3"></td>
            <td  data-toggle="collapse" data-target="#demo3"></td>
            <td  data-toggle="collapse" data-target="#demo3"></td>
            <td  data-toggle="collapse" data-target="#demo3"></td>
            <td  data-toggle="collapse" data-target="#demo3"></td>
     
           <!-- <th><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">Edit</button></th>
            <!--<th><a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">
					Edit</a></th>
                                        
           <th><button class="dialog"> Edit</button></th>-->
        </tr>
        <tr >
            <td colspan="7" class="hiddenRow" width="80%"><div class="accordian-body collapse" id="demo3"> 
            
        <table width="90%" align="center" style="border: 0px solid black;">
            <tr>
            <td style="border: 0px;">
            <ul class="nav nav-tabs ">
            <br>
			<li class="active">
			<a href="#tab-commondata1" data-toggle="tab">Common Data</a>
			</li>
			<li>
			<a href="#tab-waterquality1" data-toggle="tab">Water Quality Readings</a>
			</li>
			
			</ul>
                        	<div id="content" class="tab-content">
				<div class="tab-pane active" id="tab-commondata1">
                                        <jsp:include page="commonData.jsp" />
					</div>

					<div class="tab-pane" id="tab-waterquality1">
                                        <jsp:include page="waterquality.jsp" />
                                        </div>

  
   
                                </div>
                               </td> </tr>
               </table>              
            </td>
           
        </tr>
            <tr  class="accordion-toggle pointer">
           <td  data-toggle="collapse" data-target="#demo4">Station 3</td>
            <td  data-toggle="collapse" data-target="#demo4">Name 2</td>
            <td  data-toggle="collapse" data-target="#demo4"></td>
            <td  data-toggle="collapse" data-target="#demo4"></td>
            <td  data-toggle="collapse" data-target="#demo4"></td>
            <td  data-toggle="collapse" data-target="#demo4"></td>
            <td  data-toggle="collapse" data-target="#demo4"></td>

           <!-- <th><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">Edit</button></th>
            <!--<th><a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">
					Edit</a></th>
                                        
           <th><button class="dialog"> Edit</button></th>-->
        </tr>
        <tr >
            <td colspan="7" class="hiddenRow" width="80%"><div class="accordian-body collapse" id="demo4"> 
             <table width="90%" align="center" style="border: 0px solid black;">
            <tr>
            <td style="border: 0px;">
            <ul class="nav nav-tabs ">
            <br>
			<li class="active">
			<a href="#tab-commondata2" data-toggle="tab">Common Data</a>
			</li>
			<li>
			<a href="#tab-waterquality2" data-toggle="tab">Water Quality Readings</a>
			</li>
			
			</ul>
                        	<div id="content" class="tab-content">
				<div class="tab-pane active" id="tab-commondata2">
                                        <jsp:include page="commonData.jsp" />
					</div>

					<div class="tab-pane" id="tab-waterquality2">
                                        <jsp:include page="waterquality.jsp" />
                                        </div>

  
   
                                </div>
                               </td> </tr>
               </table>   
                
            </td>
            
        </tr>
    
   
    </tbody>
</table>




<div id="myModal" class="modal fade" role="dialog" >
  <div class="modal-dialog" style="width: 60%;">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button><br>
        <h4 class="modal-title">                 </h4>
      </div>
      <div class="modal-body"> 
         
<div class="container">
<br>

<div class="panel panel-default">
  <div class="panel-heading">
    <div class="panel-title row"><br>
         <div class="col-xs-7">
       <font font-size="30">  Scheduled Events</font></div>
       <label class="col-xs-3" align="right">Station ID:</label>
       <div class="col-xs-2" >StationIDfromQuery</div> 
           </div>
           <br><br></div>

  <div class="panel-body">
    <div class="row"><br>
    <label class="col-xs-3 control-label" align="right">Collection Date:</label>
    <div class="col-xs-2">
      <input type="date" class="form-control" placeholder="From Date" />
    </div>
    <label class="col-xs-3 control-label" align="right">Collection Time:</label> 
      <div class="col-xs-2">
        <input type="time"class="form-control" placeholder="From Time" /></div>
             </div> <br>
    
     <div class="row">
    <label class="col-xs-2 control-label" align="right">Preservation:</label>
      <div class="col-xs-2">
        <select name="colors" class="form-control">
                <option value="Option1">Option 1</option>
                <option value="Option2">Option 2</option>
                <option value="Make this a query">Make it a query</option>
        </select>
      </div>
  

   
      <label class="col-xs-2 control-label"  align="right">Sample Type:</label>
      <div class="col-xs-2">
          <select name="colors" class="form-control">
                <option value="Option1">Option 1</option>
                <option value="Option2">Option 2</option>
                <option value="Make this a query">Make it a query</option>
          </select>
      </div>
      <label class="col-xs-2 control-label" align="right">Collection Device:</label>
      <div class="col-xs-2">
        
        <select name="colors" class="form-control">
                <option value="Option1">Option 1</option>
                <option value="Option2">Option 2</option>
                <option value="Make this a query">Make it a query</option>
            </select>
            
      </div>  
      </div>
      <br>
            
         <div class="row">    
       <label class="col-xs-2 control-label" align="right">Site Depth:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Secchi Depth:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Stage:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div> 
      </div>
      <br>
       <div class="row">
             <label class="col-xs-2 control-label" align="right">Air Temp:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Weather:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Cloud Cover:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div>   
      </div><br>
       <div class="row">
  <label class="col-xs-2 control-label" align="right">Wind:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       <label class="col-xs-2 control-label" align="right">Wind Direction:</label>
        <div class="col-xs-2">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-2 control-label" align="right">Color:</label>
        <div class="col-xs-2">
        
       <input type="text" class="form-control"/>
            
      </div></div>  
      <br><br> 
        <div class="center">
    
     </div>
     <br>

      </div>
  </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
  </div>
 
 
 
 
 
 
      </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-primary">Save</button>
      <button type="button" class="btn" data-dismiss="modal">Cancel</button>
       
      </div>
    </div>

  </div>
</div>





<div id="myModal2" class="modal fade" role="dialog" >
  <div class="modal-dialog" style="width: 60%;">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button><br>
        <h4 class="modal-title">  Field Reading Data               </h4>
      </div>
      <div class="modal-body">
       
       
<div class="container">
<br>

<div> <!--  class="panel panel-default"> -->
 <!-- <div class="panel-heading">
    <div class="panel-title row">
         <br>
         <div class="col-xs-7">
        
          <font font-size="30">  Field Reading Data</font></div>
       <label class="col-xs-3"  align="right">Station ID:</label>
       <div class="col-xs-2" >
         Queried ID
       </div> 
           </div><br><br></div>

-->



  <div class="panel-body">
    <div class="row"><br>
        <label class="col-xs-2 control-label" align="left">Collection Time:             </label> 
        <div class="col-xs-3">
            <input type="time"class="form-control" placeholder="From Time" align="left" /></div>
        <label class="col-xs-3 control-label" align="right">Collection Depth:</label>
       <div class="col-xs-3">
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
            
      </div></div>  
    
      <br>
      <div class="row">
  <label class="col-xs-2 control-label" align="right">Battery:</label>
        <div class="col-xs-2">
        <input type="text" class="form-control"/>                 
      </div>
       </div>  
      
     
     <br>
    

      </div>
  </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/bootstrap-select.js"></script>
  </div>
  
 
 
 
 
 
 
      </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-primary">Save</button>
      <button type="button" class="btn" data-dismiss="modal">Cancel</button>
       
      </div>
    </div>

  </div>
</div>

