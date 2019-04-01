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
           <script src="js\scroll.js"></script>
    <link href="css\card.css"rel="stylesheet">
            <link href="css\all.min.css" rel="stylesheet">
          
     <link href="css\bootstrap.css" rel="stylesheet">
     <link href="css\bootstrap.min.css" rel="stylesheet">
     <link href="css\mdb.min.css" rel="stylesheet">
     <script src="js\bootstrap.js"></script>
     <script src="js\bootstrap.min.js"></script>
     <script src="js\mdb.min.js"></script>
     <script src="js\angular.js"></script>
     <script src="js\sidebar.js"></script>
     <script src="bootstrap\jquery.min.js"></script>
     <script src="js\all.min.js"></script>
      <link href="css\footer.css" rel="stylesheet">
<script>

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
      <label><h4><b>Doctor Registration</b></h4></label>
      </center>
      
      <form method="POST" action="process/dregister.jsp" name="sform">
        <div class="form-group">
          Name:<input type="text" placeholder="Full name" name="fname" class="form-content" ng-model="fname" maxlength="50"  required>
        </div>

        <div class="form-group">
         Gender:&nbsp<input type="radio"  name="gender" ng-model="gender" value="Male">Male &nbsp<input type="radio"  name="gender"ng-model="gender" value="Female">Female
        </div>

        <div class="form-group">
          Which Medical Courses do you have completed ?
          <select name="courses"> 
            <option value="BDS">BDS-Bachelor of Dental Surgery</option>
           <option valu="MBBS"> MBBS-Bachelor of Medicine, Bachelor of Surgery</option>
          <option value="BAMS">BAMS-Bachelor of Ayurvedic Medicine and Surgery</option>
          <option value="BUMS">

BUMS-Bachelor of Unani Medicine and Surgery</option>
<option value="BHMS">

BHMS-Bachelor of Homeopathy Medicine and Surgery</option>
          </select>
        </div>

         <div class="form-group">
         In which area do you Specialize ?.
         <select name="spec">
           <option value="Pedetrician">Pedetrician</option>
           <option value="Gynecologist">Gynecologist</option>
           <option value="surgeon">Surgeon</option>
           <option value="Phychiatrist">Phychiatrist</option>

         </select>
        </div>

         <div class="form-group">
         How many year do have you have Exprience in this field ?
         <select name="experience"> 
            <option value="0">0 year</option>
            <option value="1">1 year</option>
            <option value="2">2 year</option>
            <option value="3">3 year</option>
            <option value="4">4 year</option>
            <option value="5">5 year</option>
            <option value="6">6 year</option>
            <option value="7">8 year</option>
            <option value="9">9 year</option>
            <option value="10">10 years</option>

         </select>
        </div>

        <div class="form-group">
        Home Address:<textarea placeholder="Address" name="haddress" row="6" style="height:50px; border-radius:1px; border-style:solid; border-color:#C0C0C0" class="form-content" ></textarea>
        </div>

        <div class="form-group">
        Office Address:<textarea placeholder="Address" name="oaddress" row="6" style="height:50px; border-radius:1px; border-style:solid; border-color:#C0C0C0" class="form-content" ></textarea>
        </div>
        <div class="form-group">
      Select State
      <select name="state">
                
                  <option value='Andaman and Nicobar Islands'>Andaman and Nicobar Islands</option>
                  <option value='Andhra Pradesh'>Andhra Pradesh</option>
                  <option value='Arunachal Pradesh'>Arunachal Pradesh</option>
                  <option value='Assam'>Assam</option>
                  <option value='Bihar'>Bihar</option>
                  <option value='Chandigarh'>Chandigarh</option>
               
                  <option value='Madhya Pradesh'>Madhya Pradesh</option>
              
                  </select>
</div>
 <div class="form-group">
      Select city
      <select name='city'>
                
                  <option value='Vidisha'>Vidisha</option>
                  <option value='Bhopal'>Bhopal</option>
                  <option value='Barkhedi'>Barkhedi</option>
                  <option value='Jabalpur'>Jabalpur</option>
                  <option value='Sagar'>Sagar</option>
                  <option value='Khandwa'>Khandwa</option>
                
                  </select>
</div>
       
         <div class="form-group">
         Email:<input type="email" placeholder="email id"class="form-content" name="email" required>
        </div>

        <div class="form-group">
         Mobile No.:<input type="text" placeholder="mobile no." class="form-content" name="mobile" onkeyup="mobvalid();" required><span id="mob" class="message"></span>
        </div>
       
        <div class="form-group">
          Choose Password:<input type="password" placeholder="*******"class="form-content" name="password1" ng-model="password1" onkeyup="pvalidate();" required><span id="p" class="message"></span>
         
        </div>

          <div class="form-group">
          Confirm Password:<input type="password" placeholder="*******" class="form-content" name="password2" onkeyup="confirmpass();"required><span id="cp" class="message"></span>
        </div>
          <div class="form-group">
          Hint:<input type="text" placeholder="Enter your nickname" class="form-content" name="hint" maalength="20">
        </div>
       
        <div class="form-group"><h6>
        <input type="checkbox"  ng-model="terms" >
       <a href="#">Terms And Conditions.</a></h6>
        </div>

         <div class="form-group">
          <center>
         <button ng-show="terms" class="btn btn-info btn-lg">Register</button>
       </center>
        </div>


      </form>

</div>
</div>
</div>
<jsp:include page="footer.html"/>
 <jsp:include page="modal1.html" />

</body>
</html>