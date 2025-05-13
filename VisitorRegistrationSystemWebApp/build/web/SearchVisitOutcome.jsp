<%-- 
    Document   : search_visit_outcome
    Created on : May 11, 2025, 12:32:17 PM
    Author     : hp
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Visitor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Visit Outcome Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 30px; color: #333;">

    <h1 style="color: #2c3e50;">Search Visitor Outcome</h1>

    <%
        List<Visitor> visitors = (List<Visitor>) request.getAttribute("visitors");
        String dateOfVisit = (String) request.getAttribute("dateOfVisit");
    %>

    <%
        if (visitors == null || visitors.isEmpty()) {
    %>
        <p style="color: red; font-weight: bold;">No visitors found for the selected date.</p>
    <%
        } else {
    %>
        <table border="1" cellpadding="10" cellspacing="0" 
               style="width: 80%; border-collapse: collapse; background-color: #fff; margin-top: 20px;">
            <tr style="background-color: #3498db; color: white;">
                <th>ID</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Reason</th>
            </tr>
            <%
                for (Visitor vis : visitors) {
            %>
                <tr style="text-align: center;">
                    <td><%= vis.getId() %></td>
                    <td><%= vis.getName() %></td>
                    <td><%= vis.getSurname() %></td>
                    <td><%= vis.getReason() %></td>
                </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>

    <p style="margin-top: 30px;">
        Please click 
        <a href="manager_menu.html" style="color: #2980b9; text-decoration: none;">here</a> 
        to go back to the manager menu page or 
        <a href="index.html" style="color: #2980b9; text-decoration: none;">here</a> 
        to return to the main page.
    </p>

</body>
</html>
