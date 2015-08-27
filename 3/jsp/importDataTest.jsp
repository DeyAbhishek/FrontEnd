<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>


<style>

li {
  list-style: none;
  padding: 0;
  margin: 0;
  float: left;
  white-space: nowrap;
}
.droppableContainer {
  width: 48%;
  float: left;
  min-height: 200px
}

.droppableContainer img {
  width: 90px;
  max-height: 90px;
  max-width: 90px;
  width: 90px;
  vertical-align: middle;
}
#draggingContainer {
  width: 48%;
}
#draggingContainer input {
  visibility: hidden;
}
#dropTarget {
  border: 3px dashed grey;
}
#dropTarget input {
  visibility: hidden;
}
</style>
</head>
<body>
<!--
<div id="selectActions">
  <span>Select:</span>
  <ul>
    <li><a id="selectAll" href="#">all</a>
    </li>
    <li><a id="selectNone" href="#">none</a>
    </li>
    <li><a id="selectInvert" href="#">invert</a>
    </li>
  </ul>
</div>
-->

<div style="clear:left;">
  <div id="dragSource" class="droppableContainer">
    <ul>
      <li>
        <img src="../img/login.png" /><input type="checkbox" />
      </li>
      <li>
        <img src="../img/login.png" />
        <input type="checkbox" />
      </li>
      <li>
        <img src="../img/login.png" />
        <input type="checkbox" />
      </li>
      <li>
        <img src="../img/login.png" />
        <input type="checkbox" />
      </li>
  
    </ul>
  </div>

  <div id="dropTarget" class="droppableContainer">
  </div>
</div>
<script>
$(function() {

  $('#dragSource li').draggable({
    helper: function() {
      var selected = $('#dragSource input:checked').parents('li');
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