
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
    <div class="sidebar-background" >
        <h2 class="logo-text">
            TestTaker
        </h2>

        <div class="left-menu">
            <a href="adm-page.jsp?pgprt=0"><h2>My Profile</h2></a>
            <a href="adm-page.jsp?pgprt=2"><h2>Manage Tests</h2></a>
            <a href="adm-page.jsp?pgprt=3"><h2>Questions</h2></a>
            <a class="active" href="adm-page.jsp?pgprt=1"><h2>Manage Students</h2></a>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <a href="controller.jsp?page=logout"><h2>Logout</h2></a>
        </div>
    </div>
</div>
<!-- CONTENT AREA -->
<div class="content-area">
    <div class="inner" style="margin-top: 50px">
        <div class="title" style="margin-top: -30px">Registered Students</div>
        <br>
        <br>
        <br/>
        <a href="register.html" class="button"><span class="add-btn" style="margin-left: 80px;">Add New Student</span></a>
        <br>
        <table id="one-column-emphasis" >
            <colgroup>
                <col class="oce-first" />
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">Name</th>
                    <th scope="col">email</th>
                    <th scope="col">City</th>
                    <th scope="col">Address</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ArrayList list = pDAO.getAllUsers();
                    User user;
                    for (int i = 0; i < list.size(); i++) {
                        user = (User) list.get(i);
                        if (user.getUserId() != Integer.parseInt(session.getAttribute("userId").toString())) {
                %>

                <tr>
                    <td style="min-width: 60px;"><%=user.getFirstName() + " " + user.getLastName()%></td>
                    <td style="min-width: 260px;"><%=user.getEmail()%></td>
                    <td style="min-width: 260px;"><%=user.getCity()%></td>
                    <td style="min-width: 260px;"><%=user.getAddress()%></td>
                    <td style="min-width: 260px;"><a href="controller.jsp?page=accounts&operation=del&uid=<%=user.getUserId()%>" 
                           onclick="return confirm('Are you sure you want to delete this Student?');">
                            <div class="delete-btn" style="min-width: 260px;font-size: 17px; padding: 3px">X</div>
                        </a></td>
                </tr>
                <%
                        }
                    }%>

            </tbody>
        </table>
    </div>
</div>