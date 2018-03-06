
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<body background="resources\images\27.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<title>CONTACT</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<!-- <nav  style="background-color:brown" class="navbar navbar-inverse">
  
  <div class="container-fluid">
  <div class="navbar-header">
  <a class="navbar-brand" href="index.jsp"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
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
            
    </ul>
    -->
    <!-- <ul class="nav navbar-nav navbar-right">
    
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
    </ul>
     -->
  </div>
</nav>
<div align="center">
		    <h1><center>CONTACT US</center></h1><br>
		    
		<form:form action="addContact" method="post" commandName="addNewContact">
			  <div class="form-group">
		  
		    <table>
		    <tr>
			<td>
			<form:label path="yname">Your Name</form:label>
			<form:input path="yname" required="required" placeholder="Enter your Name" class="form-control" pattern="^[a-zA-Z0-9_]{5,20}$" title="Invalid Username. Min Length: 5, Max Length: 20"/><br>
			</td>
			</tr>
			</table>
			
			<table>
		    <tr>
			<td>
			<form:label path="yemail">Your Email</form:label>
			<form:input path="yemail" required="required" placeholder="Enter your Email" class="form-control" pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z]+[\\.]{1}[A-Za-z]+([\\.]{1}[A-Za-z]+)?$" title="Invalid Email"/><br>
			</td>
			</tr>
			</table>
			
			
			<table>
		    <tr>
			<td>
			<form:label path="ymessage"></form:label>
           <br> <textarea name="ymessage" placeholder="Enter your Message" cols="50" rows="4" class="form-control" />
           </textarea>
			</td>
			</tr>
			</table>
			<br><input type="submit" value="Submit" />
		</div>
		
		</form:form>
<div align="left">	    
<h5>FOR ANY QUERY</h5>

<h5>CALL-7740959130</h5>

<h5>EMAIL-ksourav796.sk@gmail.com</h5>

<h5>U CAN ALSO DROP THE MESSAGE </h5>   
		    			
</body>
</html>