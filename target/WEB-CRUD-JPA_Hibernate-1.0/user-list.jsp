<%-- 
    Document   : user-list
    Author     : Francisco Larrocca
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management Application</title>
    </head>
    <body>
    <center>        
        <h1>User Management</h1>
        <h3>
            <a href="new">Add New User</a>
            &nbsp;&nbsp;&nbsp;
            <a href="list">List all Users</a>
        </h3>        
    </center>
    <div align="center">
        <table border="1" cellpadding="4">
            <caption><h4>List of Users</h4></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>

            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.country}" /></td>
                    <td>
                        <a href="edit?id=<c:out value='${user.id}' />">Edit</a>
                        <a href="delete?id=<c:out value='${user.id}' />">Delete</a>   
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
