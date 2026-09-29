package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/login")
public class loginservlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	
            	

            	    HttpSession session = request.getSession();

            	    String role = rs.getString("role");

            	    session.setAttribute("userEmail", email);
            	    session.setAttribute("userName", rs.getString("name"));
            	    session.setAttribute("userRole", role);

            	    if ("admin".equals(role)) {
            	        response.sendRedirect("admin.jsp");
            	    } else {
            	        response.sendRedirect("index.html");
            	    }
            	
            } else {

                response.setContentType("text/html");
                response.getWriter().println(
                    "<h3 style='color:red;text-align:center;'>Invalid Email or Password ❌</h3>"
                );
                response.getWriter().println(
                    "<p style='text-align:center;'><a href='login.jsp'>Try Again</a></p>"
                );
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println(
                "Login Failed: " + e.getMessage()
            );
        }
    }
}