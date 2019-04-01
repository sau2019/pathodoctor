
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>

<%@page import="java.io.*" %>
<%@page import="java.lang.*"%>
<%@ include file="connection.jsp" %>

<!DOCTYPE html>
<html>
<head> 	<title>PathoDoctor  </title> 		</head>
<body>

<%

		String pname = request.getParameter("pname");
		String doa= request.getParameter("doa");
		int did= Integer.parseInt(request.getParameter("d_id"));
		//int uid =Integer.parseInt(session.getAttribute("userid").toString());
		String mobile= request.getParameter("mobile");
		String status="CNF";
		/*
		out.print("pname="+pname+"<br>");
		out.print("doa="+doa+"<br>");
		out.print("d_id="+did+"<br>");
		out.print("uid="+uid+"<br>");
		out.print("mobile="+mobile+"<br>");
		*/
	
		//date dat = new Date();
		//out.print("Today's date with time:"+dat.toString());
		 Statement qry = con.createStatement();

        String qry1="insert into booktest(user_id, doctor_id, pname, mobile, date_of_appointment,status,booking_date) values("+session.getAttribute("userid")+","+did +",'"+ pname +"','"+ mobile +"','"+doa+"','"+status+"',now())";


        //out.print(qry1);
        int i = qry.executeUpdate(qry1);
     
        if(i!=0)
        {


		    Statement st = con.createStatement();
		    ResultSet rs;

  			rs = st.executeQuery("select * from booktest");
  			if(rs.last())
			{
				int b_id = rs.getInt("book_id");
				
				session.setAttribute("b_id",b_id);

  			}

        	response.sendRedirect("../user/appointresult.jsp");
    	} 		

        else{
        out.print("<br /> <h1> ##### ERROR ##### </h1>");
		
		}			

		  	con.close();

%>

</body>
</html>
