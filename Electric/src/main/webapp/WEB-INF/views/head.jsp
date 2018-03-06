<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>

<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button> -->
      <a class="navbar-brand" href="index.jsp"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a> 
    </div>
    <nav  style="background-color:brown" class="navbar navbar-inverse">
  <div class="container-fluid">
   <div class="navbar-header">
    <a class="navbar-brand" href="index.jsp"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
    </div>
    <ul class="nav navbar-nav">
       <li> <a href="index"><span class="glyphicon glyphicon-home"></span></a></li>
       <li><a href="ALL">ALL</a></li>
    </ul>
    
    
        <%
	Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth1 != null && !auth1.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_ADMIN")))
	    	{
	 %>
       
          	<li><a href="${pageContext.request.contextPath}/product">Add Product</a></li>
          	<li><a href="${pageContext.request.contextPath}/Retrieve">Add Profile</a></li>
            <li><a href="${pageContext.request.contextPath}/cateogry">View Category</a></li>
            <li><a href="${pageContext.request.contextPath}/AllCategory">View Products</a></li>
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
        