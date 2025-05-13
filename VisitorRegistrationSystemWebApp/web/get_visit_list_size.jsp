<%-- 
    Document   : get_visit_list_size
    Created on : May 11, 2025, 12:56:36 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get Visit List Size Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 40px; color: #333;">

    <h1 style="color: #2c3e50;">Get Visitor List Size</h1>

    <p style="margin-bottom: 20px;">
        Please click the button below to get the size of the visitor list.
    </p>

    <form action="GetVisitListSizeServlet.do" method="GET" 
          style="background-color: #fff; padding: 20px; border-radius: 8px; width: 300px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
        <table style="width: 100%;">
            <tr>
                <td style="text-align: center;">
                    <input type="submit" value="COUNT VISITORS" 
                           style="background-color: #27ae60; color: white; border: none; padding: 10px 16px; border-radius: 4px; cursor: pointer;">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
