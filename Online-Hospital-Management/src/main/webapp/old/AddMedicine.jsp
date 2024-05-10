<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title" style="background-image: url(images/bg-02.jpg);">
				<span class="login100-form-title-1">
					Add Medicine
				</span>
			</div>

			<form class="login100-form validate-form" action="AddMedicine" method="post">

				<div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Name</span>
					<input class="input100" type="text" id="medicineName" name="medicineName" placeholder="Medicine Name" >
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Type</span>
                    <select class="input100" id="medicineType" name="medicineType">
                        <option value="tablet">Tablet</option>
                        <option value="syrup">Syrup</option>
                        <option value="capsule">Capsule</option>
                        <option value="injection">Injection</option>                 
                    </select>
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Description</span>
					<input class="input100" type="text" id="medicineDescription" name="medicineDescription" placeholder="Medicine Description" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Price</span>
					<input class="input100" type="text" id="medicinePrice" name="medicinePrice" placeholder="Medicine Price" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Quantity</span>
					<input class="input100" type="text" id="medicineQuantity" name="medicineQuantity" placeholder="Medicine Quantity" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Expiry Date</span>
					<input class="input100" type="date" id="medicineExpiryDate" name="medicineExpiryDate" placeholder="Medicine Expiry Date" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Manufacturing Date</span>
					<input class="input100" type="date" id="medicineManufacturingDate" name="medicineManufacturingDate" placeholder="Medicine Manufacturing Date" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Company</span>
					<input class="input100" type="text" id="medicineCompany" name="medicineCompany" placeholder="Medicine Company" >
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Add Medicine">
				</div>
			</form>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />