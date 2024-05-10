<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <jsp:include page="header.jsp" />

    <% String id=request.getParameter("id"); String name=request.getParameter("name"); String
        address=request.getParameter("address"); String email=request.getParameter("email"); String
        phone=request.getParameter("phone"); String gender=request.getParameter("gender"); String
        age=request.getParameter("age"); String username=request.getParameter("username"); String
        password=request.getParameter("password"); %>

        <div class="limiter" style="display: flex;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-form-title" style="background-image: url(images/bg-04.jpg);">
                        <span class="login100-form-title-1">
                            Update Medicine
                        </span>
                    </div>

                    <form class="login100-form validate-form" action="AdminUserDelete" method="post">
                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient ID</span>
                            <input class="input100" type="text" name="id" value="<%=id%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient Name</span>
                            <input class="input100" type="text" name="name" value="<%=name%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient Address</span>
                            <input class="input100" type="text" name="address" value="<%=address%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient Email</span>
                            <input class="input100" type="text" name="email" value="<%=email%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient Phone</span>
                            <input class="input100" type="text" name="phone" value="<%=phone%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient Gender</span>
                            <input class="input100" type="text" name="gender" value="<%=gender%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient Age</span>
                            <input class="input100" type="text" name="age" value="<%=age%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient User Name</span>
                            <input class="input100" type="text" name="username" value="<%=username%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Patient Password</span>
                            <input class="input100" type="text" name="password" value="<%=password%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="container-login100-form-btn">
                            <input class="login100-form-btn" type="submit" value="Delete User">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp" />