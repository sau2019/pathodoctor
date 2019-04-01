
<!DOCTYPE html>
<html lan="en">
<head>
    <link rel="icon" href="icon\patho.png" type="image/jpg" sizes="16x16">
    <title>PathoDoctor</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

   <link href="css\scroll.css" rel="stylesheet">
      <link href="css\card.css"rel="stylesheet">
        <link href="css\all.min.css" rel="stylesheet">
       <link href="css\footer.css" rel="stylesheet">
     <link href="css\bootstrap.css" rel="stylesheet">
     <link href="css\bootstrap.min.css" rel="stylesheet">
     <link href="css\mdb.min.css" rel="stylesheet">


     <script src="js\scroll.js"></script>
     <script src="js\bootstrap.js"></script>
     <script src="js\bootstrap.min.js"></script>
     <script src="js\mdb.min.js"></script>
     <script src="js\angular.js"></script>
     <script src="js\sidebar.js"></script>
     <script src="bootstrap\jquery.min.js"></script>
     <script src="js\all.min.js"></script>
     <script src="js/signupvalid.js"></script>
  

<script>

        function pvalidate()
      {
          var p1=document.sform.password1.value.length;

          var m="";

          if(p1>=6)
          {
            m="Strong Password.";
          }
          else{
            m="Please enter atleast 6 digit long password.";
          }
          document.getElementById("p").innerHTML = m;
      };


      function confirmpass()
      {
          var p1=document.getElementById("pass1").value;
          var p2=document.getElementById("pass2").value;
          var cm="";

          if(p1==p2)
          {
            cm="Password matched successfully."
          }
          else{
            cm="Password doesn't match."
          }
          document.getElementById("cp").innerHTML=cm;
      };


      function mobvalid()
      {
        var mo=document.sform.mobile.value.length;
        var mb="";

        if(mo==10)
        {
          mb="";
        }
        else{
          mb="enter only 10 digit mobile no.."
        }
        document.getElementById('mob').innerHTML=mb;
      };

</script>

<style>
.message{color:red;background-color:yellow;}
</style>

</head>
<body ng-app="">

    <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>
        <jsp:include page="header.html"/>

  <div class="container1" style="background-color:rgba(135,167,252,0.2);border-left:20px solid #FF648E ">
    <div class="container">
          <center>
          <img src="icon\register1.png" height="130px" width="130px" > 
          <label><h4><b>User Registration</b></h4></label>
          </center>
      
           <form method="POST" action="./process/register.jsp" name="sform">
              <div class="form-group">
                Name:<input type="text" placeholder="Full name" name="fname" class="form-content" ng-model="fname" maxlength="50" required>
              </div>

                <div class="form-group">
                 Gender:&nbsp<input type="radio"  name="gender" ng-model="gender" value="Male">Male &nbsp<input type="radio"  name="gender"ng-model="gender" value="Female">Female
                </div>

              <div class="form-group">
               Address:<textarea placeholder="Address" name="address" row="6" style="height:50px; border-radius:1px; border-style:solid; border-color:#C0C0C0" class="form-content" ></textarea>
              </div>
       
               <div class="form-group">
               Email:<input type="email" placeholder="email id"class="form-content" name="email" required>
              </div>

              <div class="form-group">
               Mobile No.:<input type="text" placeholder="mobile no." class="form-content" name="mobile" minlength="10"  onkeyup="mobvalid();" required> <span id="mob" class="message"></span>
              </div>
       
              <div class="form-group">
                Choose Password:<input type="password" placeholder="*******"class="form-content" name="password1" id="pass1" ng-model="password" onkeyup="pvalidate();" required>  <span id="p" class="message"></span> 
             </div>

                <div class="form-group">
                Confirm Password:<input type="password"  id="pass2" placeholder="*******" class="form-content" name="password2"  onkeyup="confirmpass();" required> <span id="cp" class="message"></span>
              </div>

              <div class="form-group">
              Hint:<input type="text" placeholder="Enter your nickname" class="form-content" name="hint" maalength="20">
            </div>


              <div class="form-group"><h6>
              <input type="checkbox"  ng-model="terms" >
               <a href="#">Terms And Conditions.</a></h6>
              </div>

               <div class="form-group" >
                  <center>
                 <button ng-show="terms" class="btn btn-info btn-lg" ng-click="showbutton();">Register</button>
                 </center>
              </div>
          </form>

    </div>
</div>

<jsp:include page="footer.html"/>
 <jsp:include page="modal1.html" />

</body>
</html>