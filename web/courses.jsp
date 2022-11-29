
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
    <div class="sidebar-background" >
        <h2 class="logo-text">
            TestTaker
        </h2>

        <div class="left-menu">
            <a  href="adm-page.jsp?pgprt=0"><h2>My Profile</h2></a>
            <a class="active" href="adm-page.jsp?pgprt=2"><h2>Manage Tests</h2></a>
            <a href="adm-page.jsp?pgprt=3"><h2>Questions</h2></a>
            <a href="adm-page.jsp?pgprt=1"><h2>Manage Students</h2></a>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <a href="controller.jsp?page=logout"><h2>Logout</h2></a>
        </div>
    </div>
</div>
<!-- CONTENT AREA -->
<div class="content-area">

    <div class="panel" style="max-width: 600px;float:right">
        <div class="title">
            All Tests
        </div>
        <table id="one-column-emphasis" style="min-width: 600px;margin: 5px; margin-top: 35px" >
            <colgroup>
                <col class="oce-first" />
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">Tests</th>
                    <th scope="col">Total Marks</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>


            <%
                ArrayList list = pDAO.getAllCourses();
                for (int i = 0; i < list.size(); i = i + 2) {
            %>
            <tr>
                <td><%=list.get(i)%></td>
                <td><%=list.get(i + 1)%></td>
                <td ><a  href="controller.jsp?page=courses&operation=del&cname=<%=list.get(i)%>" 
                         onclick="return confirm('Are you sure you want to delete this ?');" class="del">
                        <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
                    </a></td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
    <div  class="panel form-style-6" style="float: left;min-width: 50%;" >
        <div class="title">
            Add New Course
        </div>
        <center>
            <form action="controller.jsp" >
                <br>
                <table >
                    <tr>
                        <td><label>Course Name</label></td>
                        <td> <input type="text" name="coursename" class="text" placeholder="Course Name" style="width: 600px;"></td>
                    </tr>
                    <tr>
                        <td><label>Total Marks</label></td>
                        <td><input type="text" name="totalmarks" class="text" placeholder="Total Marks" style="width: 600px;" ></td>
                    </tr>
                    <tr>
                        <td><label>Exam Time</label></td>
                        <td>
                            <input type="number" name="time" class="text" placeholder="Minutes" style="width: 600px;" >
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="hidden" name="page" value="courses">
                            <input type="hidden" name="operation" value="addnew">
                    <center><input type="submit" class="form-button" value="Add" name="submit"></center></td>
                    </tr>
                </table>

            </form>
        </center>

    </div>
</div>
