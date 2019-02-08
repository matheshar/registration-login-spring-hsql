<%--
  Created by IntelliJ IDEA.
  User: s982667
  Date: 05/02/2019
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Registration login in Spring hsql</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/">Home</a> </li>
                    <li><a href="/registration">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h1>Users</h1>
        <div class="panel panel-default">
            <!--Table-->
            <table class="table table-bordered table-hover">
                <thead>
                    <tr class="bg-primary">
                        <td>ID</td>
                        <td>Username</td>
                        <td>Action</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <th>${user.id}</th>
                            <th>${user.username}</th>
                            <th>
                                <div class="btn-group">
                                    <form action="/delete" onsubmit="return confirm('Are you sure you want to delete this user!')">
                                        <input type="hidden" name="id" value="${user.id}"/>
                                        <button style="width: 70px" type="submit" class="btn btn-danger">Delete</button>
                                    </form>
                                </div>
                            </th>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <script type="text/javascript" src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
