<jsp:include page="header.jsp" />

<div class="limiter" style="display: flex;" >
    <div class="container-login100">
        <div class="wrap-login100" style="width: auto;">
            <div class="login100-form-title" style="background-image: url(images/bg-05.jpg);">
                <span class="login100-form-title-1">
                    Available Doctors
                </span>
            </div>
            <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
            pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            

            <table class="table table-striped table-hover">
                <tr>
                    <th>Name:</th>
                    <th>Address:</th>
                    <th>Email:</th>
                    <th>Phone</th>
                    <th></th>
                </tr>


                <c:forEach var="doctor" items="${DoctorDetails}">

                    <c:set var="id" value="${doctor.id}" />
                    <c:set var="name" value="${doctor.name}" />
                    <c:set var="address" value="${doctor.address}" />
                    <c:set var="email" value="${doctor.email}" />
                    <c:set var="phone" value="${doctor.phone}" />



                    <tr>
                        <c:url value="AddAppointmentToDoctor.jsp" var="GetDoctor">
                            <c:param name="did" value="${id}" />
                            <c:param name="doctorname" value="${name}" />

                        </c:url>
                        <td>${doctor.name}</td>
                        <td>${doctor.address}</td>
                        <td>${doctor.email}</td>
                        <td>${doctor.phone}</td>
                        <td><a href="${GetDoctor}"><button class="btn btn-primary">Add</button></a></td>
                    </tr>
                </c:forEach>
            </table>

        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />








