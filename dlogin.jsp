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

     <script src="js\bootstrap.js"></script>
     <script src="js\bootstrap.min.js"></script>
     <script src="js\mdb.min.js"></script>
     <script src="js\angular.js"></script>
     <script src="js\sidebar.js"></script>
     <script src="bootstrap\jquery.min.js"></script>
     <script src="js\all.min.js"></script>
     <script src="js\signupvalid.js"></script>
      <script src="js\scroll.js"></script>
      <style>
       #dlogin,#doctor{
      color:#0080FF;
      font-weight:900px;
    }
    </style>
</head>

<body ng-app="">

  <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>
<jsp:include page="header.html"/>

<div class="container1">
  <div class="container">

     <div class="card ">
     <center>
        <img src="icon\login.png" height="130px" width="130px" > <h4>Doctor Login</h4>
      </center>
      <article class="card-body">
                   
          <form method="POST" action="process/dloginproc.jsp">
              <div class="form-group">
                UserId or email
                    <input class="form-control" name="email" placeholder="Email" type="email" ng-model="Userid">
              </div> 

              <div class="form-group">
              password
                  <input class="form-control" name="password" placeholder="******" type="password" ng-model="password">
               </div> 

               <div class="form-group"> 
                  <div class="checkbox">
                        <label> <input type="checkbox"> Save password </label>
                  </div> 
              </div> 

                <div class="form-group">
                  <center>
                  <button type="submit" class="btn btn-primary btn-sm" style="width:20%"> Login  </button>
                </center>
                <br>
               <a class="float-right" href="#">Forgot Password?</a>
               </div>                                                             
        </form>
      </article>
    </div>
  </div>
</div>
<jsp:include page="footer.html"/>
 <jsp:include page="modal1.html" />

</body>
</html>