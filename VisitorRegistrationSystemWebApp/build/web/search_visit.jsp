<%-- 
    Document   : search_visit
    Created on : May 11, 2025, 12:38:08 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Visit Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f0f0f0; padding: 40px; color: #333;">

    <h1 style="color: #2c3e50;">Search Visit</h1>

    <p style="margin-bottom: 20px;">Search visitors by date:</p>

    <form action="SearchVisitServlet.do" method="POST" 
          style="background-color: #fff; padding: 20px; border-radius: 8px; width: 300px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
        <table style="width: 100%;">
            <tr>
                <td style="padding-bottom: 10px;"><label for="dateOfVisit">Date</label></td>
                <td style="padding-bottom: 10px;">
                    <input type="date" name="dateOfVisit" id="dateOfVisit" 
                           style="width: 100%; padding: 6px; border: 1px solid #ccc; border-radius: 4px;">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="SEARCH" 
                           style="background-color: #3498db; color: white; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer;">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
