<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gadget Bazaar</title>
<style>
#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  border: none;
  outline: none;
  background-color: #4B4C4D;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius:50%;
}
#myBtn:hover {
  opacity: 0.8;
}
i {
  display: inline-block;
  padding: 1px;
}
.up {
    transform: rotate(90deg);
}
/*GROW*/
.grow img {
	width:332px;
    height:152px;
  transition: all 1s ease;
}
 
.grow img:hover {
  width: 350px;
  height: 170px;
}
</style>



</head>

<body>

<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-arrow-up"></i></button>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

 <!----CAROUSEL---->
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="3"></li>
	  <li data-target="#myCarousel" data-slide-to="4"></li>
	  <li data-target="#myCarousel" data-slide-to="5"></li>
	  <li data-target="#myCarousel" data-slide-to="6"></li>
	  
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/pic14.jpg" alt="Shirts" style="width:100%;">
      </div>

      <div class="item">
        <img src="resources/images/pic15.jpg" alt="Formals">
      </div>      
	
		<div class="item">
        <img src="resources/images/pic16.jpg" alt="Outing" style="width:100%;">
      </div>
	  
	  <div class="item">
        <img src="resources/images/pic17.jpg" alt="Bussiness" style="width:100%;">
      </div>
	  
	  <div class="item">
        <img src="resources/images/pic18.jpg" alt="Bussiness" style="width:100%;">
      </div>
	  
	  <div class="item">
        <img src="resources/images/pic19.jpg" alt="Bussiness" style="width:100%;">
      </div>
	  
	 <!--  <div class="item">
        <img src="resources/images/pic7.jpg" alt="Bussiness" style="width:100%;">
      </div>
      
       <div class="item">
        <img src="resources/images/pic6.jpg" alt="Bussiness" style="width:100%;">
      </div>
    </div> -->

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
<br>
<br>
<br>
<br>

<div class="panel panel-default" >
  <div style="text-align: center;" class="panel-heading">
  <p class="panel-title" style="font-size:45px; font-weight:bold;font-family:Vivaldi;" >Brands In Focus</p>
  </div>
  
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <img src="resources/images/pic20.jpg"  style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
    
	<div align="center" class="col-sm-4">
      <img src="resources/images/pic21.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
	
	<div align="center" class="col-sm-4">
      <img src="resources/images/pic22.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
	
</div>

<br>
<br>
<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <img src="resources/images/pic23.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
    
	<div align="center" class="col-sm-4">
      <img src="resources/images/pic24.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
	
	<div align="center" class="col-sm-4">
      <img src="resources/images/pic25.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
	
</div>
<br>
<br>
</div>

<br>

<div class="panel panel-default" >
  <div style="text-align: center;" class="panel-heading">
  <p class="panel-title" style="font-size:45px; font-weight:bold;font-family:Vivaldi;" >What Are You Looking For</p>
  </div>

<br>
<div class="grow">
<div class="row" style=" width:100%;">
	<div class="col-sm-4" align="center">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/1.jpg"  style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
    
	<div class="col-sm-4" align="center">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/2.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div class="col-sm-4" align="center">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/3.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/4.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/5.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/6.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;"class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/7.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/8.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/9.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/10.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/37.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/38.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/39.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/40.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/41.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/42.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/43.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/ProdAll"><img src="resources/images/44.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
    
</div>
</div>

<br>
<br>
</div>
 
<jsp:include page="/WEB-INF/views/foot.jsp"></jsp:include>

<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};
function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}
// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
</body>
</html>
</head>
<body>

</body>
</html>