<!DOCTYPE html>
<html>
<head>
        <title>Our Grocery Main Page</title>
</head>
<body>
<h1 align="center">Welcome to Our Grocery</h1>

<h2 align="center"><a href="login.jsp">Login</a></h2>

<h2 align="center"><a href="listprod.jsp">Begin Shopping</a></h2>

<h2 align="center"><a href="listorder.jsp">List All Orders</a></h2>

<h2 align="center"><a href="customer.jsp">Customer Info</a></h2>

<h2 align="center"><a href="admin.jsp">Administrators</a></h2>

<h2 align="center"><a href="logout.jsp">Log out</a></h2>

<%
// TODO: Display user name that is logged in (or nothing if not logged in)
String userName = (String) session.getAttribute("authenticatedUser");
if(userName != null)
{
        out.println("<h3 align='center'>" + "Signed in as: " + userName + "</h3>");
}
else 
{
        out.println("");
}

%>
</body>
</head>


