package com.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
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

		String proId = request.getParameter("proId");

		if (proId != null) {

			boolean isUpdated = ProductDBUtil.deleteProduct(proId);
			if (isUpdated) {
				response.sendRedirect("manageProducts.jsp");
			} else {
				response.sendRedirect("manageProducts.jsp");
			}

		}
	}
}