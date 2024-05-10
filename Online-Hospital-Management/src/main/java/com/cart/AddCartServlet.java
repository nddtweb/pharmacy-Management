package com.cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.Users.Users;
import com.product.Product;
import com.product.ProductDBUtil;

@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet {
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
		int userId = ((List<Users>) session.getAttribute("userDetails")).get(0).getId();

		String productId = request.getParameter("productId");
		String quantity = "1";

		Product product = ProductDBUtil.getProductDetail(productId);
		String rate = product.getProductPrice();

		// Calculate total
		double qty = Double.parseDouble(quantity);
		double productRate = Double.parseDouble(rate);
		double total = qty * productRate;

		String isProcessed = "0";

		boolean isAdded = CartDBUtil.insertCartItem(String.valueOf(userId), productId, qty, productRate, total,
				isProcessed);

		if (isAdded) {
			response.sendRedirect("manageCart.jsp");
		} else {
			response.sendRedirect("errorPage.jsp");
		}
	}
}
