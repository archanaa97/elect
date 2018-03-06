<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCT</title>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<body background="resources\images\33.jpeg">
<!-- <nav  style="background-color:brown" class="navbar navbar-inverse">
  
  <div class="container-fluid">
  <div class="navbar-header">
  <a class="navbar-brand" href="index"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
  </div> -->
    <!-- 
     <li> <a href="index"><span class="glyphicon glyphicon-home"></span></a></li>
      <li><a href="Aboutus">ABOUT US</a></li>
      <li><a href="ContactUs">CONTACT US</a></li>
     <li><a href="ALL">ALL</a></li>
      <li><a href="Product">PRODUCT</a></li>
        <li><a href="Retrieve">RETRIEVE</a></li>
        <li><a href="cateogry">CATEGORY</a></li>
         
            <li><a href="All">ALL CATEGORY</a></li>
            
    </ul> -->
   
   <!--  <ul class="nav navbar-nav navbar-right">
    
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
    </ul> -->
    
  </div>
</nav>
<%-- <form tag="Create Logon"> --%>
		<div align="center">
		<div class="form-group" class="col-sm-10">
		    <h1><center>CATEGORY ADD</center></h1><br/><br/>
		    
		<form:form action="addCateogry" method="post" commandName="addNewCateogry">
			
			<table>
		    <tr>
			<td>
			<form:label path="name">Category Name:-</form:label>
			<form:input path="name" required="required" placeholder="Enter the name of product" class="form-control" pattern="[a-zA-z0-9 ]{3,15}" title="enter atleast three alphabets"/><br/><br/>
			<td>
			<tr>
			</table>
			
			<table>
		    <tr>
			<td>
			<form:label path="desc">Category Desc:-</form:label>
			<form:input path="desc" required="required" placeholder="Enter the Description" class="form-control" pattern="[a-zA-z0-9 ]{3,15}" title="enter atleast three alphabets"/><br/><br/>
	        <td>
			<tr>
			</table>
			
			<input type="submit" value="Submit" />
			
		</form:form>
        </div>
		</body>
</html>	    
		    