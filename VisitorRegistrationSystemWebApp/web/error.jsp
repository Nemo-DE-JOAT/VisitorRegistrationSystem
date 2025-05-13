<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body style="font-family: Arial, sans-serif; background-color: #f5f5f5; color: #721c24; padding: 20px; text-align: center;">
        <div class="error-box" style="border: 1px solid #f5c6cb; background-color: #f5f5f5; padding: 10px; border-radius: 5px; max-width: 500px; margin: 50px auto; text-align: center;">
            <h2 style="color: #a94442; font-size: 36px;">Error Occurred</h2>
            <p style="font-size: 18px; margin-top: 20px;">
                <strong><%= request.getAttribute("error") %></strong>
            </p>
            <br> 
            <p style="font-size: 18px; margin-top: 20px;">
                Please click <a href="visitor_menu.html" style="color: #721c24; text-decoration: none; font-weight: bold; border: 1px solid #721c24; padding: 4px 10px; border-radius: 2px; background-color: #f5c6cb;">here</a> to get back to the visitor menu page or
                </p><p><a href="index.html" style="color: #721c24; text-decoration: none; font-weight: bold; border: 1px solid #721c24; padding: 8px 16px; border-radius: 2px; background-color: #f5c6cb;">here</a> to the main page.
            </p>
        </div>
    </body>
</html>
