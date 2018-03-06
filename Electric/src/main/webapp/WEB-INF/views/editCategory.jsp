<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<form:form action="${pageContext.request.contextPath}/editCateogry" method="post" commandName="cateogry">
		    <form:hidden path="id" value="${cateogry.id}"/>
			
			<form:label path="name"> product</form:label><br/>
			<form:input path="name" required="required" placeholder="Enter the name of product" class="form-control" pattern="[a-zA-z0-9]{3,15}" title="enter atleast three alphabets" value="${cateogry.name}"/><br/>
			
	        <form:label path="desc">description</form:label><br/>
			<form:input path="desc" required="required" placeholder="Enter the name of product" class="form-control" pattern="[a-zA-z0-9]{3,15}" title="enter atleast three alphabets" value="${cateogry.desc}"/><br/>
			
	        <input type="submit" value="Submit" />
		    </form:form>	    
		
</body>
</html>