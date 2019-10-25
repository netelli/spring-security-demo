<%--
  Created by IntelliJ IDEA.
  User: nataliiaku
  Date: 10/18/19
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<h2>Home page</h2>
<hr/>
<p>Welcome to Home page</p>
<hr/>
<p>
    User: <security:authentication property="principal.username"/>
    <br/><br/>
    Role(s): <security:authentication property="principal.authorities"/>
</p>
<hr/>
<%--Add link to point to /leaders for managers only--%>
<p>
    <a href="${pageContext.request.contextPath}/leaders">Leadership Meetings</a>
</p>

<hr/>
<%--Add link to point to /systems for admins only--%>
<p>
    <a href="${pageContext.request.contextPath}/systems">IT Systems Meetings</a>
</p>

<hr/>
<form:form action="${pageContext.request.contextPath}/logout"
           method="post">
    <input type="submit" value="Logout"/>
</form:form>
</body>
</html>
