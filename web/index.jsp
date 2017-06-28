<%@ page import="Sample.HelloWorld" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<html>
<head>
    <title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>

<form id="form1" action="mainServlet" method="POST">
    User Name: <input type="text" name="realname" id="realname">
    Password: <input type="password" name="mypassword" id="mypassword">
    <input type="submit" value="Identification">
</form>


<!-- Декларируем переменную count-->
<%! private int count = 0; %>
<% String outParameter = request.getParameter("param");
    if (outParameter != null) {
        out.println(outParameter);
    } else {
        out.println("Значение параметра не установлено");
    }%>
Страница была показана <%= ++count %> раз.

<%------------------------------------------------------------------------------%>

<script type="text/javascript">
    <%@include file="js/testScript.js"%>
</script>

<%--------------------------------------------------------------------------------------------%>

<script>
    alert("Я – JavaScript!");
</script>

<p>конец документа</p>
</body>
</html>
