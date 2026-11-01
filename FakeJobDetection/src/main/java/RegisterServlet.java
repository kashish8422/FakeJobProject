package com.mycompany.fakejobdetection;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // register.jsp se name attributes fetch karna
        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // TODO: Yahan aap apna Database Connection (JDBC) aur SQL Insert query likh sakte hain
        // Jaise: INSERT INTO users(fullname, email, password) VALUES(?, ?, ?)

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registration Status</title>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif; background: #f3f6fc; text-align: center; padding-top: 50px; }");
            out.println(".box { background: white; padding: 30px; border-radius: 10px; display: inline-block; box-shadow: 0 5px 15px rgba(0,0,0,0.1); }");
            out.println("h2 { color: #3156d9; }");
            out.println("a { display: inline-block; margin-top: 15px; padding: 10px 20px; background: #3156d9; color: white; text-decoration: none; border-radius: 5px; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='box'>");
            out.println("<h2>Registration Successful!</h2>");
            out.println("<p>Welcome, <b>" + fullName + "</b> (" + email + ")</p>");
            out.println("<a href='login.jsp'>Proceed to Login</a>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}