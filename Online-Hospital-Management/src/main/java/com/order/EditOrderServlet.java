package com.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EditOrderServlet")
public class EditOrderServlet extends HttpServlet {
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

		// Get parameters from the request
		String orderId = request.getParameter("orderId");
		String cus_name = request.getParameter("customerName");
		String delivery_address = request.getParameter("deliveryAddress");
		String paymentMethod = request.getParameter("paymentMethod");

		// Update the order in the database
		boolean isUpdated = OrderDBUtil.updateOrder(orderId, cus_name, delivery_address, paymentMethod);

		if (isUpdated) {
			response.sendRedirect("manageOrdersAdmin.jsp");
		} else {
			response.sendRedirect("manageOrdersAdmin.jsp?error=true");
		}
	}
}
