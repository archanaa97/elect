<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<body background="resources\images\22.png">
<meta charset="ISO-8859-1">
<title>EDIT</title>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<!-- <nav  style="background-color:peach" class="navbar navbar-inverse">
  
  <div class="container-fluid">
  <div class="navbar-header">
  <a class="navbar-brand" href="index"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
  </div> -->
    
    <!-- <ul class="nav navbar-nav">
     <li><a href="index">HOME</a></li>
    <li><a href="Aboutus">About Us</a></li>
    <li><a href="ContactUs">Contact Us</a></li>
    <li><a href="showall">Show All</a></li>
    <li><a href="Product">Product</a></li>  
    <li><a href="Retrieve">Retrieve</a></li> 
    <li><a href="cateogry">Cateogry</a></li> 
    </ul> -->
   
   <!--  <ul class="nav navbar-nav navbar-right">
    
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
    </ul> -->
      
  </div>
</nav>
<%-- <form tag="Create Logon"> --%>
		<div align="center">
		    <h1><center>EDIT PRODUCT</center></h1><br/><br/>
		    
		<form:form action="${pageContext.request.contextPath}/editProduct" method="post" commandName="product" enctype="Multipart/form-data">
		 <form:hidden path="id" value="${product.id}"/>
			
			<form:label path="name"> PRODUCT</form:label><br/>
			<form:input path="name" value="${product.name}"/><br/>
			
		
			
			<form:label path="price">PRICE</form:label><br/>
			<form:input path="price" value="${product.price}"/><br/>
	
			<form:label path="desc">DESCRIPTION</form:label><br/>
			<form:input path="desc" value="${product.desc}"/><br/>
			
			
			<form:label path="quantity">QUANTITY</form:label><br/>
			<form:input path="quantity" value="${product.quantity}"/><br/>
			
			<%--  <form:label path="image">IMAGE</form:label><br/>
			<form:input path="image" type="file" name="file"/><br/> --%>
			
		    <input type="submit" value="Submit" />
		</form:form>	    
		

		</body>
</html>	    
		    