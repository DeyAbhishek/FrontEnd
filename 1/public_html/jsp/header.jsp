
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
        
            <img src="../img/logo.jpg" height="50" style="float: left; padding-right:20px;">     <a class="navbar-brand" href="#">Water Quality Collection System</a></img>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li ><a href="dashboard.jsp">Dashboard</a></li>
              <li><a href="eventsetup.jsp">Events</a></li>
            
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                Manage <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="scheduledevents.jsp">Schedule Events</a></li>
                  <li><a href="instruments.jsp">Instruments</a></li>
                  <li><a href="#">Standards/Preservatives</a></li>
                </ul>
              </li>
                 <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                Admin <span class="caret"></span></a>
                <ul class="dropdown-menu">
                 <li><a href="projectManagement.jsp">Station Assignment</a></li>
                 <li><a href="samplers.jsp">Manage Users</a></li>
                 <li><a href="calCriteria.jsp">Calibration Criteria</a></li>
                </ul>
              </li>
                 <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                Tools <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="EDupload.jsp">Export to ED</a></li>
                  <li><a href="DEPStatus.jsp">Create DEP Spreadsheet</a></li>
                
                </ul>
              </li>
               
            </ul>
            <!--
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>
              <li><a href="../navbar-static-top/">Static top</a></li>
              <li><a href="../navbar-fixed-top/">Fixed top</a></li>
            </ul>
            -->
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
      
      
      <script>
      var url = window.location;
// Will only work if string in href matches with location
$('ul.nav a[href="'+ url +'"]').parent().addClass('active');

// Will also work for relative and absolute hrefs
$(' a').filter(function() {
    return this.href == url;
}).parent().addClass('active');
$('.dropdown a').filter(function() {
    return this.href == url;
}).parent().parent().parent().addClass('active');
</script>

