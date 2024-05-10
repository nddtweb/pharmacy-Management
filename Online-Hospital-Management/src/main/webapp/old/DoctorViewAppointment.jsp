<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <jsp:include page="header.jsp" />


        <div class="limiter" style="display: flex;">
            <div class="container-login100">
                <div class="wrap-login100" style="width: auto;">
                    <div class="login100-form-title" style="background-image: url(images/bg-03.jpg);">
                        <span class="login100-form-title-1">
                            View Appointment
                        </span>
                    </div>



                    <table class="table table-striped table-hover">
                        <tr>
                            <th>Appointment Id</th>
                            <th>Patient Id</th>
                            <th>Patient Name</th>
                            <th>Appointment date</th>
                            <th>Appointment time</th>
                            <th>Appointment description</th>
                            <th>Doctor Id</th>
                            <th>Doctor Name</th>
                            <th></th>
                            <th></th>
                        </tr>
                        <c:forEach var="appointment" items="${appointmentList}">
                            <c:set var="idappointment" value="${appointment.idappointment}" />
                            <c:set var="patientid" value="${appointment.patientid}" />
                            <c:set var="patientname" value="${appointment.patientname}" />
                            <c:set var="appointmentdate" value="${appointment.date}" />
                            <c:set var="appointmenttime" value="${appointment.time}" />
                            <c:set var="description" value="${appointment.description}" />
                            <c:set var="doctorid" value="${appointment.doctorid}" />
                            <c:set var="doctorname" value="${appointment.doctorname}" />




                            <tr>
                                <td>${appointment.idappointment}</td>
                                <td>${appointment.patientid}</td>
                                <td>${appointment.patientname}</td>
                                <td>${appointment.date}</td>
                                <td>${appointment.time}</td>
                                <td>${appointment.description}</td>
                                <td>${appointment.doctorid}</td>
                                <td>${appointment.doctorname}</td>
                                <c:url value="AddPrescription.jsp" var="AddPrescription">
                                    <c:param name="patientid" value="${patientid}" />
                                    <c:param name="patientname" value="${patientname}" />
                                </c:url>
                                <td><a href="${AddPrescription}"><button class="btn btn-primary">Add
                                            Prescription</button></a></td>

                            </tr>
                        </c:forEach>
                    </table>

                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp" />