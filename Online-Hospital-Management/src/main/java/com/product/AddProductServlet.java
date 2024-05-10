package com.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.product.Product;
import com.product.ProductDBUtil;

@WebServlet("/AddProductServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class AddProductServlet extends HttpServlet {
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

		String productName = request.getParameter("productName");
		String productDescription = request.getParameter("productDescription");
		String productPrice = request.getParameter("productPrice");
		String productQuantity = request.getParameter("productQuantity");
		String productExpiryDate = request.getParameter("productExpiryDate");
		String productManufacturingDate = request.getParameter("productManufacturingDate");

		// Handle image upload
		String productImage = "";

		// Insert the product into the database
		boolean isAdded = ProductDBUtil.insertProduct(productName, productDescription, productPrice, productQuantity,
				productExpiryDate, productManufacturingDate, productImage);

		if (isAdded) {
			response.sendRedirect("manageProducts.jsp");
		} else {
			response.sendRedirect("manageProducts.jsp");
		}

	}
}
