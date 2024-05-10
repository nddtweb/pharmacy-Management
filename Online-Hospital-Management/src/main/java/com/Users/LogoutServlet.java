package com.Users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Invalidate the user's session
        HttpSession session = request.getSession();
        session.invalidate();

        // Redirect the user to a logout confirmation page
        response.sendRedirect("Signin.jsp"); // Replace "logout.jsp" with the actual page you want to use for logout confirmation
	}

}
