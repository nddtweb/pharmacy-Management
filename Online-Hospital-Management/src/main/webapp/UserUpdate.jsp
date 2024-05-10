
<jsp:include page="header.jsp" />

<%@ page import="java.util.List"%>
<%@ page import="com.Users.Users"%>
<%@ page import="com.Users.UsersDBUtil"%>

<%
String userId = request.getParameter("userId");
Users user = UsersDBUtil.getUser(userId);
%>

<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">

<style>
.custom-input {
	height: 46px;
}

.custom-radio {
	width: auto;
}
</style>

<div class="limiter" style="display: flex;">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title"
                style="background-image: url(images/bg-05.jpg);">
                <span class="login100-form-title-1"> Edit User </span>
            </div>

            <form class="login100-form validate-form" action="EditUserServlet" method="post">
                <input type="hidden" name="id" value="<%= user.getId() %>">
                <div class="wrap-input100 validate-input m-b-26 custom-input">
                    <span class="label-input100">Name</span> 
                    <input class="input100" type="text" name="name" required placeholder="Enter your Name" value="<%= user.getName() %>">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26 custom-input">
                    <span class="label-input100">Address</span> 
                    <input class="input100" type="text" name="address" required placeholder="Enter your Address" value="<%= user.getAddress() %>">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26 custom-input">
                    <span class="label-input100">Email</span> 
                    <input class="input100" type="email" name="email" required placeholder="Enter your Email" value="<%= user.getEmail() %>">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26 custom-input">
                    <span class="label-input100">Phone</span> 
                    <input class="input100" type="tel" name="phone" required placeholder="Enter your Phone" value="<%= user.getPhone() %>">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26 custom-input">
                    <span class="label-input100">Gender</span> <br>
                    <input type="radio" id="male" name="gender" value="male" class="custom-radio" required <%= user.getGender().equalsIgnoreCase("male") ? "checked" : "" %>> 
                    <label for="male">Male</label> 
                    <input type="radio" id="female" name="gender" value="female" class="custom-radio" required <%= user.getGender().equalsIgnoreCase("female") ? "checked" : "" %>> 
                    <label for="female">Female</label>
                </div>

                <div class="wrap-input100 validate-input m-b-26 custom-input">
                    <span class="label-input100">Age</span> 
                    <input class="input100" type="number" name="age" required placeholder="Enter your Age" value="<%= user.getAge() %>">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26 custom-input">
                    <span class="label-input100">Username</span> 
                    <input class="input100" type="text" name="username" required placeholder="Enter your Username" value="<%= user.getUsername() %>">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26 custom-input">
                    <span class="label-input100">Password</span> 
                    <input class="input100" type="password" name="password" required placeholder="Enter your Password" value="<%= user.getPassword() %>">
                    <span class="focus-input100"></span>
                </div>

                <div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Update">
                </div>
            </form>
        </div>
    </div>
</div>
