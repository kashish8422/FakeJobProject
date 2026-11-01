
package com.mycompany.fakejobdetection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Locale;

@WebServlet("/AnalyzeServlet")
public class AnalyzeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String jobTitle = request.getParameter("jobTitle");
        String company = request.getParameter("company");
        String description = request.getParameter("description");
        String website = request.getParameter("website");

        if (jobTitle == null) jobTitle = "";
        if (company == null) company = "";
        if (description == null) description = "";
        if (website == null) website = "";

        String text = description.toLowerCase(Locale.ROOT);
        String site = website.toLowerCase(Locale.ROOT);

        int score = 0;
        StringBuilder reasons = new StringBuilder();

        if (text.contains("registration fee")
                || text.contains("pay")
                || text.contains("payment")
                || text.contains("deposit")) {
            score += 3;
            reasons.append("Job asks for payment or a fee. ");
        }

        if (text.contains("no experience")
                && (text.contains("50,000")
                || text.contains("50000")
                || text.contains("easy money"))) {
            score += 2;
            reasons.append("Unusually attractive salary with no experience. ");
        }

        if (text.contains("no interview")
                || text.contains("without interview")) {
            score += 2;
            reasons.append("No interview process mentioned. ");
        }

        if (text.contains("limited vacancies")
                || text.contains("urgent")
                || text.contains("immediate joining")) {
            score += 1;
            reasons.append("Urgency or pressure-based wording found. ");
        }

        if (website.trim().isEmpty()
                || site.contains("example.com")) {
            score += 1;
            reasons.append("Company website is missing or appears to be a placeholder. ");
        }

        String riskLevel;
        String riskMessage;

        if (score >= 3) {
            riskLevel = "High Risk - Suspicious Job";
            riskMessage = "This advertisement contains multiple suspicious indicators.";
        } else {
            riskLevel = "Low Risk - No Major Warning Signs Found";
            riskMessage = "No major suspicious indicators were detected by this basic check.";
        }

        if (reasons.length() == 0) {
            reasons.append("No major warning signs detected.");
        }

        request.setAttribute("jobTitle", jobTitle);
        request.setAttribute("company", company);
        request.setAttribute("riskLevel", riskLevel);
        request.setAttribute("riskMessage", riskMessage);
        request.setAttribute("reasons", reasons.toString());
        request.setAttribute("score", score);

        request.getRequestDispatcher("/result.jsp")
        .forward(request, response);
    }
}
