<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <jsp:include page="header.jsp" />

        <div class="limiter" style="display: flex;">
            <div class="container-login100">
                <div class="wrap-login100" style="width: auto;">
                    <div class="login100-form-title" style="background-image: url(images/bg-03.jpg);">
                        <span class="login100-form-title-1">
                            View Prescription
                        </span>
                    </div>



                    <table class="table table-striped table-hover">
                        <tr>
                            <td>ppid</td>
                            <th>pdate</th>
                            <th>Diagnostics</th>
                            <th>pmedicine</th>
                            <th>pdescription</th>
                            <th>doctor name</th>
                            <th>doctor id</th>
                            <th>patient name</th>
                            <th>patient id</th>
                            <th></th>
                            <th></th>
                        </tr>
                        <c:forEach items="${prescriptionList}" var="prescription">
                            <c:set var="ppid" value="${prescription.pid}" />
                            <c:set var="ppdate" value="${prescription.pdate}" />
                            <c:set var="Diagnostics" value="${prescription.diagnostics}" />
                            <c:set var="pmedicine" value="${prescription.pmedicine}" />
                            <c:set var="pdescription" value="${prescription.pdescription}" />
                            <c:set var="pdoctorname" value="${prescription.pdoctorname}" />
                            <c:set var="pdoctorid" value="${prescription.pdoctorid}" />
                            <c:set var="ppatientname" value="${prescription.ppatientname}" />
                            <c:set var="ppatientid" value="${prescription.ppatientid}" />

                            <tr>
                                <td>${prescription.pid}</td>
                                <td>${prescription.pdate}</td>
                                <td>${prescription.diagnostics}</td>
                                <td>${prescription.pmedicine}</td>
                                <td>${prescription.pdescription}</td>
                                <td>${prescription.pdoctorname}</td>
                                <td>${prescription.pdoctorid}</td>
                                <td>${prescription.ppatientname}</td>
                                <td>${prescription.ppatientid}</td>
                                <c:url value="UpdatePrescription.jsp" var="Editprescription">
                                    <c:param name="ppid" value="${ppid}" />
                                    <c:param name="ppdate" value="${ppdate}" />
                                    <c:param name="Diagnostics" value="${Diagnostics}" />
                                    <c:param name="pmedicine" value="${pmedicine}" />
                                    <c:param name="pdescription" value="${pdescription}" />
                                    <c:param name="pdoctorname" value="${pdoctorname}" />
                                    <c:param name="pdoctorid" value="${pdoctorid}" />
                                    <c:param name="ppatientname" value="${ppatientname}" />
                                    <c:param name="ppatientid" value="${ppatientid}" />
                                </c:url>
                                <td><a href="${Editprescription}"><button class="btn btn-primary">Edit</button></a></td>
                                <c:url value="Deleteprescription.jsp" var="Deleteprescription">
                                    <c:param name="ppid" value="${ppid}" />
                                    <c:param name="ppdate" value="${ppdate}" />
                                    <c:param name="Diagnostics" value="${Diagnostics}" />
                                    <c:param name="pmedicine" value="${pmedicine}" />
                                    <c:param name="pdescription" value="${pdescription}" />
                                    <c:param name="pdoctorname" value="${pdoctorname}" />
                                    <c:param name="pdoctorid" value="${pdoctorid}" />
                                    <c:param name="ppatientname" value="${ppatientname}" />
                                    <c:param name="ppatientid" value="${ppatientid}" />
                                </c:url>
                                <td><a href="${Deleteprescription}"><button class="btn btn-danger">Delete</button></a>
                                </td>
                            </tr>
                        </c:forEach>



                    </table>

                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp" />