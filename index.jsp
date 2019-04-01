
<!DOCTYPE html>
<html lan="en">

<head>
      <link rel="icon" href="icon\patho.png" type="image/jpg" sizes="16x16">
      <title>PathoDoctor</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

      <link href="css/footer.css" rel="stylesheet">
      <link href="css\all.min.css" rel="stylesheet">
     <link href="css\bootstrap.css" rel="stylesheet">
     <link href="css\bootstrap.min.css" rel="stylesheet">
     <link href="css\mdb.min.css" rel="stylesheet">
      <link href="css\scroll.css" rel="stylesheet">
      <link href="css\content.css" rel="stylesheet">
      <link href="css\card.css" rel="stylesheet">
  
     <script src="js\bootstrap.js"></script>
     <script src="js\bootstrap.min.js"></script>
     <script src="js\mdb.min.js"></script>
     <script src="js\angular.js"></script>
     <script src="js\sidebar.js"></script>
       <script src="js\all.min.js"></script>
       <script src="bootstrap\jquery.min.js"></script>
       <script src="js\myapp.js"></script>
       <script src="js\myctrl.js"></script>
      <script src="js\scroll.js"></script>

   

      <!-- Start of  Zendesk Widget script -->
<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=cea5a473-f9a6-4295-a2bf-cb886dcaebd1"> </script>
<!-- End of  Zendesk Widget script -->

  <style>
  #home{
    color:#0080FF;
    font-weight:900px;
  }
 
</style>
</head>

<body ng-app=" " class="body">

    <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>

    <jsp:include page="header.html"/>



  <div class="container1" >

    <div class="container home">

            <div class="card search" style=" background-image:url('image/header.gif');">
                 <form action="doctorlist.jsp" method="post">
                    <h2> <i>Select Your City.</i></h2><select name="city" style="" ><i>
                          <option></option>
                          
                          <option value='Bhopal'>Bhopal</option>
                          <option value='Vidisha'>Vidisha</option>
                          <option value='Barkhedi'>Barkhedi</option>
                          <option value='Jabalpur'>Jabalpur</option>
                          <option value='Sagar'>Sagar</option>
                          <option value='Khandwa'>Khandwa</option>
                          </i>
                       </select>
                 <button class="btn btn-primary" >SUBMIT</button>
                </form>
           </div>


          <div id="myCarousel" class="carousel slide"  data-ride="carousel">
                
                <!-- Wrapper for slides -->
              <div class="carousel-inner" >
                 
                  <div class="item active">
                    <img src="image\rule.jpg" width="100%" height="300px" halt=""> 
                  </div>

                  <div class="item">
                    <img src="image\prag.png"  width="100%" height="300px"alt="pharma">
                  </div>

                  <div class="item">
                    <img src="image\table.jpg"  width="100%" height="300px"alt="">
                  </div>

                  <div class="item">
                    <img src="image\Health.jpg"  width="100%" height="300px"alt="">
                  </div>

              </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left"></span>
                  <span class="sr-only">Previous</span>
                </a>

                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right"></span>
                  <span class="sr-only">Next</span>
                </a>
          </div>

        <div class="row">
            <div class="col-lg-6 col-sm-6 col-12">
                <div class="card video" style="width:100%; height:100%;">
                    <iframe  src="https://www.youtube.com/embed/DQniWOTizpA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                     <h2 float="right">How to improve digestive system</h2>
                </div>

          </div>

            <div class="col-lg-6 col-sm-6 col-12">
                 <div class="card video" style="width:100%; height:100%;" >
                     <iframe  src="https://www.youtube.com/embed/WSWPgFkUUeU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <h2 float="right">We Care For Your Health</h2>
                </div>
            </div>
      </div>


  </div>
</div>

  <jsp:include page="footer.html"/>
  <jsp:include page="modal1.html" />

</body>
</html>
