
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
	orders = OrderDBUtil.getAllOrders(userId);
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
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
</script>


<jsp:include page="footer.jsp" />