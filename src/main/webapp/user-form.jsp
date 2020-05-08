<%-- 
    Document   : user-form
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
    <br><br>
    <div align="center">
        <div class="card col-sm-6">
            <div class="card-body">
                <c:if test="${user != null}">
                    <form action="update" method="post">
                    </c:if>
                    <c:if test="${user == null}">
                        <form action="insert" method="post">
                        </c:if>
                        <caption>
                            <h4>
                                <c:if test="${user != null}">
                                    Edit User
                                </c:if>
                                <c:if test="${user == null}">
                                    Add New User
                                </c:if>
                            </h4>
                        </caption>
                        <table class="table table-hover">                            
                            <c:if test="${user != null}">
                                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                            </c:if>            
                            <tr>
                                <th>User Name: </th>
                                <td>
                                    <input type="text" name="name" size="45" value="<c:out value='${user.name}' />"/>
                                </td>
                            </tr>
                            <tr>
                                <th>User Email: </th>
                                <td>
                                    <input type="text" name="email" size="45" value="<c:out value='${user.email}' />"/>
                                </td>
                            </tr>
                            <tr>
                                <th>Country: </th>
                                <td>
                                    <input type="text" name="country" size="15" value="<c:out value='${user.country}' />"/>
                                </td>
                            </tr>
                        </table>
                        <input class="btn btn-success" type="submit" value="Save" />
                    </form>
            </div>
        </div>
    </div> 
</body>
</html>
