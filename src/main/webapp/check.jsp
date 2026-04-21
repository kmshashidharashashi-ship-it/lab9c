<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
<body>

<h2>Session Check Page</h2>

<%
    String name = (String) session.getAttribute("user");

    if (name == null) {
        out.println("<h3>Session Expired ❌</h3>");
        out.println("Sorry! Your session has ended.");
    } else {
        out.println("<h3>Session Active ✅</h3>");
        out.println("Hello " + name);
    }
%>

</body>
</html>
