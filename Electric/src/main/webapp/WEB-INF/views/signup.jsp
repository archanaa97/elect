<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html> 
<html>
<head>
<style type="text/css">
*{color: #0000CD;}
.bg{background:url() no-repeat; width:100%; height:100vh;} 
.form-container{border:0px solid #0000CD; padding:40px; 60px; margin-top:20vh;
-webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
}
</style>
<body background="resources\images\50.jpeg">
<meta charset="ISO-8859-1">
<title>SIGNUP</title>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<!-- <nav  style="background-color:peach" class="navbar navbar-inverse">
  
  <div class="container-fluid">
  <div class="navbar-header">
  <a class="navbar-brand" href="index"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
  </div>
     -->
    <!-- <ul class="nav navbar-nav">
    <li><a href="index">HOME</a></li>
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
		<div class="container-fluid bg">
		<div class="contentcontainer med left" style="margin-left: 250px;">
		<div class="row"></div>
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">
		<h1>Signup here</h1>
		<form:form action="addUser" name="user" method="post" commandName="addNewUser">
		 
		 
		<div class="form-group">
		 
	        <table>
		    <tr>
			<td><br><br><br><form:label  path="fname" placeholder="First Name">First Name</form:label>
			<form:input path="fname" required="required" placeholder="Enter your First name" class="form-control" pattern="^[a-zA-Z0-9_]{5,20}$" title="Invalid Username. Min Length: 5, Max Length: 20"/></td>
			</tr>
			</table>
			
			<table>
			<tr>
			<td><form:label path="lname">Last Name</form:label>
			<form:input path="lname" required="required" placeholder="Enter your Last name" class="form-control" pattern="^[a-zA-Z0-9_]{5,20}$" title="Invalid Username. Min Length: 5, Max Length: 20"/></td>
			</tr>
			</table>
			
			<table>
			<tr>
			<td><form:label path="password">Password</form:label>
			<form:input path="password" required="required" placeholder="Enter your Password" class="form-control" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{5,15}$" title="Invalid Password. Min Length: 5, Max Length: 20" /><td>
			<tr>
			</table>
	
	
	        <table>
	        <tr>
	        <td>
			<form:label path="email">Email</form:label>
			<form:input path="email" required="required" placeholder="Enter your Email" class="form-control" pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z]+[\\.]{1}[A-Za-z]+([\\.]{1}[A-Za-z]+)?$" title="Invalid Email" />
			</td>
			</tr>
			</table>
			
			<table>
			<tr>
			<td>
			<form:label path="contact">Contact</form:label>
			<form:input path="contact" required="required" placeholder="Enter your Contact" class="form-control" pattern="^[789]{1}[0-9]{9}$" title="Invalid Phone" />
			</td>
			</tr>
			</table>
	
	        <table>
			<tr>
			<td>
			<form:label path="address">Address</form:label>
			<form:input path="address" required="required" placeholder="Enter your Address" class="form-control"/>
	        </td>
			</tr>
			</table>
			
			<table>
			<tr>
			<td>
			<form:label path="pin">Pin</form:label>
			<form:input path="pin" required="required" placeholder="Enter your Postal code" class="form-control" pattern="[0-9]{6}" title="enter 6 digit pincode" />
			 </td>
			</tr>
			</table>
			
			<br>
	        <tr>
			<td align="center" colspan="3">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="submit" /></td>
			</tr>
		    </form:form>
		    </div>
		    </div>
		    </div>
		    
</body>
</html>