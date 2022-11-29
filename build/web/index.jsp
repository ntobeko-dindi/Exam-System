<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Add Student</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="newcss.css">
    </head>
    <body>
        <div class="registration-form">
            <form method='post' action="controller.jsp">
                <input type="hidden" name="page" value="login"> 
                <div class="form-icon">
                    <span><i class="icon icon-user"></i></span>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control item" id="username" name="username" placeholder="Username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control item" id="password" name="password" placeholder="Password">
                </div>
                <%
                    if (request.getSession().getAttribute("userStatus") != null) {
                        if (request.getSession().getAttribute("userStatus").equals("-1")) {
                %>
                <script>alert("username or password is incorrect");</script>
                <p style="color: #01323b;font-size: 17px">username or password is incorrect</p>
                <br>
                <%
                        }
                    }
                %>
                <div class="form-group">
                    <button type="submit" class="btn btn-block create-account">Login</button>
                </div>
            </form>
        </div>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    </body>
</html>