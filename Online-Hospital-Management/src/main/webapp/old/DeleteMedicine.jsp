<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <jsp:include page="header.jsp" />

    <% String medicineId=request.getParameter("medicineId"); String medicineName=request.getParameter("medicineName");
        String medicineType=request.getParameter("medicineType"); String
        medicineDescription=request.getParameter("medicineDescription"); String
        medicinePrice=request.getParameter("medicinePrice"); String
        medicineQuantity=request.getParameter("medicineQuantity"); String
        medicineExpiryDate=request.getParameter("medicineExpiryDate"); String
        medicineManufacturingDate=request.getParameter("medicineManufacturingDate"); String
        medicineCompany=request.getParameter("medicineCompany"); %>

        <div class="limiter" style="display: flex;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-form-title" style="background-image: url(images/bg-02.jpg);">
                        <span class="login100-form-title-1">
                            Update Medicine
                        </span>
                    </div>

                    <form class="login100-form validate-form" action="DeleteMedicine" method="post">
                        <div class="wrap-input100 validate-input m-b-26">
                            <span class="label-input100">Medicine Id</span>
                            <input class="input100" type="text" name="medicineId" value="<%=medicineId%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Medicine Name</span>
                            <input class="input100" type="text" name="medicineName" value="<%=medicineName%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Medicine Type</span>
                            <input class="input100" type="text" name="medicineType" value="<%=medicineType%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Medicine Description</span>
                            <input class="input100" type="text" name="medicineDescription"
                                value="<%=medicineDescription%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Medicine Price</span>
                            <input class="input100" type="text" name="medicinePrice" value="<%=medicinePrice%>"
                                readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Medicine Quantity</span>
                            <input class="input100" type="text" name="medicineQuantity" value="<%=medicineQuantity%>"
                                readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Medicine Expiry Date</span>
                            <input class="input100" type="text" name="medicineExpiryDate"
                                value="<%=medicineExpiryDate%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Medicine Manufacturing Date</span>
                            <input class="input100" type="text" name="medicineManufacturingDate"
                                value="<%=medicineManufacturingDate%>" readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Medicine Company</span>
                            <input class="input100" type="text" name="medicineCompany" value="<%=medicineCompany%>"
                                readonly>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="container-login100-form-btn">
                            <input class="login100-form-btn" type="submit" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp" />