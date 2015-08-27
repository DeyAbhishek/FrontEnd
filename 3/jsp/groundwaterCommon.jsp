    <div class="row">
    <label class="col-xs-3 control-label" align="right">Collection Date:</label>
    <div class="col-xs-3">
      <input type="date" class="form-control"/>
    </div>
    
             </div> <br>
    
     <div class="row">
    <label class="col-xs-3 control-label" align="right">Measuring Point Elev:</label>
      <div class="col-xs-3">
       <input type="text" class="form-control" id="measuringPointElevation"/> 
      </div>
  

   
      <label class="col-xs-3 control-label"  align="right">Casing Diameter:</label>
      <div class="col-xs-3">
          <select id="wellCapacity" onchange="bigcalculator()"  class="form-control">
                <option>Select Casing</option>
                <option value="0.02">0.75</option>
                <option value="0.04">1</option>
                <option value="0.06">1.25</option>
                <option value="0.16">2</option>
                <option value="0.37">3</option>
                <option value="0.65">4</option>
                <option value="1.02">5</option>
                <option value="1.47">6</option>
                <option value="2.62">8</option>
                <option value="4.10">10</option>
                <option value="5.88">12</option>
          </select>
      </div>
</div>
      
<br>

<div class="row">
      <label class="col-xs-3 control-label" align="right">Total Depth:</label>
      <div class="col-xs-3">
        <input type="text" class="form-control" id="totalDepth"  onchange="bigcalculator()"/> 
            
      </div>  
     
                
       <label class="col-xs-3 control-label" align="right">Casing Depth:</label>
        <div class="col-xs-3">
        <input id="casingDepth" type="text" onchange="bigcalculator()"  class="form-control"/>                 
      </div>
      
</div><br>

     <div class="row">
       <label class="col-xs-3 control-label" align="right">Depth to Water:</label>
        <div class="col-xs-3">
        
        <input id="depthToWater"  onchange="bigcalculator()" type="text" class="form-control"/>
            
      </div>

             <label class="col-xs-3 control-label" align="right">Purge Rate:</label>
        <div class="col-xs-3">
        <input type="text" id="purgeRate"  onchange="bigcalculator()"  class="form-control"/>                 
      </div>
      </div><br>
      
           <div class="row">
       <label class="col-xs-3 control-label" align="right">Color:</label>
        <div class="col-xs-3">
        
        <input type="text" class="form-control"/>
            
      </div>
       <label class="col-xs-3 control-label" align="right">Sulfur Odor:</label>
        <div class=" radio-inline col-xs-3">
        
    
  <label class="radio-inline"><input type="radio" name="optradio">Yes</label>
<label class="radio-inline"><input type="radio" name="optradio">No</label>
            
      </div>   
      </div><br><br>
      
      <div class="row">    
       <label class="col-xs-3 control-label" align="right">Water Column Height:</label>
        <div id="waterColumnHeight" class="col-xs-3">       
       </div>
       <label class="col-xs-3 control-label" align="right">Well Capacity:</label>
        <div id="wellCapacity2" class="col-xs-3">
        </div></div>
        
        <br>
        <div class="row">
       <label class="col-xs-3 control-label" align="right">Min. Purge Volume:</label>
        <div id="minimumPurgeVolume" class="col-xs-3">
        </div> 
        <label class="col-xs-3 control-label" align="right">Min. Purge Time:</label>
        <div id="minimumPurgeTime" class="col-xs-3">
        </div>       
      </div>
      <br>
       <div class="row">    
       <label class="col-xs-3 control-label" align="right">1 Well Purge Vol:</label>
        <div id="wellPurgeVolume" class="col-xs-3">             
      </div>
       <label class="col-xs-3 control-label" align="right">1/4 Well Purge Vol:</label>
        <div id="quarterWellPurge" class="col-xs-3">
        </div>
       
      </div>
      <br>
       <div class="row">    
       <label class="col-xs-3 control-label" align="right">Time Purge Begin:</label>
        <div class="col-xs-3">
         <input id="timeBegin" type="text" class="form-control" onchange="bigcalculator()"/>          
      </div>
       <label class="col-xs-3 control-label" align="right">Time Purge Stop:</label>
        <div class="col-xs-3">
        <input id="timeEnd" type="text" class="form-control" onchange="bigcalculator()"/>
        </div>
        </div>
        <br>
        <div class="row">

       <label class="col-xs-3 control-label" align="right">Total Volume Purged:</label>
        <div id="totalVolumesPurged" class="col-xs-3"></div>

       <label class="col-xs-3 control-label" align="right">Well Volumes Purged:</label>
        <div id="wellVolumesPurged" class="col-xs-3">
        </div> 
      </div>
      
     
      
      
<script>
function bigcalculator(){
    var casingDepth=parseFloat($('#casingDepth').val());
    var depthToWater=parseFloat($('#depthToWater').val());
//    var stickup=parseFloat($('#stickup').val());
    var wellCapacity=parseFloat($('#wellCapacity').val());
    var purgeRate=parseFloat($('#purgeRate').val());
    var beginTime=parseFloat($('#timeBegin').val());
    var endTime=parseFloat($('#timeEnd').val());
    $('#wellCapacity2').text((wellCapacity));
    var waterColumnHeight=casingDepth-(depthToWater); //-stickup);
    $('#waterColumnHeight').text((waterColumnHeight));
    var wellPurgeVolume=waterColumnHeight*wellCapacity;
    $('#wellPurgeVolume').text((wellPurgeVolume));
    var minimumPurgeVolume=wellPurgeVolume*1.5;
    $('#minimumPurgeVolume').text((minimumPurgeVolume));
    $('#quarterWellPurge').text((wellPurgeVolume*0.25));
    $('#minimumPurgeTime').text((minimumPurgeVolume/purgeRate));
    var totalVolumesPurged=(endTime-beginTime)*purgeRate;
    $('#totalVolumesPurged').text((totalVolumesPurged));
    var wellVolumesPurged=((totalVolumesPurged/wellPurgeVolume));
    $('#wellVolumesPurged').text((wellVolumesPurged));

  };
</script>