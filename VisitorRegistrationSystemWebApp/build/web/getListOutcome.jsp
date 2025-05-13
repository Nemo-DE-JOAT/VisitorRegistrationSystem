<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entities.Visitor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Visit List Outcome Page</title>
    </head>
    <body style="font-family: Arial, sans-serif; background-color: #f5f5f5; color: #721c24; padding: 40px; text-align: center;">
        <h1 style="color: #a94442; font-size: 36px;">Get Visitor List Outcome</h1>
        <%
            List <Visitor> list = (List<Visitor>)request.getAttribute("visitors");
        %>
        <p style="font-size: 18px; margin-top: 20px;">
            Below is the list of people who visited retrieved from the database:
        </p>
        <table border="1" style="margin-top: 20px; width: 80%; margin-left: auto; margin-right: auto;">
            <%
                for(int i = 0; i < list.size(); i++){
                   Visitor v = list.get(i); 
                   Long id = v.getId();
                   String fullName = v.getName();
                   String surname = v.getSurname();
                   String reason = v.getReason();
                   Date date = v.getDate();
            %>
            <tr>
                <td style="padding: 8px; font-weight: bold;">ID:</td>
                <td style="padding: 8px;"><%=id%></td>
            </tr>
            <tr>
                <td style="padding: 8px; font-weight: bold;">Name:</td>
                <td style="padding: 8px;"><%=fullName%></td>
            </tr>
            <tr>
                <td style="padding: 8px; font-weight: bold;">Surname:</td>
                <td style="padding: 8px;"><%=surname%></td>
            </tr>
            <tr>
                <td style="padding: 8px; font-weight: bold;">Reason:</td>
                <td style="padding: 8px;"><%=reason%></td>
            </tr>
            <tr>
                <td style="padding: 8px; font-weight: bold;">Date:</td>
                <td style="padding: 8px;"><%=date%></td>
            </tr>
            <%
                }
            %>
            <br><br>
        </table>
        <p style="font-size: 18px; margin-top: 20px;">
            Please click <a href="manager_menu.html" style="color: #721c24; text-decoration: none; font-weight: bold; border: 1px solid #721c24; padding: 8px 16px; border-radius: 4px; background-color: #f5c6cb;">here</a> to get back to the manager menu page or
            <a href="index.html" style="color: #721c24; text-decoration: none; font-weight: bold; border: 1px solid #721c24; padding: 8px 16px; border-radius: 4px; background-color: #f5c6cb;">here</a> to the main page.
        </p>
    </body>
</html>
