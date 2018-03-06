<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>   
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<nav  style="background-color:blue" class="navbar navbar-inverse">
  <div class="container-fluid">
   <div class="navbar-header">
    <a class="navbar-brand" href="userindex"><img class="img-square" src="resources\images\49.jpg" height="30" width="100"></a>
    </div>
    <ul class="nav navbar-nav">
       <li> <a href="userindex"><span class="glyphicon glyphicon-home"></span></a></li>
  
       <!--  <li><a href="index">HOME</a></li> -->
     <!--  <li><a href="Aboutus">ABOUT US</a></li>
      <li><a href="ContactUs">CONTACT US</a></li> -->
   <!--   <li><a href="ALL">ALL</a></li> -->
     <!--  <li><a href="Product">PRODUCT</a></li>
        <li><a href="Retrieve">RETRIEVE</a></li>
        <li><a href="cateogry">CATEGORY</a></li>
        
            <li><a href="All">ALL CATEGORY</a></li> -->

   <%--  </ul>
    <ul class="nav navbar-nav navbar-right">
     <li><a href="${pageContext.request.contextPath}/cart"> <span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart</a></li>
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul> --%>
    
        <%
	Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth1 != null && !auth1.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_ADMIN")))
	    	{
	 %>
	        <li><a href="${pageContext.request.contextPath}/Aboutus">ABOUT US</a></li>
	        <li><a href="${pageContext.request.contextPath}/ContactUs">CONTACT US</a></li>
           <%--  <li><a href="${pageContext.request.contextPath}/ALL">ALL</a></li> --%>
          	<li><a href="${pageContext.request.contextPath}/Product">Add Product</a></li>
          	<li><a href="${pageContext.request.contextPath}/Retrieve">Retrieve</a></li>
            <li><a href="${pageContext.request.contextPath}/cateogry">Add Category</a></li>
            <li><a href="${pageContext.request.contextPath}/All">ALLCategory</a></li>
            
			<%-- <li><a href="${pageContext.request.contextPath}/ViewProfile">View Profile</a></li>	 --%>
          </ul>
        </li>
        <%
	    	}
	    }
        %>
        
         <%
	Authentication auth2 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth1 != null && !auth2.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_USER")))
	    	{
	 %>
       
          	<li><a href="${pageContext.request.contextPath}/ALL">ALL</a></li>
          	<li><a href="${pageContext.request.contextPath}/Aboutus">About US</a></li>
            <li><a href="${pageContext.request.contextPath}/ContactUs">Contact Us</a></li>
            
			<%-- <li><a href="${pageContext.request.contextPath}/ViewProfile">View Profile</a></li>	 --%>
          </ul>
        </li>
        <%
	    	}
	    }
        %>
        <ul class="nav navbar-nav navbar-right">
      <%
      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	String currUser=auth.getName();
	    	
	    	request.setAttribute("currUser", currUser);
	    	 %>
      	<li><a href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
        <li><a><span class="glyphicon glyphicon-user"></span>Welcome ${currUser}</a></li>
        <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        <%
	    }
	    else
	    {
	    	%>
	  <li><a href="${pageContext.request.contextPath}/cart"> <span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart</a></li>
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	        <%
	    }
        
        
        %>
      </ul>
    </div>
  </div>
</nav>
      
  </div>
</nav>
</body>
</html>