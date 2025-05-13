<%-- 
    Document   : add_visit
    Created on : May 10, 2025, 11:36:18 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Visitor Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f5f5f5; padding: 40px; color: #333;">

    <h1 style="color: #2c3e50;">Add Visit</h1>

    <p style="margin-bottom: 20px;">
        Please add visitor details below:
    </p>

    <form action="AddVisitorServlet.do" method="POST" 
          style="background-color: #fff; padding: 25px; border-radius: 8px; width: 500px; box-shadow: 0 0 12px rgba(0,0,0,0.1);">
        <table style="width: 100%;">
            <tr>
                <td style="padding: 8px;">Full Name:</td>
                <td style="padding: 8px;"><input type="text" name="Fullname" style="width: 100%; padding: 6px;"></td>
            </tr>
            <tr>
                <td style="padding: 8px;">Surname:</td>
                <td style="padding: 8px;"><input type="text" name="surname" style="width: 100%; padding: 6px;"></td>
            </tr>
            <tr>
                <td style="padding: 8px;">Identity Number:</td>
                <td style="padding: 8px;"><input type="text" name="id" style="width: 100%; padding: 6px;"></td>
            </tr>
            <tr>
                <td style="padding: 8px;">Gender:</td>
                <td style="padding: 8px;">
                    <select name="gender" style="width: 100%; padding: 6px;">
                        <option value="M">Male</option>
                        <option value="F">Female</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="padding: 8px;">Date of Visit:</td>
                <td style="padding: 8px;"><input type="date" name="dov" style="width: 100%; padding: 6px;"></td>
            </tr>
            <tr>
                <td style="padding: 8px;">Description (Reason):</td>
                <td style="padding: 8px;"><input type="text" name="descrReas" style="width: 100%; padding: 6px;"></td>
            </tr>
            <tr>
                <td></td>
                <td style="padding: 8px;">
                    <input type="submit" value="ADD VISIT" 
                           style="background-color: #2ecc71; color: white; border: none; padding: 8px 10px; border-radius: 4px; cursor: pointer;">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
