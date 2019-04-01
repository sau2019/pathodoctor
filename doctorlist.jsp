
<%@ include file="./process/connection.jsp" %>
  <%

	     String city=request.getParameter("city");

       Statement st = con.createStatement();
       ResultSet rs;

       rs = st.executeQuery("select * from dregister where city='"+ city+"'");

  %>



<!DOCTYPE html>
<html lan="en">

<head>
    <link rel="icon" href="icon\patho.png" type="image/jpg" sizes="16x16">
    <title>PathoDoctor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


      <link src="icon/pd.jpg"></icon>
      <link href="css/footer.css" rel="stylesheet">
      <link href="css/all.min.css" rel="stylesheet">
     <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/mdb.min.css" rel="stylesheet">
        <link href="css/scroll.css" rel="stylesheet">
        <link href="css/content.css" rel="stylesheet">
  
  
     <script src="js/bootstrap.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/mdb.min.js"></script>
     <script src="js/angular.js"></script>
     <script src="js/sidebar.js"></script>
      <script src="js/all.min.js"></script>
       <script src="bootstrap/jquery.min.js"></script>
       <script src="js/myapp.js"></script>
       <script src="js/myctrl.js"></script>
      <script src="js/scroll.js"></script>
 

  <style>

  #doctorl{
    color:#0080FF;
    font-weight:900px;
  }

</style>

</head>

<body ng-app=""class="body">

  <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>

  <jsp:include page="header.html"/>



<div class="container1" >

  <div class="container home">
  	   <div class="card search" style=" background-image:url('image/header.gif');">
            <form action="doctorlist.jsp" method="post">

                <h2><i>Select Your City.</i></h2><select name="city" style="" ><i>
                        <option></option>
                         <option value='Bhopal'>Bhopal</option>
                          <option value='Vidisha'>Vidisha</option>
                          <option value='Barkhedi'>Barkhedi</option>
                          <option value='Jabalpur'>Jabalpur</option>
                          <option value='Sagar'>Sagar</option>
                          <option value='Khandwa'>Khandwa</option>
                     </i>
                </select>
              <button class="btn btn-primary" >SUBMIT</button>
            </form>
       </div>



<div class="card ">
    <h2>Doctor's Lists near you....</h2>
      <form method="post" action="">
        <table class="table table-dark table-center">
          <thead>
           <tr>
                <th>Doctor Name</th>
                <th>Specilization</th>
                <th>City</th>
                 <th>Book Appointment</th>
           </tr>
         </thead>
         <tbody>
      <%
       
        while (rs.next()){

        out.print("<tr>");

       %>
       <input type="hidden" name="d_id"  value='<%=rs.getInt("id") %>'/>

    <%
 
      out.print("<td>"+rs.getString("name")+"</td>");
      out.print("<td>"+rs.getString("specilization")+"</td>");
      out.print("<td>"+rs.getString("city")+"</td>");
    
      
      %>
        <td><a href='user/bookappointment.jsp?d_id=<%=rs.getInt("id") %>' class="btn btn-primary">Book Test</a></td>

      <% 

        out.print("</tr>");
       }
    con.close();
      %>

      </tbody>
      </table>
    </form>
  </div>
</div>
</div>

  <jsp:include page="footer.html"/>
   <jsp:include page="modal1.html" />

</body>

</html>