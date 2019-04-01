<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) 
      {

        response.sendRedirect("../error.jsp");
      }
    else
    {
%>



<%@ include file="../process/connection.jsp" %>
<%  

    Statement st = con.createStatement();
    ResultSet rs;

    int user_id = (int)session.getAttribute("userid");

  rs = st.executeQuery("select * from booktest b,dregister d, register u where (b.doctor_id= d.id AND b.user_id=u.id) AND b.user_id='"+user_id+"' ");



  %>
<!DOCTYPE html>
<html>
<head>
  <link rel="icon" href="../icon/patho.png" type="image/jpg" sizes="16x16">
  <title>PathoDoctor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link src="icon/pd.jpg"></icon>

      <link href="..\css\footer.css" rel="stylesheet">
      <link href="..\css\all.min.css" rel="stylesheet">
     <link href="..\css\bootstrap.css" rel="stylesheet">
     <link href="..\css\bootstrap.min.css" rel="stylesheet">
     <link href="..\css\mdb.min.css" rel="stylesheet">
     <script src="..\js\bootstrap.js"></script>
     <script src="..\js\bootstrap.min.js"></script>
     <script src="..\js\mdb.min.js"></script>
     <script src="..\js\angular.js"></script>
     <script src="..\js\sidebar.js"></script>
       <script src="..\js\all.min.js"></script>
       <script src="..\bootstrap\jquery.min.js"></script>
       <script src="..\js\myapp.js"></script>
       <script src="..\js\myctrl.js"></script>
       <link href="..\css\scroll.css" rel="stylesheet">
<script src="..\js\scroll.js"></script>
<link href="..\css\content.css" rel="stylesheet">


   <script type="text/javascript">
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

    <style>
  body{
    background-color:grey;
  }


  #utestcard{
    color:#0080FF;
    font-weight:900px;
    background-color:yellow;
}
</style>
   
</head>


<body>
 <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>


  <jsp:include page="userheader.jsp"/>


	<div class="container1" style="background-image:url('../image/testcard.png');background-repeat: repeat-y;background-size:100%">
		<div class="container">
        <div class="row">
		<div class="col-md-6">
      <article style="margin-top:20px">
        <section>
          <nav>
            <input type="submit" value="Appointment card List" onclick="showAppoint();" class="btn btn-secondary" role="button"/>
          </nav>
          </section>
        </section>
      </article>
		</div>

   
		<div class="col-md-6"  id="showcard">
      <div id="Appointment" style="display:none">
       
<%

   while (rs.next()){
 

  %>

<form action="" method="get">
<div class="card" style="color:#FF0080; height:230px; width:360px;background-color:#FFC58A;border-radius:10px; margin-top:20px; font-width:40px;border-bottom:20px solid #0080FF; border-top:8px solid grey"><b>
	<h5 style="background-color:#1BFF1B; color:#7E00FF; "> Appointment Card &nbsp<span style="font-size:30px;color:red">
    <a href='printcard.jsp?p_id=<%=rs.getInt("book_id") %>&p_dname=<%=rs.getString("d.name") %>&p_dcity=<%=rs.getString("d.city") %>&p_pname=<%=rs.getString("b.pname") %>&p_doa=<%=rs.getString("b.date_of_appointment") %>&p_bd=<%=rs.getTimestamp("b.booking_date") %>&p_status=<%=rs.getString("b.status") %>&p_cid=<%=rs.getInt("b.user_id") %>&p_did=<%=rs.getInt("b.doctor_id") %>&p_pmob=<%=rs.getString("b.mobile") %>&p_dad=<%=rs.getString("d.oaddress") %>&p_dmob=<%=rs.getString("d.mobile") %>'  target="_blank">
     <i class="fa fa-print" aria-hidden="true"></i></a></span></h5>


<%
      out.println("<h2>"+rs.getInt("b.book_id")+"</h2>");
      %>

  <%
      out.println("Doctor_name : "+rs.getString("d.name")+"\n");
      %>

		<br />

      <%
      out.println("Doctor city : "+rs.getString("d.city")+"\n");
      %>

      <br/>

      <%
      out.println("Patient name : "+rs.getString("b.pname")+"\n");
      %>

      <br />

      <%
      out.println("Appointment date : "+rs.getString("date_of_appointment")+ "\n");
      %>

      <br />

     

      <%
      out.println("booking date:"+rs.getTimestamp("booking_date")+"\n");
      %>
 
</b>

</div>
</form>
 <%
}


   con.close();   
  %>

</div>
</div>
</div>
</div>
</div>


<jsp:include page="ufooter.html"/>
 <jsp:include page="../modal.html" />

</body>
</html>


<% } %>