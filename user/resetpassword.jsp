<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) 
      {

        response.sendRedirect("error.jsp");
      }
    else
    {
%>

<!DOCTYPE html>
<html>
<head>
   <link rel="icon" href="../icon/patho.png" type="image/jpg" sizes="16x16">
 
  <title>PathoDoctor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width" initial-scale="1.0">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>



      <link href="../css/footer.css" rel="stylesheet">
      <link href="../css/all.min.css" rel="stylesheet">
     <link href="../css/bootstrap.css" rel="stylesheet">
     <link href="../css/bootstrap.min.css" rel="stylesheet">
     <link href="../css/mdb.min.css" rel="stylesheet">
     <script src="../js/bootstrap.js"></script>
     <script src="../js/bootstrap.min.js"></script>
     <script src="../js/mdb.min.js"></script>
     <script src="../js/angular.js"></script>
     <script src="../js/sidebar.js"></script>
       <script src="../js/all.min.js"></script>
       <script src="../bootstrap/jquery.min.js"></script>
       <script src="../js/myapp.js"></script>
       <script src="../js/myctrl.js"></script>
       <link href="../css/scroll.css" rel="stylesheet">
      <script src="../js/scroll.js"></script>
     
<style>
}
#services{
    color:#0080FF;
    font-weight:900px;
    background-color:yellow;
}
#changepass{
   color:#0080FF;
    font-weight:900px;
}
</style>
	</head>

<body ng-app="">

  <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>
   <jsp:include page="userheader.jsp"/>


   <div class="container" >
        <div class="container1" >
            <div class="card" >
 
              <center>
                	<img src="..\icon\changepass.png"  style="height:100px; width:120px;margin-top:10px;" >
              <h5 style="color:grey; position:relative;">Change Your Password</h5>
                </center>

                 <article class="card-body">
                  <form method="POST" action="usersetpass.jsp">
                  	<div class="form-group">

                  		UserId or Email ID :<input type="email" name="email" class="from-content" required style="border-left:block;">
                  	</div>

                  	<div class="form-group">
                   New Password :<input type="password" name="password" class="from-content" minlength="6" maxlength="50" required>
                  	</div>

                  	<center>
                  	<div class="form-group">
                  		<button class="btn btn-info btn-lg">Update</button>
                  	</div>
                  </center>     

                </form>
                </article>
            </div>

      </div>
    </div>
    
      <jsp:include page="ufooter.html"/>

</body>
</html>

<% } %>