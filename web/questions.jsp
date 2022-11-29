
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
            <a href="adm-page.jsp?pgprt=2"><h2>Manage Tests</h2></a>
            <a class="active" href="adm-page.jsp?pgprt=3"><h2>Test Questions</h2></a>
            <a href="adm-page.jsp?pgprt=1"><h2>Manage Students</h2></a>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <a href="controller.jsp?page=logout"><h2>Logout</h2></a>
        </div>
    </div>
</div>
<!-- CONTENT AREA -->
<div class="content-area" >
    <div class="panel form-style-6" style="min-width: 300px;max-width: 390px;float: left">
        <form action="adm-page.jsp">
            <div class="title">Show All Questions for</div>
            <br><br>
            <label>Select Test</label>
            <input type="hidden" name="pgprt" value="4">
            <select name="coursename" class="text">
                <%
                    ArrayList list1 = pDAO.getAllCourses();

                    for (int i = 0; i < list1.size(); i = i + 2) {
                %>
                <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>
                <%
                    }
                %>
            </select>
            <input type="submit" value="Show" class="form-button">
        </form>
    </div>

    <div class="panel form-style-6" style="min-width: 900px;float: right;">   
        <form action="controller.jsp" >
            <div class="title">Add New Multichoice Question</div>
            <table style="padding-top: 40px;">
                <tr>
                    <td><label>Test Name</label></td>
                    <td colspan="12"> 
                        <select name="coursename" class="text">
                            <%
                                ArrayList list = pDAO.getAllCourses();

                                for (int i = 0; i < list.size(); i = i + 2) {
                            %>
                            <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label>Question:</label></td>
                    <td colspan="4"><input type="text" name="question" class="text" placeholder="Type your question here" style="min-width: 80%;" ></td><br>
                </tr>
                <tr>
                    <td><label>Options</label></td>
                    <td><input type="text" name="opt1" class="text" placeholder="First Option" style="width: 180px;height: 35px;" ></td>
                    <td><input type="text" name="opt2" class="text" placeholder="Second Option" style="width: 180px;height: 35px;" ></td>
                    <td><input type="text" name="opt3" class="text" placeholder="Third Option" style="width: 180px;height: 35px;" ></td>
                    <td><input type="text" name="opt4" class="text" placeholder="Fourth Option" style="width: 180px;height: 35px;" ></td>
                </tr>
                <tr>
                    <td><label>Correct Answer</label></td>
                    <td><center><input type="text" name="correct" class="text" placeholder="Correct Answer" style="width: 180px;height: 35px;" ></center></td>
                <tr>
                    <td colspan="5"><input type="hidden" name="page" value="questions">
                        <input type="hidden" name="operation" value="addnew">
                <input type="submit" class="form-button" value="Add" name="submit"></td>
                </tr>
            </table>
        </form>


    </div>
</div>