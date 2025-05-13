<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Visit Outcome Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5f5;
                color: #721c24;
                padding: 40px;
                text-align: center;
            }
            h1 {
                color: #a94442;
                font-size: 36px;
                margin-bottom: 20px;
            }
            p {
                font-size: 18px;
                margin-top: 20px;
            }
            a {
                color: #721c24;
                text-decoration: none;
                font-weight: bold;
                border: 1px solid #721c24;
                padding: 4px 8px;
                border-radius: 4px;
                background-color: #f5f5f5;
            }
            a:hover {
                background-color: #f1a8b0;
            }
        </style>
    </head>
    <body>
        <h1>Add Visit Outcome</h1>
        <%
            String fullName = (String)request.getAttribute("name");
        %>
        <p>
            <b><%=fullName%></b> has been successfully persisted into the database.
            <br>
        </p> <p> Please click <a href="visitor_menu.html">here</a> to get back to the visitor menu page or
            <a href="index.html">here</a> to the main page.
        </p>
    </body>
</html>
