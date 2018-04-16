<%--
  Created by IntelliJ IDEA.
  User: laurent-bernabe
  Date: 16/04/18
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple hello !</title>
    <style><%@include file="/WEB-INF/css/custom-hello.css"%></style>
</head>
<body>
    <h2 class="greeting"><%= request.getAttribute("greeting")%></h2>
</body>
</html>
