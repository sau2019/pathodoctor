<!DOCTYPE html>
<html lan="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
   <title>PathoDoctor</title>
    <link rel="icon" href="icon\patho.png" type="image/jpg" sizes="16x16">
   
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

     <link href="css/footer.css" rel="stylesheet">
      <link href="css/all.min.css" rel="stylesheet">
     <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/mdb.min.css" rel="stylesheet">
     <link href="css/scroll.css" rel="stylesheet">
     <link href="css/content.css" rel="stylesheet">

  
     <script src="js/bootstrap.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/mdb.min.js"></script>
     <script src="js/angular.js"></script>
     <script src="js/sidebar.js"></script>
      <script src="js/all.min.js"></script>
       <script src="bootstrap/jquery.min.js"></script>
       <script src="js/myapp.js"></script>
       <script src="js/myctrl.js"></script>
      <script src="js/scroll.js"></script>


<style>

    #about{
      color:#0080FF;
      font-weight:900px;
    }

   .content{
    position:relative;
    background-origin:border-box;
    top:0;
    bottom: 0;
    background-size:100%;
    background-repeat: repeat-y;

    background-image:linear-gradient(to right,blue 60%,white 100%),url('image/header.gif');
    background-blend-mode:luminosity;
    background-color:rgba(255,0,70,0.8);
   border:5px solid #FF7E00;
   border-radius:10px;
   text-align:left;

  color:#81FF00;
  font-family:Chiller;
  font-weight:100px;
  font-size:25px;
  width:100%;
  height:20%;
  }

  .content h1{
  background-color:grey;
  text-align:center;
  color:white;
   }

</style>

</head>
<body  class="body">

  <button onclick="topFunction()" id="myBtn" title="Go to top" ><i class=" fa fa-caret-up"></i></button>
 

  <jsp:include page="header.html"/>



<div class="container1" >

  <div class="container">
  <div class="content">
    <table>
     <h1 ><i>About PathoDoctor</i></h1><br>
       <h3>This site "PathoDoctor" is introduce to accomplish the real
          time solution in the field of medical.The main purpose of this site is to provide a web platform that provides user to interect with doctor's anytime anywhere.This software is designed and developed by IT group students.<br/>
          Group Member's Name:<center>
          <ol><li>Chandan Kr. 0187IT161008</li>
            <li>Raj Narwade. 0187IT161024</li>
            <li>Saurabh Ranjan Kr. 0187IT161028</li>

          </ol>
             </center>
        </h3>
      </table>
  </div> 
  </div>
</div>

  <jsp:include page="footer.html"/>
   <jsp:include page="modal1.html" />
  
</body>

</html>
