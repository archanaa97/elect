<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<title>Insert title here</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
</head>

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

tr:nth-child(even){background-color: #f2f2ff}
</style>
<jsp:include page="header.jsp"></jsp:include>
<body>
<body background="resources\images\29.jpg">
 <div class="table-responsive"> 
    <table class="table">
<table border="1">
<div style="overflow-x:auto;">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>DESC</th>
            <th>OPERATION</th>
        </tr>
        <c:forEach items='${cats}' var="cateogry">
            <tr>
                <td>${cateogry.id}</td>
                <td>${cateogry.name}</td>
                <td>${cateogry.desc}</td>
                 
                 <td><a href="removec/${cateogry.id}">delete</a></td>
                 <td><a href="editc/${cateogry.id}">edit</a></td>
            </tr>
        </c:forEach>
    </table>
    </table>
    </div>
    
</body>
</html>