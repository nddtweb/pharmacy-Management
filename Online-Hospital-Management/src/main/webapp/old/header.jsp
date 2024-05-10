<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.Users.Users" %>

<html lang="en">
<head>
	<title>Hospital Management</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/bg-09.jpg" type="image/x-icon">

	<link rel="stylesheet" type="text/css" href="css/util.css">	

	<link rel="stylesheet" type="text/css" href="css/main.css">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	
	<link rel="stylesheet" href="./header.css">

	<link rel="stylesheet" href="./footer.css">
</head>
<body style="min-height: 100vh ;">

<header class="header-outer"  style="z-index: 10000;">
    <div class="header-inner responsive-wrapper">
        <div class="header-logo">
             <img src="images/bg-07.jpg" alt="Logo">  
        </div>
        <nav class="header-navigation">
        <%
			List<Users> usersList = (List<Users>) session.getAttribute("userDetails");
			Users users = null;
			if(usersList != null && usersList.size() > 0) { 
    		users = usersList.get(0); // Assuming you want the first user if there are multiple users in the list
			}
			%>

            <% 
            
            if(users != null) {
                if(users.getusertype() == 0) {
            %>
				<a href="Home.jsp">Home</a>
				<a href="AddUsers.jsp">Add Users</a>
				<a href="FindUsers.jsp">Find User</a>
				<a href="userAccount.jsp">userAccount</a>
				<a href="AboutUs.jsp">About Us</a>
				<a href="ContactUs.jsp">Contact Us</a>
				<a href="LogoutServlet">Logout</a>
            <%
                } else if(users.getusertype() == 1) {
            %>
				<a href="Home.jsp">Home</a>
				<a href="AddAppointment">Add Appointment</a>
				<a href="UserViewAppointment">View Appointment</a>
				<a href="userAccount.jsp">userAccount</a>
				<a href="AboutUs.jsp">About Us</a>
				<a href="ContactUs.jsp">Contact Us</a>
				<a href="LogoutServlet">Logout</a>
            <%
                } else if(users.getusertype() == 2) {
            %>
				<a href="Home.jsp">Home</a>
				<a href="DoctorViewAppointment">View Appointment</a>
				<a href="ViewPrescriptionServlet">View Prescription</a>
				<a href="userAccount.jsp">userAccount</a>
				<a href="AboutUs.jsp">About Us</a>
				<a href="ContactUs.jsp">Contact Us</a>
				<a href="LogoutServlet">Logout</a>
            <%
                } else if(users.getusertype() == 3) {
            %>
				<a href="Home.jsp">Home</a>
				<a href="AddMedicine.jsp">Add Medicine</a>
				<a href="FindMedicine.jsp">Find Medicine</a>
				<a href="userAccount.jsp">userAccount</a>
				<a href="AboutUs.jsp">About Us</a>
				<a href="ContactUs.jsp">Contact Us</a>
				<a href="LogoutServlet">Logout</a>
            <%
                } else {
            %>
				<a href="index.jsp">Home</a>
				<a href="AboutUs.jsp">About Us</a>
				<a href="ContactUs.jsp">Contact Us</a>
				<a href="UsersLogin.jsp">Login</a>
				<a href="PatientSignup.jsp">Register</a>
            <%
                }
            } else {
            %>
				<a href="index.jsp">Home</a>
				<a href="AboutUs.jsp">About Us</a>
				<a href="ContactUs.jsp">Contact Us</a>
				<a href="UsersLogin.jsp">Login</a>
				<a href="PatientSignup.jsp">Register</a>
            <%
            }
            %>
        </nav>
    </div>
</header>

<div class="container-fluid ">
