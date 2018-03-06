<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ALL PRODUCT</title>
<jsp:include page="header.jsp"></jsp:include>
<body background="resources\images\29.jpg">
<style>
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT PAGE</title>
</head>

<body>
<!-- <nav  style="background-color:brown" class="navbar navbar-inverse">
  
  <div class="container-fluid">
  <div class="navbar-header">
  <a class="navbar-brand" href="index"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
  </div> -->
    
    <!-- <ul class="nav navbar-nav">
    <li> <a href="index"><span class="glyphicon glyphicon-home"></span></a></li>
      <li><a href="Aboutus">ABOUT US</a></li>
      <li><a href="ContactUs">CONTACT US</a></li>
     <li><a href="ALL">ALL</a></li>
      <li><a href="Product">PRODUCT</a></li>
        <li><a href="Retrieve">RETRIEVE</a></li>
        <li><a href="cateogry">CATEGORY</a></li>
         
            <li><a href="All">ALL CATEGORY</a></li>
            
    </ul> -->
   <!-- 
    <ul class="nav navbar-nav navbar-right">
    
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
    </ul> -->
    
  </div>
</nav>
</body>

<body> 
    <div class="table-responsive"> 
    <table class="table">
    <table border="1">
     <div style="overflow-x:auto;">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>DESC</th>
            <th>PRICE</th>
            <th>IMAGE</th>
            <th>Quantity</th>
        </tr>
        <c:forEach items='${listData}' var="product">
            <tr>
                 <td>${product.id}</td>
                <td><a href="proddescp/${product.id}">${product.name}</a></td>
                <td>${product.desc}</td>
                 <td>${product.price}</td>
                <td><img src="${product.imageUrl}" height="100" width="100"/></td>
                <td>${product.quantity}</td>
                
                
            </tr>
        </c:forEach>
        </table>
    </table>
    </div>
</body>
</html>