
<jsp:include page="header.jsp" />
<%@ page import="java.util.List"%>
<%@ page import="com.product.Product"%>
<%@ page import="com.product.ProductDBUtil"%>
<%
// Fetch user data from the database
List<Product> products = ProductDBUtil.getAllProduct();
%>
<style type="text/css">
body {
	margin-top: 20px;
	background: #eee;
}

.ui-w-40 {
	width: 40px !important;
	height: auto;
}

.card {
	box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
}

.ui-product-color {
	display: inline-block;
	overflow: hidden;
	margin: .144em;
	width: .875rem;
	height: .875rem;
	border-radius: 10rem;
	-webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
	box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
	vertical-align: middle;
}
</style>
<div class="container px-3 my-5 clearfix">

	<div class="card">
		<div class="card-header">
			<h2>Manage Product</h2>
			<div class="text-right">
				<a href="add_product.jsp" class="btn btn-success">ADD</a>
			</div>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered m-0">
					<thead>
						<tr>

							<th class="text-center py-3 px-4" style="min-width: 200px;">Product
								Name</th>
							<th class="text-right py-3 px-4" style="width: 200px;">Price</th>
							<th class="text-center py-3 px-4" style="width: 120px;">Quantity</th>
							<th class="text-center align-middle py-3 px-0"
								style="width: 140px;"><a href="#"
								class="shop-tooltip float-none text-light" title
								data-original-title="Clear cart"><i class="ino ion-md-trash"></i></a></th>
						</tr>
					</thead>
					<tbody>

						<%
						for (Product product : products) {
						%>

						<tr>
							<td class="p-4">
								<div class="media align-items-center">
									<div class="media-body">
										<a href="#" class="d-block text-dark"><%=product.getProductName()%></a>
										<small> <span class="text-muted"><%=product.getProductDescription()%>
										</span>
										</small>
									</div>
								</div>
							</td>
							<td class="text-right font-weight-semibold align-middle p-4">
								<input type="text" class="form-control text-center"
								value="<%=product.getProductPrice()%>">
							</td>
							<td class="align-middle p-4"><input type="text"
								class="form-control text-center"
								value="<%=product.getProductQuantity()%>"></td>

							<td class="text-center"><a href="#"
								class="shop-tooltip close float-none text-danger" title="Edit"
								data-original-title="Edit"
								onclick="submitFormUpdate(<%=product.getProductId()%>)"> <i
									class="fas fa-edit"></i>
							</a> <a href="#" class="shop-tooltip close float-none text-danger"
								title="Remove" data-original-title="Remove"
								onclick="submitFormDelete(<%=product.getProductId()%>)"> <i
									class="fas fa-trash-alt"></i>
							</a></td>

						</tr>

						<%
						}
						%>
					</tbody>
				</table>
			</div>

		</div>
	</div>
</div>
<form id="editForm" method="post">
	<input type="hidden" id=proId name="proId">
</form>
<script type="text/javascript">
	function submitFormUpdate(proId) {
		document.getElementById("editForm").action = "edit_product.jsp";
		document.getElementById("proId").value = proId;
		document.getElementById("editForm").submit();
	}
	function submitFormDelete(proId) {
		document.getElementById("editForm").action = "DeleteProductServlet";
		document.getElementById("proId").value = proId;
		document.getElementById("editForm").submit();
	}
</script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
</script>


<jsp:include page="footer.jsp" />