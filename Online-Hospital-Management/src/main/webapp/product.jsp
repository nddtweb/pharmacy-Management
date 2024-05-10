<jsp:include page="header.jsp" />
<%@ page import="java.util.List"%>
<%@ page import="com.product.Product"%>
<%@ page import="com.product.ProductDBUtil"%>
<%
// Fetch user data from the database
List<Product> products = ProductDBUtil.getAllProduct();
%>
<!-- inner page section -->
<section class="inner_page_head">
	<div class="container_fuild">
		<div class="row">
			<div class="col-md-12">
				<div class="full">
					<h3>Product Grid</h3>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- end inner page section -->
<!-- product section -->
<section class="product_section layout_padding">
	<div class="container">
		<div class="heading_container heading_center">
			<h2>
				Our <span>products</span>
			</h2>
		</div>
		<div class="row">
			<%
			for (Product product : products) {
			%>
			<div class="col-sm-6 col-md-4 col-lg-4">
				<div class="box">
					<div class="option_container">
						<div class="options">
							<a onclick="submitFormAdd(<%=product.getProductId()%>);"
								class="option1"> Add to Cart </a> <a
								onclick="submitFormAdd(<%=product.getProductId()%>);"
								class="option2"> Buy Now </a>
						</div>
					</div>
					<div class="img-box">
						<img src="images/product.png" alt="">
					</div>
					<div class="detail-box">
						<h5><%=product.getProductName()%></h5>
						<h6>
							$<%=product.getProductPrice()%></h6>
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="btn-box">
			<a href=""> View All products </a>
		</div>
	</div>
</section>
<!-- end product section -->

<form id="editForm" method="post">
	<input type="hidden" id="productId" name="productId">
</form>
<script type="text/javascript">
	function submitFormAdd(productId) {
		document.getElementById("editForm").action = "AddCartServlet";
		document.getElementById("productId").value = productId;
		document.getElementById("editForm").submit();
	}
</script>

<jsp:include page="footer.jsp" />