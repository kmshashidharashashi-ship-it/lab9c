<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
<body>

<%
    String name = request.getParameter("uname");
    String time = request.getParameter("stime");

    int sec = Integer.parseInt(time);

    // store in session
    session.setAttribute("user", name);

    // set expiry time
    session.setMaxInactiveInterval(sec);

    out.println("<h2>Hello " + name + "!</h2>");

    out.println("<p>Session has started.</p>");
    out.println("<p>Session expiry time set to " + sec + " seconds.</p>");

    out.println("<br><a href='check.jsp'>Click here to check session</a>");
%>

</body>
</html>
