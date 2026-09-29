<%@ page import="java.sql.Connection" %>
<%@ page import="servlet.DBConnection" %>

<html>
<body>

<h2>Database Connection Test</h2>

<%
try {
    Connection con = DBConnection.getConnection();

    if (con != null) {
        out.println("<h3>Database Connected Successfully!</h3>");
        con.close();
    } else {
        out.println("<h3>Connection is NULL</h3>");
    }

} catch (Exception e) {
    out.println("<h3>Connection Failed</h3>");
    out.println("<pre>");
    e.printStackTrace(new java.io.PrintWriter(out));
    out.println("</pre>");
}
%>

</body>
</html>