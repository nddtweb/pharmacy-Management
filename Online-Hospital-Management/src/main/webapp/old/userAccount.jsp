<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="header.jsp" />
        <c:forEach var="user" items="${userDetails}">

            <c:set var="id" value="${user.id}" />
            <c:set var="name" value="${user.name}" />
            <c:set var="address" value="${user.address}" />
            <c:set var="email" value="${user.email}" />
            <c:set var="phone" value="${user.phone}" />
            <c:set var="gender" value="${user.gender}" />
            <c:set var="age" value="${user.age}" />
            <c:set var="username" value="${user.username}" />
            <c:set var="password" value="${user.password}" />
        </c:forEach>

        <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img
                            class="rounded-circle mt-5" width="150px"
                            src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span
                            class="font-weight-bold">${name}</span><span
                            class="text-black-50">${email}</span><span> </span></div>
                </div>
                <div class="col-md-5 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h1 class="text-right">Account Details</h1>
                        </div>

                        <div class="row mt-3">
                            <table  class="table  table-hover">


                                <tr>
                                    <th>ID:</th>
                                    <td>${id}</td>
                                </tr>
                                <tr>
                                    <th>Name:</th>
                                    <td>${name}</td>
                                </tr>
                                <tr>
                                    <th>Address:</th>
                                    <td>${address}</td>
                                </tr>
                                <tr>
                                    <th>Email:</th>
                                    <td>${email}</td>
                                </tr>
                                <tr>
                                    <th>Phone:</th>
                                    <td>${phone}</td>
                                </tr>
                                <tr>
                                    <th>Gender:</th>
                                    <td>${gender}</td>
                                </tr>
                                <tr>
                                    <th>Age:</th>
                                    <td>${age}</td>
                                </tr>
                                <tr>
                                    <th>User Name:</th>
                                    <td>${username}</td>
                                </tr>
                                <tr>
                                    <th>Password:</th>
                                    <td>${password}</td>
                                </tr>

                            </table>
                        </div>


                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-3 py-5">
                        <c:url value="UpdatePatient.jsp" var="patientUpdate">
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


                        <div class="d-flex justify-content-between align-items-center experience"><span><a
                                    href="${patientUpdate}">
                                    <input type="button" class="btn btn-primary" name="update" value="Update">
                                </a></span></div><br>



                        <c:url value="DeletePatient.jsp" var="DeletePatient">
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

                        <div class="d-flex justify-content-between align-items-center experience"><span><a
                                    href="${DeletePatient}">
                                    <input type="button" class="btn btn-danger" name="delete" value="Delete">
                                </a></span></div><br>
                    </div>

                </div>
            </div>
        </div>
        </div>
        </div>
        <jsp:include page="footer.jsp" />