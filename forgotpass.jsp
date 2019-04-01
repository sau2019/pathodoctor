
<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="icon" href="icon\patho.png" type="image/jpg" sizes="16x16">
    <title>PathoDoctor</title>
      <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      <link href="css\all.min.css" rel="stylesheet">
       <link href="css\bootstrap.css" rel="stylesheet">
       <link href="css\bootstrap.min.css" rel="stylesheet">
       <link href="css\mdb.min.css" rel="stylesheet">
      <link href="css\card.css" rel="stylesheet">
      <link href="css\scroll.css" rel="stylesheet">
      <link href="css\footer.css" rel="stylesheet">


     <script src="js\bootstrap.js"></script>
     <script src="js\bootstrap.min.js"></script>
     <script src="js\mdb.min.js"></script>
     <script src="js\angular.js"></script>
     <script src="js\sidebar.js"></script>
      <script src="js\all.min.js"></script>
      <script src="bootstrap\jquery.min.js"></script>
      <script src="js\scroll.js"></script>
      <script src="js\myapp.js"></script>
      <script src="js\myctrl.js"></script>

	</head>

<body ng-app="myapp" ng-controller="myctrl">

        <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>

        <jsp:include page="header.html"/>

<div class="container" >
    <div class="container1" >
          <div class="card" >
             <center>
                    	<img src="icon\forgot.png"  style="height:120px; width:120px;margin-top:10px;" >
                      <h5 style="color:grey; position:relative;">Forgot Password ?</h5>
              </center>

             <article class="card-body">
              <form method="post">
                  <div class="form-group">
  		             Email ID.<input type="email" name="email" class="from-content" required>
            	     </div>

  	               <div class="form-group">
                    Mobile NO.<input type="text" name="mobile" class="from-content" minlength="10" required>
  	               </div>

                	<div class="form-group">
                      <input type="checkbox" ng-model="check" class="form-content"><a href="">&nbsp Terms And Conditions.</a>
  	               </div>
  	             
                 <center>
  	                 <div class="form-group">
  	                   	<button class="btn btn-info btn-lg" ng-show="check">Submit</button>
                    	</div>
                  </center>

              </form>
          </article>
    </div>
  </div>
</div>

<jsp:include page="footer.html"/>
 <jsp:include page="modal1.html" />

</body>
</html>