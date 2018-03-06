
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>


<!-- <script type="text/javascript">
String url = request.getRequestURL().toString();
function submit("localhost:9003/digital/description")
{

    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "POST", theUrl, false ); // false for synchronous request
    xmlHttp.send( url);
    return xmlHttp.responseText;	
	
}


</script> -->
</head>

<body>
<h3 align="center">CART PAGE</h3><br/>
 
    <table border="0" class=".table " align="center" >
            
            <tr >
                <td  colspan="3" >Product Id:${desc.id}</td>
            </tr>
            <tr> 
              <td rowspan="6" colspan="2" ><img src='${desc.imageUrl}' /></td></tr>
              <tr>   <td><b>${desc.name}</b></td></tr>
              <%-- <tr>    <td>Brand :${desc.brand}</td></tr> --%>
               <tr>   <td>${desc.desc}</td></tr>
               <tr>   <td><b>&#8377;${desc.price} </b> </td></tr>
               <tr>   <td>${desc.quantity} are left in stock</td></tr>
              
           
          <tr><td colspan="3"></td></tr>
          <tr><td colspan="3"></td></tr>
            <tr>
            <td colspan="2"></td>
            <td></td>
            </tr> 
    
    </table>
    
    <form action="${pageContext.request.contextPath}/AddCartToDB" method="post">
	
		<input type="hidden" value="${desc.getId()}" name="id">
		
		<br>
		<br>
		<input type="number" placeholder="Quantity" class="form-control" name="quantity" style="margin: auto;  width: 10%; text-align: center;">
		<br>    
    	<button type="submit" class="btn btn-success" style=" float:left; margin-left:560px; margin-top:23px">AddToCart</button>
	
	</form>
</body>
</html>