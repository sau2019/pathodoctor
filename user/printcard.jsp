
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>



<!DOCTYPE html>
<html>
<head>
	
    <link rel="icon" href="../icon/patho.png" type="image/jpg" sizes="16x16">
  <title>PathoDoctor</title>
    <meta charset="utf-8">
  

<style>

#c{
	margin-top:100px;
	border-bottom: 5px double grey;
}
table{
width:100%;
	border:1px solid grey;

}
td{
	border:1px solid grey;
	padding:4px;
}
p{
	margin-top:20px;
	text-align:left;
	margin-left:20px;
}
p + p{
	margin-top:20px;
	font-size:20px;
}
#k1{
	text-align:center;
	margin-right:110px
	
}
button{
	position:absolute;
	padding:10px 40px;
	float:center;
}
@media print {
    body{
        width: 21cm;
        height: 29.7cm;
        margin: 10mm 20mm 10mm 20mm; 
        /* change the margins as you want them to be. */
   } 
}
</style>
</head>
<body>

<% 

Integer pid=Integer.parseInt(request.getParameter("p_id"));

%>
<center id="c">

<table cellpadding="2px">
	<tr><h3>Congratulations! Thank you for using Pathodoctor site. Your booking details are indicated below.</h3></tr>
	<tr><td>Booking id: </td><td><% out.print(pid); %></td><td>Appointment date:</td><td><%=request.getParameter("p_doa") %></td></tr>
	<tr><td>Patient name:</td><td><%=request.getParameter("p_pname") %></td><td>Doctor name:</td><td><%=request.getParameter("p_dname") %></td></tr>
	<tr><td>Patient Mobile No.:</td><td><%=request.getParameter("p_pmob") %></td><td>Doctor city:</td><td><%=request.getParameter("p_dcity") %></td></tr>
	<tr><td>Booking date:</td><td><%=request.getParameter("p_bd") %></td><td>Doctor address:</td><td><%=request.getParameter("p_dad") %></td></tr>
	<tr><td>Appointment status:</td><td><%=request.getParameter("p_status") %></td><td>Doctor contact:</td><td><%=request.getParameter("p_dmob") %></td></tr>
	
	<tr><td>Retailer id:</td><td><%=request.getParameter("p_cid") %></td><td>Doctor id:</td><td><%=request.getParameter("p_did") %></td></tr>

</table>
<div class="row">
	<div class="col-sm-6">
<p>Warm Regards,<br>
S.Ranjan Kr.<br>
Pathodoctor Team</p>
<br>
</div>
<div class="col-sm-6">
	<p>Signature:<br><img src="../icon/signature.png" align="left" height="60px" width="120px" /></p>
	</div>

<br/>


</div>
<p id="k1"><b>Note:</b>This is a computer generated test reciept.</p><br>
</center>
</body>
</html>

