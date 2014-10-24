<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: manuelrodrigues
  Date: 23/10/14
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Administrator menu</title>
</head>
<body>
Edit your own informations <a href="/edit-user">here</a>



Edit an other user :
<c:forEach items="${model.users}" var="item">
    <ul>
        <li>
            <a href="/edit-user/${item.id}">${item.name}</a>
            <form action="/menu/admin/change-role/${item.id}" method="post">
                <input type= "radio" name="role" value="Agent"/> Agent
                <input type= "radio" name="role" value="Team Leader"/> Team leader
                <input type= "radio" name="role" value="Manager"/> Manager
                <input type="submit" value="Change role"/>
            </form>
        </li>

    </ul>
</c:forEach>








</body>
</html>