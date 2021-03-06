<%--
  Created by IntelliJ IDEA.
  User: nataliiaku
  Date: 10/22/19
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>

    <style>
        .failed {
            color: red;
        }
    </style>
</head>
<body>
<h3>My Login page</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">

    <%--    Check for login error--%>
    <c:if test="${param.error != null}">
        <i class="failed">Sorry! You entered incorrect username OR password.</i>
    </c:if>

    <p>User name: <input type="text" name="username"/></p>
    <p>Password: <input type="password" name="password"/></p>

    <input type="submit" value="Login"/>
</form:form>
</body>
</html>
