<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) 
{

  response.sendRedirect("../login.jsp");
}
else
{
%>

<!DOCTYPE html>
<html lan="en">

<head>
    <link rel="icon" href="../icon/patho.png" type="image/jpg" sizes="16x16">
    <title>PathoDoctor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

      <link href="../css/footer.css" rel="stylesheet">
      <link href="../css/all.min.css" rel="stylesheet">
     <link href="../css/bootstrap.css" rel="stylesheet">
     <link href="../css/bootstrap.min.css" rel="stylesheet">
     <link href="../css/mdb.min.css" rel="stylesheet">
     <link href="../css/scroll.css" rel="stylesheet">
    <link href="../css/content.css" rel="stylesheet">
    <link href="../css/card.css" rel="stylesheet">
    

     <script src="../js/bootstrap.js"></script>
     <script src="../js/bootstrap.min.js"></script>
     <script src="../js/mdb.min.js"></script>
     <script src="../js/angular.js"></script>
     <script src="../js/sidebar.js"></script>
       <script src="../js/all.min.js"></script>
       <script src="../bootstrap/jquery.min.js"></script>
       <script src="../js/myapp.js"></script>
       <script src="../js/myctrl.js"></script>
       <script src="../js/scroll.js"></script>
       
  <style>

  	#doctorl{
  		color:#0080FF;
    font-weight:900px;
  	}

input[type="text"],input[type="date"]{
	align:right;
text-align:center;
background-color:transparent;
}
  </style>
}

</head>

<body  class="body">
  <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>
  <jsp:include page="userheader.jsp"/>

<div class="container1" >
  <div class="appoint" style="">
       <div class="row">
          
          <div class="col-sm-8">
            
              <h1><b>Book Appointment Anytime and Anywhere</b></h1>
              <h5>
                We are providing the health solution by using software java platform.
                In pathodoctor user can easily book appointment to their favourite doctor.
              </h5>

              
          
          </div>
          <div class="col-sm-4">
            <div class="card cardappoint">
              <form  action="../process/appoint_process.jsp" method="GET">
              <label><h1>Your Appointment</h1></label>
              <div class="input-group">
              <label><h5>Name</h5></label>
              <input class="form-control form-control-sm" type="text" name="pname"placeholder="Enter patient Name" required>
              </div>

              <div class="input-group">
              <label><h5>Date of Appoint</h5></label>
              <input class="form-control " type="date" name="doa">
              </div>

              <div class="input-group">
              <label><h5>Mobile Number</h5></label>
              <input class="form-control form-control-sm" type="text" name="mobile"placeholder="Enter 10digit Mobile no." maxlength="10"minlength="10" required>
              </div>
            
              <div class="input-group">
              <label><h5>Doctor id</h5></label>
              <input class="form-control form-control-sm" type="text" name="d_id" value='<%=request.getParameter("d_id")%>' readonly>
              </div>
              
              <center>
              <button class="btn btn-primary btn-lg">Book </button></center>

            </form>
            </div>

          </div>

       </div>
  </div>
</div>
<jsp:include page="ufooter.html"/>
<%
  String d_id=request.getParameter("d_id");
session.setAttribute("d_id",d_id);

 %>
 
</body>
</html>


<% } %>