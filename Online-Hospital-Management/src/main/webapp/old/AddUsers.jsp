<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <jsp:include page="header.jsp" />

    <div class="limiter" style="display: flex;">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-form-title" style="background-image: url(images/bg-04.jpg);">
                    <span class="login100-form-title-1">
                        Add Users
                    </span>
                </div>

                <form class="login100-form validate-form" action="AddUsers" method="post">
                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">Name</span>
                        <input class="input100" type="text" id="name" name="name" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">Address</span>
                        <input class="input100" type="text" id="address" name="address" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">Email</span>
                        <input class="input100" type="email" id="email" name="email" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">Phone</span>
                        <input class="input100" type="tel" id="phone" name="phone" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">Gender</span>
                        <input type="radio" id="male" name="gender" value="male" required>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="gender" value="female" required>
                        <label for="female">Female</label>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">Age</span>
                        <input class="input100" type="number" id="age" name="age" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">User Name</span>
                        <input class="input100"type="text" id="UID" name="UID" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">Password</span>
                        <input class="input100" type="password" id="PID" name="PID" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">Confirm Password</span>
                        <input class="input100" type="password" id="confirmPassword" name="confirmPassword" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18">
                        <span class="label-input100">User Type</span>
                        <select id="usertype" name="usertype">
                            <option value="0">Admin</option>
                            <option value="1">Patient</option>
                            <option value="2">Doctor</option>
                            <option value="3">Pharmacist</option>
                            <option value="4">Receptionist</option>
                        </select><br>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <input class="login100-form-btn" type="submit" value="Add User">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />