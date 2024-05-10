package com.Users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UsersInsert")
public class UsersInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String username = request.getParameter("UID");
		String password = request.getParameter("PID");
		String usertype = request.getParameter("usertype");

		boolean isTrue;

		isTrue = UsersDBUtil.InsertUsers(name, address, email, phone, gender, age, username, password, usertype);

		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Signin.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}

	}

}
