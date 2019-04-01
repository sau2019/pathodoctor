<%@include file="connection.jsp" %>
<%@page contentType="text/html; charset=iso-8859-1" language="java" import="java.security.MessageDigest"%>
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

<%
		String name = request.getParameter("fname");
		String gender= request.getParameter("gender");
		String courses = request.getParameter("courses");
		String spec= request.getParameter("spec");
		int exp = Integer.parseInt(request.getParameter("experience"));
		String had= request.getParameter("haddress");
		String oad= request.getParameter("oaddress");
		String state= request.getParameter("state");
		String city= request.getParameter("city");
		String email= request.getParameter("email");
		String mobile= request.getParameter("mobile");
		String password=request.getParameter("password1");
		String hint= request.getParameter("hint");


	
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

             Statement st1 = con.createStatement();

        ResultSet rs1;

          rs1 = st1.executeQuery("select * from dregister");
        int flag=1; // true

        while(rs1.next())
            {
              String e= rs1.getString("email");
              if(email.equals(e))
              {
                flag=0; //false
              }
              else{
              flag=flag;
            } 
        }




        if(flag==0)
        {
          out.println("<h4> Your Email id is already registered with us. Kindly login first...</h4>");
        }

        if(flag == 1)
        {

   Statement qry = con.createStatement();
		String qry1="insert into dregister(name,gender,courses,specilization, experience, haddress ,oaddress,state, city, email,mobile,password,hint) values('" + name + "', '" + gender + "','"+courses +"','"+ spec +"',"+ exp +",'"+ had+"','"+ oad +"','"+state +"','"+ city +"','"+ email+"','"+ mobile +"','"+md5_encoded_pass +"','" + hint+"')";
		 

		//out.print(qry1);
		int i = qry.executeUpdate(qry1);


		if(i != 0) 		out.print("<br /> <h4>Thanks for registering with us.</h4>");

		else 			out.print("<br /> <h1> ##### ERROR ##### </h1>");


  }
  
  con.close();
%>

    <a href="../index.jsp"><button class="btn btn-primary">Home page</button> </a>
      <a href="../dlogin.jsp"><button class="btn btn-primary">Login Page</button> </a>
</center>
       <marquee><h1><b id="p1" style="color:#FF0000; font-size:30px">
                  Path<i class="fa fa-cog fa-spin fa-3x fa-fw" style="font-size:20px;color="#FF0000"></i></b><b id="p2"style="color:#1B7FB3; font-size:30px">Doctor</b>
        </h1>
      </marquee>



</body>
</html>
