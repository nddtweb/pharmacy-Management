<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.Users.Users"%>

<html>
<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="shortcut icon" href="images" type="">
<title>Medi Shop</title>

<!-- font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<!-- font awesome style -->
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
	<div class="hero_area">
		<!-- header section strats -->
		<header class="header_section">
			<div class="container">
				<nav class="navbar navbar-expand-lg custom_nav-container ">
					<a class="navbar-brand" href="index.jsp"><img width="100"
						src="images/logo.png" alt="#" /></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class=""> </span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="index.jsp">Home
									<span class="sr-only">(current)</span>
							</a></li>



							<%
							List<Users> usersList = (List<Users>) session.getAttribute("userDetails");
							Users users = null;
							if (usersList != null && usersList.size() > 0) {
								users = usersList.get(0); // Assuming you want the first user if there are multiple users in the list
							}
							if (users != null) {
								if (users.getusertype() == 0) {//admin
							%>
							<li class="nav-item"><a class="nav-link"
								href="manageOrdersAdmin.jsp">Manage Orders</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manageProducts.jsp">Manage Product</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manageUsers.jsp">Manage Users</a></li>
							<%
							} else {//user
							%>
							<li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
							<li class="nav-item"><a class="nav-link" href="product.jsp">Products</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								href="manageCart.jsp"> Cart</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manageOrders.jsp">My Orders</a></li>

							<%
							}
							%>
							<li class="nav-item"><a class="nav-link"
								href="LogoutServlet">Logout</a></li>
							<%
							} else {
							%>
							<li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
							<li class="nav-item"><a class="nav-link" href="product.jsp">Products</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="Signin.jsp">
									Login</a></li>
							<li class="nav-item"><a class="nav-link" href="Signup.jsp">
									Register</a></li>
							<%
							}
							%>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<!-- end header section -->