package com.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.cart.Cart;
import com.cart.CartDBUtil;
import com.product.Product;
import com.product.ProductDBUtil;

@WebServlet("/AddOrderServlet")
public class AddOrderServlet extends HttpServlet {
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
		String paymentMethod = request.getParameter("paymentMethod");
		String customerName = request.getParameter("customerName");
		String deliveryAddress = request.getParameter("deliveryAddress");

		Cart cart = CartDBUtil.getCartItemDetail(cartId);
		Double amount = cart.getTotal();

		// Insert the order into the database
		boolean isAdded = OrderDBUtil.insertOrder(cartId, amount, paymentMethod, customerName, deliveryAddress);

		if (isAdded) {
			CartDBUtil.updateCartStatus(cartId);
			response.sendRedirect("manageOrders.jsp");
		} else {
			response.sendRedirect("manageOrders.jsp?error=true");
		}
	}
}
