<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<body background="resources\images\12.jpg">
<head>
<style type="text/css">
*{color:#0000CD;}
.bg{background:url() no-repeat; width:100%; height:100vh;}
.form-container{border:0px solid #0000CD; padding:25px; 60px; margin-top:10vh;
-webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
}
</style>
<meta charset="ISO-8859-1">
<title>login</title>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix ="form"%>
</head>

<jsp:include page="header.jsp"></jsp:include>
<body>
 

		<div class="container-fluid bg">
		<div class="contentcontainer med left" style="margin-left: 200px;">
		<div class="row"></div>
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">
		<form action="login" method="post" class="form-container" commandName="addNewLogin">
		<h1>Login here</h1>
		  <div class="form-group">
		  
		    <table>
		    <tr>
			<td>
			<label for="name">name</label>
			<input type="name" class="form-control" name="name" placeholder="Enter the name"/>
			</td>
			</tr>
			</table>
			</div>
		   <div class="form-group">
		    <table>
		    <tr>
			<td>
			<label for="password">Password</label>
			<input type="password" class="form-control" name="password" placeholder="Enter the Password"/>
			</td>
			</tr>
			</table>
			</div>
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" >submit</button>
			</form>
			</div>
			</div>
			
			</div>
		    
</body>
</html>