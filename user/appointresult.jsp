<%
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) 
      {

        response.sendRedirect("../error.jsp");
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
     <link href="../css/content.css" rel="stylesheet">
      <link href="../css/scroll.css" rel="stylesheet">

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

</head>

<body>



<center>
				<h3>Your Booking is successfully done.</h3>
        <h4>Booking Id :<% out.print(session.getAttribute("b_id")) ; %></h4>
        <h4></h4>
        <br>
        <h4>Kindly login to see your card.</h4>
				<button class="btn btn-danger" ><a href="userdash.jsp">Homepage</a></button>
</center>



       <marquee><h1><b id="p1" style="color:#FF0000; font-size:30px">
                  Path<i class="fa fa-cog fa-spin fa-3x fa-fw" style="font-size:20px;color="#FF0000"></i></b><b id="p2"style="color:#1B7FB3; font-size:30px">Doctor</b>
        </h1>
      </marquee>
</body>
</html>

<% } %>