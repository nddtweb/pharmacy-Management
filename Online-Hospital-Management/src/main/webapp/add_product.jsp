
<jsp:include page="header.jsp" />


<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">

<style>
.custom-input {
	height: 46px;
}

.custom-radio {
	width: auto;
}
</style>

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title"
				style="background-image: url(images/bg-05.jpg);">
				<span class="login100-form-title-1"> Add Product </span>
			</div>

			<form class="login100-form validate-form" action="AddProductServlet"
				method="post" enctype="multipart/form-data">
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Product Name</span> <input
						class="input100" type="text" name="productName" required
						placeholder="Enter Product Name"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Description</span> <input
						class="input100" type="text" name="productDescription" required
						placeholder="Enter Description"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Price</span> <input class="input100"
						type="text" name="productPrice" required placeholder="Enter Price">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Quantity</span> <input
						class="input100" type="text" name="productQuantity" required
						placeholder="Enter Quantity"> <span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Expiry Date</span> <input
						class="input100" type="date" name="productExpiryDate" required>
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Manufacturing Date</span> <input
						class="input100" type="date" name="productManufacturingDate"
						required> <span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Image</span> <input class="input100"
						type="file" name="productImage" accept="image/jpeg, image/png, image/jpg" required> <span
						class="focus-input100"></span>
				</div>
				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit">Add
						Product</button>
				</div>
			</form>
		</div>
	</div>
</div>
