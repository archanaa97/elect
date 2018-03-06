<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>.carousel{width:100%;}</style>
  <style>h2{font-style:oblique;}</style>
  <style>h4{font-style:oblique;}</style>
  <style>.carousel{width:100%;}</style>
  <style type="text/css">
  .footer{position: absolute;
  bottom: 1;
  width: 100%;
  height: 350px;
  background-color: brown;}
  </style>
<title>Electric.com</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
    <body>
    <nav class="navbar navbar-default navbar-fixed-top">
   <!--  <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
          <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form> -->
<nav style="background-color: brown"class="navbar navbar-inverse">
  <div class="container-fluid">
   <div class="navbar-header">
    <a class="navbar-brand" href="index.jsp"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
    </div>
    
    <ul class="nav navbar-nav">
      
  
  <!--  <li> <a href="index"><span class="glyphicon glyphicon-home"></span></a></li>
  
        <li><a href="index">HOME</a></li>
      <li><a href="Aboutus">ABOUT US</a></li>
      <li><a href="ContactUs">CONTACT US</a></li>
     <li><a href="ALL">ALL</a></li>
      <li><a href="Product">PRODUCT</a></li>
        <li><a href="Retrieve">RETRIEVE</a></li>
        <li><a href="cateogry">CATEGORY</a></li>
        
            <li><a href="All">ALL CATEGORY</a></li>
            
       

    </ul> -->
   <%--  <ul class="nav navbar-nav navbar-right">
         
         <li><a href="${pageContext.request.contextPath}/cart"> <span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart</a></li>
        
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul> --%>
    
  </div>
</nav>
</nav>
</body>
</nav>
<br><br><br><br>

        <center><img src="resources\images\26.PNG"><h1><p class="text-warning">WELCOME TO THE GADGET BAZAAR</p></h1></center>
   
        <marquee bgcolor="lavender" width="1500" height="35">
            <h5>>>Save Upto 60%&nbsp;&nbsp; >>Free Global Shipping&nbsp;&nbsp;>>Money back Gurantee&nbsp;&nbsp;>>Free 100 Day Returns&nbsp;&nbsp; >>Local Warranty&nbsp;&nbsp; >>Authenticity Guaranteed &nbsp;&nbsp;>>ALL Products available in affordable rates</h5></marquee>

       <div class="container">
  <h2></h2>  
</div>

<!-- <body background="resources\images\20.jpg"> -->
<div id="myCarousel" class="carousel slide" style="width: 1000px; height:300px; margin: 0 auto">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1" ></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
    <li data-target="#myCarousel" data-slide-to="6"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" style="width: 1000px; height:300px; margin: 0 auto">
    <div class="item active">
      <img src="resources\images\35.jpg">
       
    </div>

    <div class="item" >
      <img src="resources\images\36.jpg">
      
    </div>

    <div class="item" >
      <img src="resources\images\3.jpg">
       
    </div>
    
    <div class="item" >
      <img src="resources\images\4.jpg">
       
    </div>
    
    <div class="item" >
      <img src="resources\images\5.jpg">
       
    </div>
    
    <div class="item" >
      <img src="resources\images\6.jpg">
       
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
</div><br/></br/><br/><br/>
                                                                                      
  <div class="table-responsive">          
  <table class="table">
    <thead>
 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
<button type="button" class="btn btn-primary"><img src="resources\images\1.jpg" class="img-rounded" alt="camera" width="200" height="150"><br/>APPLE 15.6 TV <br/>PRICE-120000</button>&nbsp &nbsp &nbsp
<button type="button" class="btn btn-primary"><img src="resources\images\2.jpg" class="img-rounded" alt="watch" width="200" height="150"><br/>SONY DSLR CAMERA <br/>PRICE-60000</button>&nbsp &nbsp &nbsp 
<button type="button" class="btn btn-primary"><img src="resources\images\3.jpg" class="img-rounded" alt="laptop" width="200" height="150"><br/>SAMSUNG DIGITAL WATCH <br/>PRICE-20000</button>&nbsp &nbsp &nbsp
<button type="button" class="btn btn-primary"><img src="resources\images\4.jpg" class="img-rounded" alt="mobile" width="200" height="150"><br/>SONY HEADPHONE<br/>PRICE-5000</button><br/>
<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<button type="button" class="btn btn-primary"><img src="resources\images\5.jpg" class="img-rounded" alt="mobile" width="200" height="150"><br/>APPLE 15.6 LAPTOP <br/>PRICE-100000</button>&nbsp &nbsp &nbsp 
<button type="button" class="btn btn-primary"><img src="resources\images\6.jpg" class="img-rounded" alt="mobile" width="200" height="150"><br/>FAST TRACK WATCH <br/>PRICE-3500</button>&nbsp &nbsp &nbsp 
<button type="button" class="btn btn-primary"><img src="resources\images\8.jpg" class="img-rounded" alt="mobile" width="200" height="150"><br/>IPHONE 6S <br/>PRICE-50000</button>&nbsp &nbsp &nbsp 
<button type="button" class="btn btn-primary"><img src="resources\images\9.jpg" class="img-rounded" alt="mobile" width="200" height="150"><br/>SAMSUNG MOBILE <br/>PRICE-15000</button>&nbsp &nbsp &nbsp 

</thead>
</table>
</div>

<nav class="footer">
  <div class="container">
  <table>
  <tr><th>
    <h5><b>MOBILES</b></h5><br>
    <h5>Samsung</h5>
    <h5>Nokia</h5>
    <h5>Micromax</h5>
    <h5>Gionee</h5> 
    <h5>Apple</h5>
    <h5>Motorola</h5>
    <h5>lenovo</h5>
    <h5>Sony</h5>
    </th>
   
   <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
   <th>
    <h5><b>EARPHONES</b></h5>
    
    <h5>Sony</h5>
    <h5>Beetel</h5>
    <h5>Bose</h5>
    <h5>Sennheiser</h5>
    <h5>JBL</h5>
    <h5>Skullcandy</h5>
    <h5>All</h5>
    
    </th>
    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
  
    <th>
    <h5><b>LAPTOPS</b></h5>
    <h5>HP</h5>
    <h5>DELL</h5>
    <h5>LENOVO</h5>
    <h5>ACER</h5>
    <h5>APPLE</h5>
    <h5>All</h5>
    </th>
    <th>
    <h5><b>SPEAKERS</b></h5>
   
    <h5>JBL</h5>
    <h5>LENOVO</h5>
    <h5>SONY</h5>
    
    </th>
    
    <th>
    <h5><b>ELECTRIC</b></h5>
   
    <h5>About Us</h5>
    <h5>Contact</h5>
    <h5>Products</h5>
    <h5>Login</h5>
    <h5>Signup</h5>
    <h5>Admin</h5>
   
    </th>
    
    </tr>
   </table>
   </div>
</nav> 

</body>
</html>