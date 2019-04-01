<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html lang="en">
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
      
</head>
<body>
  <center>
<% 
      
        String email= request.getParameter("email");
        String message= request.getParameter("message");
       

        Statement qry3 = con.createStatement();

        String qry4="insert into feedback(email,message) values('" + email + "', '" + message + "')";

        int i = qry3.executeUpdate(qry4);

        con.close();

        if(i != 0) 		out.print("<br /> <h3>Your feedback has been recorded in our system.</h3><br/><p>Thanks for giving feedback, we will respond you shortly.</p>");

        else 			out.print("<br /> <h1> ##### ERROR ##### </h1>");

%>


    <p />
      <a href="../index.jsp"><button class="btn btn-primary"> Home page</button> </a></center>
       <marquee DIRECTION="LEFT" TRUESPEED="59 mS"><h1><b id="p1" style="color:#FF0000; font-size:30px">
                  Path<i class="fa fa-cog fa-spin fa-3x fa-fw" style="font-size:20px;color="#FF0000"></i></b><b id="p2"style="color:#1B7FB3; font-size:30px">Doctor</b>
        </h1>
      </marquee>
</body> 
</html>
