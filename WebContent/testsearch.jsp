<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Test Page</title>
        <script>
            function searchdata(a)
            {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange=function()
                {
                    document.getElementById("res").innerHTML= xmlhttp.responseText;
                }
                xmlhttp.open("POST", "testdisplay.jsp", true);
                xmlhttp.send();
            }

        </script>
    </head>
    <body>
        <input type="text" id="txtsearch" onkeyup="searchdata(this.value)" />

        <br>
        <div id="res"></div>
    </body>
</html>