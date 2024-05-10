package com.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteOrderServlet")
public class DeleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Check if session is available
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("userDetails") == null) {
			// Session not available or userId not set in session
			response.sendRedirect("Signin.jsp"); // Redirect to login page
			return;
		}

		String orderId = request.getParameter("orderId");

		if (orderId != null) {
			boolean isDeleted = OrderDBUtil.deleteOrder(orderId);
			if (isDeleted) {
				response.sendRedirect("manageOrdersAdmin.jsp");
			} else {
				response.sendRedirect("manageOrdersAdmin.jsp?error=true");
			}
		}
	}
}