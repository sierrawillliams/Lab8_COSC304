<!DOCTYPE html>
<html>
    <head>
        <title>Your Account</title>
    <style type="text/css">
        body 
        {
                height: 125vh;
                margin-top: 80px;
                padding: 20px;
                background-size: cover;
                font-family: sans-serif;
        }
        header {
                background-color:dodgerblue;
                position: fixed;
                left: 0;
                right: 0;
                top: 5px;
                height: 30px;
                display: flex;
                align-items: center;
                box-shadow: 0 0 25px 0 black;
        }
        header * {
                display: inline;
        }
        header li {
                margin: 29px;
        }
        header li a{
                color: white;
                text-decoration: none;
        }
</style>
</head>
<body background="img/blue-abstract-gradient-wave-vector-background_53876-111548.jpg.webp">
        <header>
                <nav>
                        <ul>
                                <li>
                                        <a href="index.jsp">Home</a>
                                </li>
                                <li>
                                        <a href="listprod.jsp">Products</a>
                                </li>
                                <li>
                                        <a href="showcart.jsp">View Cart</a>
                                </li>
                                <%
                                String userName = (String) session.getAttribute("authenticatedUser");
                                if(userName != null){
                                        %>
                                        <div style="padding-left: 325px;">
                                                <%
                                        out.println("<li><a href='adminIndex.jsp'>Admin Homepage</a></li>");
                                        out.println("<li><a href='customer.jsp'>" + userName + "</a></li>");
                                      <header>
                <nav>
                        <ul>
                                <li>
                                        <a href="index.jsp">Home</a>
                                </li>
                                <li>
                                        <a href="listprod.jsp">Products</a>
                                </li>
                                <li>
                                        <a href="showcart.jsp">View Cart</a>
                                </li>
                                <%
                                String userName = (String) session.getAttribute("authenticatedUser");
                                if(userName != null){
                                        %>
                                        <div style="padding-left: 325px;">
                                                <%
                                        out.println("<li><a href='adminIndex.jsp'>Admin Homepage</a></li>");
                                        out.println("<li><a href='customer.jsp'>" + userName + "</a></li>");
                                        out.println("<li><a href='logout.jsp'>Sign Out</a></li>");
                                        %>
                                        </div>
                                        <%
                                } else {
                                        %>
                                        <div style="padding-left: 450px;">
                                                <%
                                        out.println("<li><a href='register.jsp'>Register</a></li>");
                                        out.println("<li><a href='login.jsp'>Sign In</a></li>");
                                        %>
                                </div>
                                <%
                                }
                                %>
                        </ul>
                </nav>
        </header>  out.println("<li><a href='logout.jsp'>Sign Out</a></li>");
                                        %>
                                        </div>
                                        <%
                                } else {
                                        %>
                                        <div style="padding-left: 450px;">
                                                <%
                                        out.println("<li><a href='register.jsp'>Register</a></li>");
                                        out.println("<li><a href='login.jsp'>Sign In</a></li>");
                                        %>
                                </div>
                                <%
                                }
                                %>
                        </ul>
                </nav>
        </header>
</html>