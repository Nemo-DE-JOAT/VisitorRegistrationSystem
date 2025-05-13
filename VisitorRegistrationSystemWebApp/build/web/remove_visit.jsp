<%-- 
    Document   : remove_visit
    Created on : May 10, 2025, 11:49:56 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Remove Visit Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f8f8f8; padding: 40px; color: #333;">

    <h1 style="color: #c0392b;">Remove Person or Visit</h1>

    <p style="margin-bottom: 20px;">Please enter the ID of the person or visit to remove.</p>

    <form action="RemoveVisitServlet.do" method="POST" 
          style="background-color: #fff; padding: 20px; border-radius: 8px; width: 300px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
        <table style="width: 100%;">
            <tr>
                <td style="padding-bottom: 10px;"><label for="id">ID:</label></td>
                <td style="padding-bottom: 10px;">
                    <input type="text" name="id" id="id" 
                           style="width: 100%; padding: 6px; border: 1px solid #ccc; border-radius: 4px;">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="REMOVE VISITOR" 
                           style="background-color: #e74c3c; color: white; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer;">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
