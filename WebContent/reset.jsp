<!DOCTYPE html>
<html>
    <head>Reset your password</head>
    <style type="text/css">
        body 
        {
                height: 125vh;
                margin-top: 80px;
                padding: 20px;
                background-size: cover;
                font-family: serif;
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
        input {
            padding:10px;
            border:0;
            box-shadow: 4px 4px 10px rgba(0,0,0,0.06);
            border-radius: 10px;
            align-items: center;
        }
    
    
                    </style>
            </head>
            <body>
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
                                                    <a href="checkout.jsp">View Cart</a>
                                            </li>
                                            <%
                                            String userName = (String) session.getAttribute("authenticatedUser");
                                            if(userName != null){
                                                    out.println("<li><a href='listorder.jsp'>Past Orders</a></li>");
                                                    out.println("<li><a href='customer.jsp'>" + userName + "</a></li>");
                                                    out.println("<li><a href='logout.jsp'>Sign Out</a></li>");
                                            } else {
                                                    out.println("<li><a href='login.jsp'>Sign In</a></li>");
                                                    out.println("<li><a href='register.jsp'>Register</a></li>");
    
                                            }
                                            %>
                                    </ul>
                            </nav>
                    </header>
                </body>
</html>