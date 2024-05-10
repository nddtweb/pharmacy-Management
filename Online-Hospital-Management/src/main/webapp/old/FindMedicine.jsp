<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page import="java.sql.*" %><!-- Add this line to import Java SQL classes -->


            <jsp:include page="header.jsp" />
            <div class="limiter" style="display: flex;">
                <div class="container-login100">
                    <div style="display: block; width: 100%;
                    padding-left:20%; padding-right: 20%;">
                        <form action="FindMedicine" method="post">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="Medicinename"
                                    placeholder="Enter the Medicine Name" aria-label="Recipient's username"
                                    aria-describedby="button-addon2" required>
                                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Find</button>
                            </div>
                        </form>
                    </div><br>


                    <c:if test="${not empty medicinesDetails}">
                        <div class="wrap-login100" style="width: auto;">
                            <div class="login100-form-title" style="background-image: url(images/bg-02.jpg);">
                                <span class="login100-form-title-1">
                                    Medicine Details
                                </span>
                            </div>



                            <table class="table table-striped table-hover">
                                <tr>
                                    <th>ID:</th>
                                    <th>Name:</th>
                                    <th>Type:</th>
                                    <th>Description:</th>
                                    <th>Price:</th>
                                    <th>Quantity</th>
                                    <th>Expiry Date</th>
                                    <th>Manufacturing Date</th>
                                    <th>Company</th>
                                    <th></th>
                                    <th></th>
                                </tr>

                                <c:forEach var="Medicine" items="${medicinesDetails}">
                                    <c:set var="medicineId" value="${Medicine.medicineId}" />
                                    <c:set var="medicineName" value="${Medicine.medicineName}" />
                                    <c:set var="medicineType" value="${Medicine.medicineType}" />
                                    <c:set var="medicineDescription" value="${Medicine.medicineDescription}" />
                                    <c:set var="medicinePrice" value="${Medicine.medicinePrice}" />
                                    <c:set var="medicineQuantity" value="${Medicine.medicineQuantity}" />
                                    <c:set var="medicineExpiryDate" value="${Medicine.medicineExpiryDate}" />
                                    <c:set var="medicineManufacturingDate"
                                        value="${Medicine.medicineManufacturingDate}" />
                                    <c:set var="medicineCompany" value="${Medicine.medicineCompany}" />



                                    <tr>
                                        <td>${medicineId}</td>
                                        <td>${medicineName}</td>
                                        <td>${medicineType}</td>
                                        <td>${medicineDescription}</td>
                                        <td>${medicinePrice}</td>
                                        <td>${medicineQuantity}</td>
                                        <td>${medicineExpiryDate}</td>
                                        <td>${medicineManufacturingDate}</td>
                                        <td>${medicineCompany}</td>

                                        <c:url value="Updatemedicine.jsp" var="medicineUpdate">
                                            <c:param name="medicineId" value="${medicineId}" />
                                            <c:param name="medicineName" value="${medicineName}" />
                                            <c:param name="medicineType" value="${medicineType}" />
                                            <c:param name="medicineDescription" value="${medicineDescription}" />
                                            <c:param name="medicinePrice" value="${medicinePrice}" />
                                            <c:param name="medicineQuantity" value="${medicineQuantity}" />
                                            <c:param name="medicineExpiryDate" value="${medicineExpiryDate}" />
                                            <c:param name="medicineManufacturingDate"
                                                value="${medicineManufacturingDate}" />
                                            <c:param name="medicineCompany" value="${medicineCompany}" />
                                        </c:url>
                                        <td><a href="${medicineUpdate}"><button
                                                    class="btn btn-primary">Update</button></a>
                                        </td>


                                        <c:url value="DeleteMedicine.jsp" var="Deletemedicine">
                                            <c:param name="medicineId" value="${medicineId}" />
                                            <c:param name="medicineName" value="${medicineName}" />
                                            <c:param name="medicineType" value="${medicineType}" />
                                            <c:param name="medicineDescription" value="${medicineDescription}" />
                                            <c:param name="medicinePrice" value="${medicinePrice}" />
                                            <c:param name="medicineQuantity" value="${medicineQuantity}" />
                                            <c:param name="medicineExpiryDate" value="${medicineExpiryDate}" />
                                            <c:param name="medicineManufacturingDate"
                                                value="${medicineManufacturingDate}" />
                                            <c:param name="medicineCompany" value="${medicineCompany}" />
                                        </c:url>
                                        <td><a href="${Deletemedicine}"><button
                                                    class="btn btn-danger">Delete</button></a>
                                        </td>


                                    </tr>
                                </c:forEach>

                            </table>
                    </c:if>

                </div>
            </div>
            </div>

            <jsp:include page="footer.jsp" />