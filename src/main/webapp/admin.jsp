<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="servlet.DBConnection" %>

<%

if (session.getAttribute("userEmail") == null ||
    !"admin".equals(session.getAttribute("userRole"))) {

    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AdminDashboard | MedCare Hospital</title>

    <style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f4f8fb;
        color: #333;
    }

    .header {
        background: linear-gradient(135deg, #1597b8, #0d6f8a);
        color: white;
        padding: 30px;
        text-align: center;
    }

    .header h1 {
        margin: 0;
        font-size: 32px;
    }

    .header p {
        margin: 8px 0 0;
    }

    .container {
        width: 92%;
        margin: 35px auto;
    }

    .card {
        background: white;
        padding: 25px;
        margin-bottom: 30px;
        border-radius: 15px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        overflow-x: auto;
    }

    h2 {
        color: #1597b8;
        margin-top: 0;
    }

    table {
        border-collapse: collapse;
        margin-top: 20px;
        background: white;
    }

    th {
        background: #1597b8;
        color: white;
        padding: 12px;
        text-align: left;
    }

    td {
        padding: 12px;
        border-bottom: 1px solid #ddd;
    }

    tr:hover {
        background: #f1fbfd;
    }
</style>
</head>

<body>

    <div class="header">
        <h1>MedCare Hospital</h1>
        <p>AdminDashboard</p>
       

    <a href="<%=request.getContextPath() %>/logout"
       style="display:inline-block;
              margin-top:15px;
              background:#d9534f;
              color:white;
              padding:10px 25px;
              border-radius:25px;
              text-decoration:none;">
        Logout
    </a>
</div>


    <div class="container">

        <div class="card">
       

    <h2>Appointment Management</h2>
    <p>All Patient Appointments</p>
    

    <table border="1" width="100%" cellpadding="10" cellspacing="0">

        <tr>
            <th>ID</th>
            <th>Patient Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Department</th>
            <th>Doctor</th>
            <th>Date</th>
            <th>Time</th>
            <th>Symptoms</th>
            <th>Action</th>
        </tr>

        <%
            try {

                Connection con = DBConnection.getConnection();

                String sql = "SELECT * FROM appointments";

                PreparedStatement ps = con.prepareStatement(sql);

                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
        %>

        <tr>

            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("patient_name") %></td>
            <td><%= rs.getString("phone") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("department") %></td>
            <td><%= rs.getString("doctor") %></td>
            <td><%= rs.getDate("appointment_date") %></td>
            <td><%= rs.getTime("appointment_time") %></td>
            <td><%= rs.getString("symptoms") %></td>
            <td>
    <a href="deleteAppointment?id=<%= rs.getInt("id") %>"
       style="color:red; font-weight:bold;">
        Delete
    </a>
</td>


        </tr>

        <%
                }

                rs.close();
                ps.close();
                con.close();

            } catch (Exception e) {

                out.println("Error: " + e.getMessage());

            }
        %>

    </table>
    <br><br>
    <h2>User Management</h2>
        <table border="1" width="100%" cellpadding="10" cellspacing="0">

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
    </tr>
    <%
    Connection con = DBConnection.getConnection();

    String sql = "SELECT id, name, email FROM users";

    PreparedStatement ps = con.prepareStatement(sql);

    ResultSet rs = ps.executeQuery();

    while (rs.next()) {
%>

<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("email") %></td>
</tr>

<%
    }

    rs.close();
    ps.close();
    con.close();
%>

</table>

</div>

    </div>

</body>
</html>