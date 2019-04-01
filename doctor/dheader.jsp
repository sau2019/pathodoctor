
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
		<<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

     <link href="..\css\mdb.min.css" rel="stylesheet">
     <script src="..\js\bootstrap.js"></script>
     <script src="..\js\bootstrap.min.js"></script>
     <script src="..\js\mdb.min.js"></script>
     <script src="..\js\angular.js"></script>
    
     <script src="..\js\sidebar.js"></script>
       <script src="..\js\all.min.js"></script>
       <script src="..\bootstrap\jquery.min.js"></script>
       <link href="..\css\scroll.css" rel="stylesheet">
       <script src="..\js\scroll.js"></script>
    
       <link href="..\css\footer.css" rel="stylesheet">
       <link href="..\css\sidebar.css" rel="stylesheet">
       <link href="..\css\bootstrap.min.css" rel="stylesheet">
    

       			<script src="..\bootstrap\jquery.min.js"></script>
	
			<link rel="stylesheet" href="..\css\bootstrap.css">
			
						
			<link rel="stylesheet" href="..\css\navigation.css">
			 <link href="..\css\all.min.css" rel="stylesheet">
			 

		
<style>
		ul.dropdown-menu{
			background-color:#D8D8D8;
		 width:200px; 
			height:300px;
			border-radius:10px;
		}	
			.col-sm-4{
				text-align:center;
			}
			.col-sm-4 ul{
				color:red;
				background-color:rgba(255,255,155,0.4);
				border:1px solid grey;
				border-radius:10px;
				padding:2px;
				align:center
			}
			.col-sm-4 ul li:hover{
				background-color:rgba(255,203,151,0.4);
				border:1px solid grey;
				border-radius:2px;
				padding:10px 20px;
			}
		
</style>

</head>
<body >	
		  <header id="header">
	  		<div class="header-top">
	  			<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-4 col-sm-2 col-2 header-top-left">
			  				<a href="tel:+918839847409">
			  					<i class="fa fa-phone"></i>&nbsp<span class="text">+91 8839847409</span></a>
				  			<a href="http://gmail.com"><i class="fa fa-envelope"></i><span class="text">&nbsp srkit28@gmail.com</span></a>			
			  			</div>
			  			<div class="col-lg-4 col-sm-6 col-6 header-top-right">	
			  	
			  			</div>
			  			<div class="col-lg-4 col-sm-4 col-4">
			  				<h5 style="color:white; text-align:right; font-size:15px; display:block">
									<% out.print(session.getAttribute("dname"));  %></h5>
					 	</div>
					</div>		  					
	  			</div>
			</div>

		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <h1><b id="p1" style="color:#FF0000; font-size:30px">
						Path<i class="fa fa-cog fa-spin fa-3x fa-fw" style="font-size:20px;color="#FF0000"></i></b><b id="p2"style="color:#1B7FB3; font-size:30px">Doctor</b>
					</h1>
			      </div>

			      <nav id="nav-menu-container">
			        <ul class="nav-menu">
			     
			          <li><a href="doctordash.jsp" id="dhome">Home</a></li>
			          
			          <li><a href="#">Patient list</a></li>
			          <li></li>
  
			          <li class="dropdown">
          				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services</a>
          				<ul class="dropdown-menu">
            				<li><a href="dresetpassword.jsp">ChangePassword</a></li>
            				<li><a href="#">Services</a></li>
            				<li><a href="#"></a></li>
            				<li role="separator" class="divider"></li>
            				<li><a href="#">Separated link</a></li>
            				<li role="separator" class="divider"></li>
           					 <li><a href="#">One more separated link</a></li>
         				 </ul>
       				 </li>   
			        
			        <li><a href="doctorlogout.jsp">Logout<img src="../icon/logout.png"  height="20px" width="20px" ></a></li>
			  
			    </ul>

			  </nav>

			    <div id="sidebtn">	
			      <img src="../icon/setting.png" height="40px" width="40px" style="border-radius:50%" onclick="openNav()" aria-hidden="true" style="cursor:pointer;float:right; font-size: 18px; opacity:1"/>
			    </div>
			          		    		
		  </div>
		    	
		</div>
 </header>


<div id="mySidenav" class="sidenav">
		<button type="button" class="close" onclick="closeNav()" aria-label="Close" aria-hidden="true" style="float:left; margin-left:10px">
         <h1>X</h1>
        </button>
		
			<div class="row">
			 		<div class="col-sm-4">
			 		<ul>
			 			<li><a ><b>Dashboard Module</b></a></li>
					 	<li><a href="doctordash.jsp">Home</a></li>
						<li><a href="doctorlist.jsp">Patient list</a></li>
						<li><a href="usertest.jsp"></a></li>
						  <li><a href="doctorlogout.jsp">Log Out</a></li>
					</ul>
			 		</div>
			 		
		
			 </div>
   
</div>
</body>
</html>