<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

</head>
<body>

<div class="row">
        <div class="col-xs-6">
            <div class="panel panel-default"> 
            <div class="panel-heading">
                <h4>Stations</h4>
           </div>
           
                  <table class="table table-bordered table-hover">
                    <tbody id="dropTarget" class="droppableContainer">
                 
                     <tr>
                            <td>Station1</td>
                        </tr>
                        <tr>
                            <td>Station2</td>
                        </tr>
                        <tr>
                            <td>Station3</td>
                        </tr>
                        <tr>
                            <td>Station4</td>
                        </tr>
                        <tr>
                            <td>Station5</td>
                        </tr>
     
                    </tbody>
                    </table>
            
        </div>
        </div>
 
        <div class="col-xs-6">
            <div class="panel panel-default"> 
            <div class="panel-heading">
               <h4>Unassigned Readings</h4>
            </div>
         
                  <table class="table table-bordered table-condensed table-hover">
                    <thead>
                        <tr>
                        <th></th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Depth (m)</th>
                        </tr>
                    </thead>
                    <tbody id="dragSource" class="droppableContainer">
           
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>10:31</td>
                            <td>2</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>10:32</td>
                            <td>1.5</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>10:32</td>
                            <td>1</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>10:34</td>
                            <td>0.5</td>
                        </tr>
                        
                        
                        
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>10:40</td>
                            <td>2.5</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>10:42</td>
                            <td>1.5</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>10:43</td>
                            <td>1.46</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>10:43</td>
                            <td>1.1</td>
                        </tr>
      
                          <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>11:30</td>
                            <td>2.03</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>11:32</td>
                            <td>1.51</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>11:40</td>
                            <td>1.56</td>
                        </tr>
                         <tr>
                            <td><input type="checkbox"/></td>
                            <td>08/21/2015</td>
                            <td>11:43</td>
                            <td>0.58</td>
                        </tr>
                      
                    </tbody>
                    </table>
          
        </div>
        </div>
</div>



<script>
$(function() {

  $('#dragSource tr').draggable({
    helper: function() {
      var selected = $('#dragSource input:checked').parents('tr');
      if (selected.length === 0) {
        selected = $(this);
      }
      var container = $('<div/>').attr('id', 'draggingContainer');
      container.append(selected.clone());
      return container;
    }
  });

  $('#dropTarget').droppable({
    tolerance: 'pointer',
    drop: function(event, ui) {
      $(this).append(ui.helper.children());
    }
  });

  $('#selectAll').click(function() {
    $('#dragSource input').prop('checked', true);
    return false;
  });

  $('#selectNone').click(function() {
    $('#dragSource input').prop('checked', false);
    return false;
  });

  $('#selectInvert').click(function() {
    $('#dragSource input').each(function() {
      var $this = $(this);
      if ($this.prop('checked')) {
        $this.prop('checked', false);
      } else {
        $this.prop('checked', true);
      }
    });
    return false;
  });
});
</script>
</body>
</html>