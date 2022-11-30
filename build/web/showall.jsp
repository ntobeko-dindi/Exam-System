
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>


<!-- SIDEBAR -->
<div class="sidebar">
    <div class="sidebar-background" >
        <h2 class="logo-text">
            TestTaker
        </h2>

        <div class="left-menu">
            <a  href="adm-page.jsp?pgprt=0"><h2>My Profile</h2></a>
            <a href="adm-page.jsp?pgprt=2"><h2>Manage Tests</h2></a>
            <a class="active" href="adm-page.jsp?pgprt=3"><h2>Questions</h2></a>
            <a href="adm-page.jsp?pgprt=1"><h2>Manage Students</h2></a>
            <a href="adm-page.jsp?pgprt=8"><h2>View Grades</h2></a>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <a href="controller.jsp?page=logout"><h2>Logout</h2></a>
        </div>
    </div>
</div>
<!-- CONTENT AREA -->
<div class="content-area" >
    <center>
        <%
            if (request.getParameter("coursename") != null) {
                Set hash_Set = pDAO.getAllQuestions(request.getParameter("coursename"));
                
                Iterator<Questions> iterator = hash_Set.iterator();
                
                int counter = 0;
                 while (iterator.hasNext()) {
                    Questions question = iterator.next();
                    counter++;                
        %>
        <div class="question-panel">
            <div class="question" >
                <label class="question-label"><%=counter%></label>
                <%=question.getQuestion()%>	
                <a href="controller.jsp?page=questions&operation=delQuestion&qid=<%=question.getQuestionId()%>" 
                   onclick="return confirm('Are you sure you want to delete this Question?');" >
                    <div class="delete-btn" style="position: absolute;right: 10px;top: -20px;">Delete</div></a>
            </div>
            <div class="answer">
                <label class="show"><%=question.getOpt1()%></label>
                <label class="show"><%=question.getOpt2()%></label>
                <label class="show"><%=question.getOpt3()%></label>
                <label class="show"><%=question.getOpt4()%></label>
                <label class="show-correct">Correct Answer : <%=question.getCorrect()%></label>
            </div>
        </div>

        <%
                           }
                       }%>
    </center>
</div>