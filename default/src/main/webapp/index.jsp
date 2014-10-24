<%@ page import="javax.ws.rs.Path" %>
<%@ page import="com.essence.controller.EditUserController" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head prefix="og: http://ogp.me/ns#">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Commission Software</title>

    <link rel="icon" type="image/png" href="//storage.googleapis.com/staticcontent/img/favicon.png">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel='stylesheet' href='//fonts.googleapis.com/css?family=Lato' type='text/css'>
    <link rel="stylesheet" href="/css/pnotify.custom.min.css">

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//storage.googleapis.com/staticcontent/js/bootstrap.min.js"></script>
</head>

<body>

Create a new User
<form method="post" action="/user-management/add-user">
    Email : <input type="email" name="mail" />
    <br/>
    Name : <input type="text" name="name" />
    <br/>
    Password : <input type="password" name="password" />
    <br/>
    <input type="submit" value="Sign in" />
</form>

<hr/>

Sign in
<form method="post" action="/user-management">
    Email : <input type="email" name="mail"/>
    <br/>
    Password : <input type="password" name="password"/>
    <br/>
    <input type="submit" value="Sign in"/>
</form>


<hr/>

You forgot your password ?
<form method="post" action="/user-management/forgotten-password">
    Email : <input type="email" name="mail"/>
    <br/>
    <input type="submit" value="Ask a new password"/>
</form>

<hr/>





</body>
</html>
