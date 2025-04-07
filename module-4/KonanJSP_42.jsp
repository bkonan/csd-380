<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>SmithJSP_41.jsp - User Info Table</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 10px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String age = request.getParameter("age");
    boolean submitted = (name != null && email != null && age != null);
%>

<h2>User Information Form</h2>

<form method="post" action="SmithJSP_41.jsp">
    <label>Name: </label>
    <input type="text" name="name" required><br><br>

    <label>Email: </label>
    <input type="email" name="email" required><br><br>

    <label>Age: </label>
    <input type="number" name="age" min="0" required><br><br>

    <input type="submit" value="Submit">
</form>

<% if (submitted) { %>
    <h3>Submitted Information:</h3>
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Age</th>
        </tr>
        <tr>
            <td><%= name %></td>
            <td><%= email %></td>
            <td><%= age %></td>
        </tr>
    </table>
<% } %>

</body>
</html>