<%--
  Created by IntelliJ IDEA.
  User: nataliiaku
  Date: 10/22/19
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<h3>My Login page</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
    <p>User name: <input type="text" name="username"/></p>
    <p>Password: <input type="password" name="password"/></p>

    <input type="submit" value="Login"/>
</form:form>
</body>
</html>
