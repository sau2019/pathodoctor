
<%@include file="../process/connection.jsp"%>

<%
    if ((session.getAttribute("duserid") == null) || (session.getAttribute("duserid") == "")) 
{

  response.sendRedirect("../error.jsp");
}
else
{
%>


<%

     Statement st = con.createStatement();
       ResultSet rs;
       rs=st.executeQuery("select * from booktest b");
%>


<!DOCTYPE html>
<html lan="en">
<head>
  <link rel="icon" href="../icon/patho.png" type="image/jpg" sizes="16x16">
  <title>PathoDoctor</title>
    <meta charset="utf-8">
    <!--<meta name="viewport" content="width=device-width" initial-scale="1.0"> -->
   
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
      
      <!-- Start of  Zendesk Widget script -->
<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=cea5a473-f9a6-4295-a2bf-cb886dcaebd1"> </script>
<!-- End of  Zendesk Widget script -->
  
<style>

     .container1 h3{
        text-align: center;
        padding:10px;
        color:dodgerblue;
        background-color:grey;
      }
      #dhome{
    color:#0080FF;
    font-weight:900px;
    background-color:yellow;
}

</style>
<script tyep="text/javascript">
  var flag=true;
function showAppoint()
{


  var m=document.getElementById('Appointment').innerHTML;

  if(flag == true)
  {
    document.getElementById('showcard').innerHTML = m;
    flag=false;
  }
  else
  {
    document.getElementById('showcard').innerHTML ="";
    flag=true;
  }
}

  </script>
 
</head>
<body ng-app="">
  <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>
<jsp:include page="dheader.jsp"/>

<div class="container1">
 
 <h3>Patients Appointment list.......</h3>
 <input type="submit" value="Appointment card List" onclick="showAppoint();" class="btn btn-secondary" role="button"/>
      <table class="table table-hover ">
        <thead>

          <tr><th>Booking Id</th><th>Patient name</th><th>Patient mobile no.</th><th>Appointment Date</th><th>Status</th><th>Retailer Id</th></tr>
        </thead>
        <tbody  id="showcard">
        </tbody>
        <tbody  id="Appointment" style="display:none">

        
        <%    while(rs.next())
       {
        out.print("<tr>");
        out.print("<td>"+rs.getInt("b.book_id")+"</td>");
        out.print("<td>"+rs.getString("b.pname")+"</td>");
         out.print("<td>"+rs.getString("b.mobile")+"</td>");
        out.print("<td>"+rs.getString("b.date_of_appointment")+"</td>");
                    out.print("<td>"+rs.getString("b.status")+"</td>");
                     out.print("<td>"+rs.getString("b.user_id")+"</td>");
        out.print("</tr>");

      }

%>        </tbody>
      </table>


</div>
<% 

con.close();
%>
  
<jsp:include page="footer.html"/>
 <jsp:include page="../modal.html" />
 
 
</body>
</html>

<% } %>