<%@ page import = "java.sql.*" %>
<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.security.MessageDigest"%>

<%
String email=request.getParameter("email");


String password=request.getParameter("password");
// Set password string, and print it out
          String passwd = password;
    //out.println("Password is: " + passwd + ".<br>");

          // Create a new instance of MessageDigest, using MD5. SHA and other
          // digest algorithms are also available.
          MessageDigest alg = MessageDigest.getInstance("MD5");

          // Reset the digest, in case it's been used already during this section of code
          // This probably isn't needed for pages of 210 simplicity
          alg.reset(); 

          // Calculate the md5 hash for the password. md5 operates on bytes, so give
          // MessageDigest the byte verison of the string
          alg.update(passwd.getBytes());

          // Create a byte array from the string digest
          byte[] digest = alg.digest();

          // Convert the hash from whatever format it's in, to hex format
          // which is the normal way to display and report md5 sums
          // This is done byte by byte, and put into a StringBuffer
          StringBuffer hashedpasswd = new StringBuffer();
          String hx;
          for (int i=0;i<digest.length;i++){
              hx =  Integer.toHexString(0xFF & digest[i]);
              //0x03 is equal to 0x3, but we need 0x03 for our md5sum
              if(hx.length() == 1){hx = "0" + hx;}
              hashedpasswd.append(hx);
          }

          // Print out the string hex version of the md5 hash
    //out.println("MD5 version is: " + hashedpasswd.toString() + "<br>");



          String md5_encoded_pass=hashedpasswd.toString();

    //out.println("storing hash md5 in a variable:"+md5_encoded_pass);






Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/pathodoctor", "root", "root");

Statement qry = con.createStatement();
String qry1="update dregister set password='"+md5_encoded_pass +"'  where id="+ session.getAttribute("duserid")+" and email='" +email+"' ";
int i = qry.executeUpdate(qry1);


if(i != 0) 		out.print("<br /> <h1>Your Password is Successfully changed.</h1>");

else 			out.print("<br /> <h1> Either you have entered a wrong email id. </h1>");

con.close();
%>
<button class="btn btn-danger btn-sm"><a href="doctordash.jsp">Go to Dashboard.</a></button>