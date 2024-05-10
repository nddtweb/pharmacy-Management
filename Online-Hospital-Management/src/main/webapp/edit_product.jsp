
<jsp:include page="header.jsp" />

<%@ page import="java.util.List"%>
<%@ page import="com.product.Product"%>
<%@ page import="com.product.ProductDBUtil"%>

<%
String proId = request.getParameter("proId");
Product product = ProductDBUtil.getProductDetail(proId);
%>

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
				<span class="login100-form-title-1"> Update Product </span>
			</div>

			<form class="login100-form validate-form" action="EditProductServlet"
				method="post">
				<input type="hidden" name="productId"
					value="<%=product.getProductId()%>">
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Product Name</span> <input
						class="input100" type="text" name="productName" required
						placeholder="Enter Product Name"
						value="<%=product.getProductName()%>"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Description</span> <input
						class="input100" type="text" name="productDescription" required
						placeholder="Enter Description"
						value="<%=product.getProductDescription()%>"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Price</span> <input class="input100"
						type="text" name="productPrice" required placeholder="Enter Price"
						value="<%=product.getProductPrice()%>"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Quantity</span> <input
						class="input100" type="text" name="productQuantity" required
						placeholder="Enter Quantity"
						value="<%=product.getProductQuantity()%>"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Expiry Date</span> <input
						class="input100" type="date" name="productExpiryDate" required
						value="<%=product.getProductExpiryDate()%>"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Manufacturing Date</span> <input
						class="input100" type="date" name="productManufacturingDate"
						required value="<%=product.getProductManufacturingDate()%>">
					<span class="focus-input100"></span>
				</div>
				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit">Update
						Product</button>
				</div>
			</form>
		</div>
	</div>
</div>
