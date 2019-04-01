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
    <meta name="viewport" content="width=device-width" initial-scale="1.0">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link src="icon/pd.jpg"></icon>

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
.container textarea{
  height:60px;
  width:200px;

}
#uhome{
    color:#0080FF;
    font-weight:900px;
    background-color:yellow;
}

</style>
 
</head>

<body ng-app="">
  <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>

<jsp:include page="userheader.jsp" />


<div class="container1" style="background-color:rgba(135,167,252,0.2);">

<div class="container">
 <div class="card">
 <center>
<img src="../icon/google.gif" height="200px" width="350px" >
 
  <form  method="post/get" action="">
    <table>
      <tr><td>Name :</td><td><input type="text" name="name"></td></tr>
      <tr><td>Email :</td><td><input type="email" name="email" ></td></tr>
      <tr><td>Disease :</td><td><select name="disease">
        <option value="headache">Headache</option>
        <option value="Tuberculosis">Tuberculosis</option>
        <option value="headache">Headache</option>
        <option value="headache">Headache</option>
      
      </select></td></tr>
      <tr><td>Others:</td><td><textarea height="50px" width="200px"></textarea></td></tr>
      <tr><td>Age :</td><td><input type="text" name="age" ></td></tr>
      <tr><td>How Many days from you suffering ? :</td>
        <tr>
<td><input type="radio" name="days" value="2 days">2 days</td>
<td><input type="radio" name="days" value="4 days">4 days</td>
<td><input type="radio" name="days"   value="8 days">8 days</td>
<td><input type="radio" name="days"  value="12 days">12 days</td>
</tr>
<tr>

<td><input type="radio" name="days"  value="30 days">30 days</td>
<td><input type="radio" name="days"   value="2 months">2 months</td>
<td><input type="radio" name="days" value="6 months ">6 months</td>
<td><input type="radio" name="days"  value="1 year">1 year</td>
</tr>
<tr>
<td><input type="radio" name="days"  value="2 year">2 year</td>
<td><input type="radio" name="days" value="4 year">4 year</td>
<td><input type="radio" name="days"   value="others">others</td>
</tr>

</tr>
<br >

      <tr><td>Do You have Consulted any Doctor ? :</td><td><input type="radio" name="con" class="form-content" value="yes">Yes</td>
        <td><input type="radio" name="con" value="no">No</td></tr>


        <tr><td>Message:</td><td ><textarea height="50" ></textarea></td></tr>
    </table>
<button class="btn btn-primary btn-md">Submit</button>
  </form>
</center>
</div>
</div>

  </div>

<% out.print("id= "+session.getAttribute("userid")); %>
 


  <jsp:include page="ufooter.html"/>
   <jsp:include page="../modal.html" />
 
</body>

</html>

<% } %>