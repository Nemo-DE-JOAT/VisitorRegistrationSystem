<%-- 
    Document   : get_list_visit
    Created on : May 11, 2025, 12:43:35 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get Visit List Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f0f0f0; padding: 40px; color: #333;">

    <h1 style="color: #2980b9;">Get Visit List</h1>

    <p style="margin-bottom: 20px;">
        Please click the button below to get the entire list of visitors.
    </p>

    <form action="GetListServlet.do" method="GET" 
          style="background-color: #fff; padding: 20px; border-radius: 8px; width: 300px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
        <table style="width: 100%;">
            <tr>
                <td style="text-align: center;">
                    <input type="submit" value="GET LIST" 
                           style="background-color: #3498db; color: white; border: none; padding: 10px 16px; border-radius: 4px; cursor: pointer;">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
