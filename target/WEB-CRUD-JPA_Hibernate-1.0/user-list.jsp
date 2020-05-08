<%-- 
    Document   : user-list
    Author     : Francisco Larrocca
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management Application</title>
    </head>
    <body>
    <center>  
        <header class="py-2 bg-dark text-white">
            <h1>User Management</h1>
        </header>              
    </center>
    <br>
    <div align="center">
        <table class="table table-hover">
            <capiton><h5>List of Users</h5></capiton>
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
                        <a href="edit?id=<c:out value='${user.id}' />" class="btn btn-info">Edit</a>
                        <a href="delete?id=<c:out value='${user.id}' />" class="btn btn-danger">Delete</a>   
                    </td>
                </tr>
            </c:forEach>
        </table>  
    </div>
    <br>
    <div align="center">
        <a href="new" class="btn btn-success">Add New User</a>
        &nbsp;&nbsp;&nbsp;
        <a href="list" class="btn btn-success">List all Users</a>
    </div>
</body>
</html>
