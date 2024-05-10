<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page import="java.sql.*" %><!-- Add this line to import Java SQL classes -->


            <jsp:include page="header.jsp" />



            <div class="limiter" style="display: flex;">

                <div class="container-login100">
                    <div style="display: block; width: 100%;
                    padding-left:20%; padding-right: 20%;">
                        <form action="FindUsers" method="post">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="FUserName"
                                    placeholder="Enter the username" aria-label="Recipient's username"
                                    aria-describedby="button-addon2" required>
                                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Find</button>
                            </div>
                        </form>
                    </div><br>


                    <c:if test="${not empty userAdminDetails}">

                        <div class="  wrap-login100" style="width: auto;">
                            <div class="login100-form-title" style="background-image: url(images/bg-04.jpg);">
                                <span class="login100-form-title-1">
                                    Users Account Details
                                </span>
                            </div>



                            <table class="table table-striped table-hover">

                                <tr>
                                    <th>ID:</th>
                                    <th>Name:</th>
                                    <th>Address:</th>
                                    <th>Email:</th>
                                    <th>Phone</th>
                                    <th>Gender</th>
                                    <th>Age</th>
                                    <th>User Name</th>
                                    <th></th>
                                    <th></th>

                                </tr>

                                <c:forEach var="user" items="${userAdminDetails}">

                                    <c:set var="id" value="${user.id}" />
                                    <c:set var="name" value="${user.name}" />
                                    <c:set var="address" value="${user.address}" />
                                    <c:set var="email" value="${user.email}" />
                                    <c:set var="phone" value="${user.phone}" />
                                    <c:set var="gender" value="${user.gender}" />
                                    <c:set var="age" value="${user.age}" />
                                    <c:set var="username" value="${user.username}" />
                                    <c:set var="password" value="${user.password}" />


                                    <tr>
                                        <td>${user.id}</td>
                                        <td>${user.name}</td>
                                        <td>${user.address}</td>
                                        <td>${user.email}</td>
                                        <td>${user.phone}</td>
                                        <td>${user.gender}</td>
                                        <td>${user.age}</td>
                                        <td>${user.username}</td>
                                        <c:url value="UpdateUser.jsp" var="UserUpdate">
                                            <c:param name="id" value="${id}" />
                                            <c:param name="name" value="${name}" />
                                            <c:param name="address" value="${address}" />
                                            <c:param name="email" value="${email}" />
                                            <c:param name="phone" value="${phone}" />
                                            <c:param name="gender" value="${gender}" />
                                            <c:param name="age" value="${age}" />
                                            <c:param name="username" value="${username}" />
                                            <c:param name="password" value="${password}" />
                                        </c:url>
                                        <td><a href="${UserUpdate}"><button class="btn btn-primary">Update</button></a>
                                        </td>
                                        <c:url value="DeleteUser.jsp" var="DeleteUser">
                                            <c:param name="id" value="${id}" />
                                            <c:param name="name" value="${name}" />
                                            <c:param name="address" value="${address}" />
                                            <c:param name="email" value="${email}" />
                                            <c:param name="phone" value="${phone}" />
                                            <c:param name="gender" value="${gender}" />
                                            <c:param name="age" value="${age}" />
                                            <c:param name="username" value="${username}" />
                                            <c:param name="password" value="${password}" />
                                        </c:url>
                                        <td>
                                        <td><a href="${DeleteUser}"><button class="btn btn-danger">Delete</button></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </table>
                    </c:if>

                </div>
            </div>
            </div>

            <jsp:include page="footer.jsp" />