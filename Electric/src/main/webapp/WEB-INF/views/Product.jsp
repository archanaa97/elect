<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>

<!-- <body background="resources\images\21.jpg"> -->
<meta charset="ISO-8859-1">
<title>PRODUCT</title>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
 <script language="Javascript">

 function IsEmpty(){
	 var errormessage = "";
	  if(document.forms['name'].question.value === "")
	  {
	    errormessage += "enter your name \n";
	   
	}
	  if(errormessage !=""){
		  alert("errormessage");
	   return false;
	  }

        </script>
<body background="resources\images\33.jpeg">
<!-- <nav  style="background-color:brown" class="navbar navbar-inverse">
  
  <div class="container-fluid">
  <div class="navbar-header">
  <a class="navbar-brand" href="index"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
  </div> -->
    
   <!--  <ul class="nav navbar-nav">
   <li> <a href="index"><span class="glyphicon glyphicon-home"></span></a></li>
      <li><a href="Aboutus">ABOUT US</a></li>
      <li><a href="ContactUs">CONTACT US</a></li>
      <li><a href="ALL">ALL</a></li>
      <li><a href="Product">PRODUCT</a></li>
      <li><a href="Retrieve">RETRIEVE</a></li>
      <li><a href="cateogry">CATEGORY</a></li>
      <li><a href="All">ALL CATEGORY</a></li>
    </ul> -->
   
    <!-- <ul class="nav navbar-nav navbar-right">
    
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
    </ul> -->
    
  </div>
</nav>
       <%-- <form tag="Create Logon"> --%>
       <%--  <div class="container-fluid bg">
		<div class="contentcontainer med left" style="margin-left: 250px;">
		<div class="row"></div>
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">
		<form class="form-container"> --%>
		<h1><center>PRODUCT ADD</center></h1>
		<div align="center">
		<div class="form-group" class="col-sm-10">
		   
		    
		<form:form action="addProduct" method="post" commandName="addNewProduct" enctype="multipart/form-data" onsubmit="return IsEmpty()">
			
			<table>
		    <tr>
			<td>
			<form:label path="name"> Name</form:label>
			<form:input path="name" required="required" placeholder="Enter the name of product" class="form-control" pattern="[a-z|A-z|0-9|\s,]{5,80}" title="Invalid Username. Min Length: 5, Max Length: 50"/>
			 
		    <td>
			<tr>
			</table>
			
			
            <table>
		    <tr>
			<td>
			<form:label path="desc">DESC</form:label>
			<form:input path="desc" required="required" placeholder="Enter your Description" class="form-control" pattern="[a-z|A-z|0-9|\s,]{5,80}" title="Invalid Username. Min Length: 5, Max Length: 50"/>
	         <td>
			<tr>
			</table>
			
			 <table>
		    <tr>
			<td>
			<form:label path="price">PRICE</form:label>
			<form:input path="price" required="required" placeholder="Enter your Price" class="form-control" pattern="[0-9]+(\\.[0-9][0-9]?)?{2,5}" maxlength="5"  title="enter the correct price"/>
			 <td>
			<tr>
			</table>
			
			
			<%--  <table>
		    <tr>
			<td>
			<form:label path="info">Info</form:label>
			<form:input path="info" placeholder="Enter your info" class="form-control"/>
	         <td>
			<tr>
			</table>
			 --%>
			 <table>
		    <tr>
			<td>
			<form:label path="quantity">Quantity</form:label>
			<form:input path="quantity" required="required" placeholder="Enter your quantity" class="form-control"/>
	         <td>
			<tr>
			</table>
			
			<form:label path="image"></form:label>
			&nbsp&nbsp&nbsp<form:input path="image" type="file" name="file"/>
			<input type="submit" value="Submit" />
			

        <!-- <input id="insert" onclick="IsEmpty();" type="submit"/>  -->
			
			
		</form:form>
		</div>
		</div>
		<%-- </form>
		</div>
		</div>
		
		</div> --%>
		</body>
</html>	    
		    