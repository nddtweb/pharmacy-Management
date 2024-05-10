package com.Users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EditUserServlet")
public class EditUserServlet extends HttpServlet {
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
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		boolean isUpdated = UsersDBUtil.updateUser(id, name, address, email, phone, gender, age, username, password);
		if (isUpdated) {
			response.sendRedirect("manageUsers.jsp");
		} else {
			response.sendRedirect("manageUsers.jsp?error=true");
		}
	}
}