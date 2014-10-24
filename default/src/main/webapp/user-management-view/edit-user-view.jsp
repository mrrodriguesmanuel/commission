<%--@elvariable id="model" type="com.essence.controller.UserModel"--%>
<%--
  Created by IntelliJ IDEA.
  User: manuelrodrigues
  Date: 22/10/14
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Management</title>
</head>
<body>
Change user account

<form method="post" action="/edit-user/profil-edited/${model.user.id}">
    Name : <input type="text" name="name" value="${model.user.name}"/>
    <br/>
    Password : <input type="password" name="password" value="${model.user.password}"/>
    <br/>

    <%=  %>
    <select name="role" size="1">
        <option>Manager</option>
        <option>Team leader</option>
        <option>Agent</option>
    </select>


    <input type="submit" value="Edit my informations"/>
</form>




</body>
</html>
