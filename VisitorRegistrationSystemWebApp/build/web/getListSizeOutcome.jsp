<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Visit List Size Outcome Page</title>
    </head>
    <body style="font-family: Arial, sans-serif; background-color: #f5f5f5; color: #721c24; padding: 40px; text-align: center;">
        <h1 style="color: #a94442; font-size: 36px;">Get Visitor List Size Outcome</h1>
        <%
            Integer size = (Integer)request.getAttribute("size");
        %>
        <p style="font-size: 18px; margin-top: 20px;">
            The number of people who visited our premises is <b><%=size%></b>.</p><p>
            Please click <a href="manager_menu.html" style="color: #721c24; text-decoration: none; font-weight: bold; border: 1px solid #721c24; padding: 8px 16px; border-radius: 4px; background-color: #f5c6cb;">here</a> to get back to the manager menu page or
            <a href="index.html" style="color: #721c24; text-decoration: none; font-weight: bold; border: 1px solid #721c24; padding: 8px 16px; border-radius: 4px; background-color: #f5c6cb;">here</a> to the main page.
        </p>
    </body>
</html>
