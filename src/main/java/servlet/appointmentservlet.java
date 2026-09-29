package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import servlet.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/appointment")
public class appointmentservlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String patientName = request.getParameter("patientName");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String department = request.getParameter("department");
        String doctor = request.getParameter("doctor");
        String appointmentDate = request.getParameter("appointmentDate");
        String appointmentTime = request.getParameter("appointmentTime");
        String symptoms = request.getParameter("message");

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO appointments "
                    + "(patient_name, phone, email, department, doctor, "
                    + "appointment_date, appointment_time, symptoms) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, patientName);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, department);
            ps.setString(5, doctor);
            ps.setString(6, appointmentDate);
            ps.setString(7, appointmentTime);
            ps.setString(8, symptoms);

            ps.executeUpdate();

            request.getRequestDispatcher("appointment-success.jsp")
                    .forward(request, response);

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                "Appointment booking failed: " + e.getMessage()
            );
        }
    }
}