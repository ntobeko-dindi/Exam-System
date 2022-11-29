
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="style-backend.css">
    </head>
    <body>
        <div class="top-area">
            <center><h2>Student</h2></center>
        </div>

        <%
            if (session.getAttribute("userStatus") != null) {
                if (session.getAttribute("userStatus").equals("1")) {
        %>

        <div class="menu">
            <a href="std-page.jsp?pgprt=0" class="button">Profile</a>
            <a class="button" href="std-page.jsp?pgprt=1">Tests</a>
            <a class="button" href="std-page.jsp?pgprt=2">Results</a>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <a href="controller.jsp?page=logout"><h2>Logout</h2></a>
        </div>
        <%
            //pgpart = pagepart, exams=1,results=2 and profile is default
            if (request.getParameter("pgprt").equals("1")) {

        %>

        <jsp:include page="exam.jsp"/>

        <%            } else if (request.getParameter("pgprt").equals("2")) {

        %>

        <jsp:include page="results.jsp"/>

        <%                } else {
        %>

        <jsp:include page="profile.jsp"/>

        <%
            }
        %>

        <%
                } else
                    response.sendRedirect("login.jsp");
            } else
                response.sendRedirect("login.jsp");
        %>
    </body>
</html>

