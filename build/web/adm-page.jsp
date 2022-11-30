
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style-backend.css">
</head>
<body>
	<div class="top-area">
		<center><h2>Administrator</h2></center>
	</div>

        <%
            if(session.getAttribute("userStatus")!=null){
            if(session.getAttribute("userStatus").equals("1")){
            
            %>          
            
            <% 
            //pgpart = pagepart, accounts=1,courses=2,questions=3 and profile is default
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
                <jsp:include page="accounts.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="courses.jsp"/>
                
                <%
                
            }
else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="courses.jsp"/>
                
                <%}

else if(request.getParameter("pgprt").equals("8")){
                %>
            
                <jsp:include page="results_1.jsp"/>
            <%
            }else if(request.getParameter("pgprt").equals("4")){// if( 4 == 4 )
                %>
            
                <jsp:include page="showall.jsp"/>
            <%
            }else{
                %>
            
                <jsp:include page="profile.jsp"/>
            
            <%
            }
            %>
            
            <%
            }else response.sendRedirect("login.jsp");
            }else response.sendRedirect("login.jsp");
                %>
              

</body>
</html>