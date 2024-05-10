package com.cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.product.Product;
import com.product.ProductDBUtil;

@WebServlet("/EditCartServlet")
public class EditCartServlet extends HttpServlet {
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

		String cartId = request.getParameter("cartId");
		String quantity = request.getParameter("quantity");
		String rate = request.getParameter("rate");

		// Calculate total
		double qty = Double.parseDouble(quantity);
		double productRate = Double.parseDouble(rate);
		double total = qty * productRate;

		String isProcessed = "0";

		boolean isUpdated = CartDBUtil.updateCartItem(cartId, qty, productRate, total, isProcessed);

		if (isUpdated) {
			response.sendRedirect("manageCart.jsp");
		} else {
			response.sendRedirect("manageCart.jsp?error=true");
		}
	}
}
