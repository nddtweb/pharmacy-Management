
<jsp:include page="header.jsp" />
<%@ page import="java.util.List"%>
<%@ page import="com.order.Order"%>
<%@ page import="com.order.OrderDBUtil"%>
<%@ page import="com.Users.Users"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<%
session = request.getSession(false);
List<Order> orders = null;
if (session == null || session.getAttribute("userDetails") == null) {
	// Session not available or userId not set in session
	response.sendRedirect("Signin.jsp"); // Redirect to login page
} else {
	int userId = ((List<Users>) session.getAttribute("userDetails")).get(0).getId();
	// Fetch cart data from the database
	orders = OrderDBUtil.getAllOrdersAdmin();
}
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
			<h2>Manage Orders</h2>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered m-0">
					<thead>
						<tr>
							<th class="text-center py-3 px-4" style="min-width: 200px;">Order
								ID</th>
							<th class="text-right py-3 px-4" style="width: 200px;">Product</th>
							<th class="text-right py-3 px-4" style="width: 200px;">Price</th>
							<th class="text-center py-3 px-4" style="width: 120px;">Customer
								Name</th>
							<th class="text-center py-3 px-4" style="width: 120px;">Delivery
								Address</th>
							<th class="text-center align-middle py-3 px-0"
								style="width: 140px;">Actions</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (Order order : orders) {
						%>
						<tr>
							<td class="p-4"><a href="#" class="d-block text-dark"><%=order.getOrderId()%></a>
							</td>
							<td class="p-4">
								<div class="media align-items-center">
									<div class="media-body">
										<a href="#" class="d-block text-dark"><%=order.getCartId()%></a>
									</div>
								</div>
							</td>
							<td class="text-right font-weight-semibold align-middle p-4">
								<input type="text" readonly class="form-control text-center"
								value="<%=order.getAmount()%>">
							</td>

							<td class="text-right font-weight-semibold align-middle p-4">
								<a href="#" class="d-block text-dark"><%=order.getCustomerName()%></a>
							</td>
							<td class="text-right font-weight-semibold align-middle p-4">
								<a href="#" class="d-block text-dark"><%=order.getDeliveryAddress()%></a>
							</td>

							<td class="text-center"><a href="#"
								class="shop-tooltip close float-none text-danger" title="Edit"
								data-original-title="Edit"
								onclick="submitFormUpdate(<%=order.getOrderId()%>)"> <i
									class="fas fa-edit"></i>
							</a> <a href="#" class="shop-tooltip close float-none text-danger"
								title="Remove" data-original-title="Remove"
								onclick="submitFormDelete(<%=order.getOrderId()%>)"> <i
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
	<input type="hidden" id="orderId" name="orderId"> <input
		type="hidden" id="quantity" name="quantity"> <input
		type="hidden" id="rate" name="rate">
</form>
<script type="text/javascript">
	function submitFormUpdate(orderId) {
		document.getElementById("editForm").action = "edit_order.jsp";
		document.getElementById("orderId").value = orderId;
		document.getElementById("editForm").submit();
	}
	function submitFormDelete(orderId) {
		document.getElementById("editForm").action = "DeleteOrderServlet";
		document.getElementById("orderId").value = orderId;
		document.getElementById("editForm").submit();
	}
</script>

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
</script>


<jsp:include page="footer.jsp" />