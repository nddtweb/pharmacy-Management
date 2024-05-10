<jsp:include page="header.jsp" />
<%@ page import="java.util.List"%>
<%@ page import="com.Users.Users"%>
<%@ page import="com.Users.UsersDBUtil"%>
<%
// Fetch user data from the database
List<Users> users = UsersDBUtil.getAllUsers();
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
			<h2>Manage Users</h2>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered m-0">
					<thead>
						<tr>
							<th class="text-center py-3 px-4">Name</th>
							<th class="text-center py-3 px-4">Address</th>
							<th class="text-center py-3 px-4">Email</th>
							<th class="text-center py-3 px-4">Phone</th>
							<th class="text-center py-3 px-4">Gender</th>
							<th class="text-center py-3 px-4">Age</th>
							<th class="text-center py-3 px-4">Username</th>
							<th class="text-center py-3 px-4">User Type</th>
							<th class="text-center py-3 px-4">Actions</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (Users user : users) {
						%>
						<tr>
							<td class="text-center"><%=user.getName()%></td>
							<td class="text-center"><%=user.getAddress()%></td>
							<td class="text-center"><%=user.getEmail()%></td>
							<td class="text-center"><%=user.getPhone()%></td>
							<td class="text-center"><%=user.getGender()%></td>
							<td class="text-center"><%=user.getAge()%></td>
							<td class="text-center"><%=user.getUsername()%></td>
							<td class="text-center">
								<%
								if (user.getusertype() == 0) {
								%> Admin <%
								} else {
								%> User <%
								}
								%>
							</td>
							<td class="text-center"><a href="#"
								class="shop-tooltip close float-none text-danger" title="Edit"
								data-original-title="Edit"
								onclick="submitFormUpdate(<%=user.getId()%>)"> <i
									class="fas fa-edit"></i>
							</a> <a href="#" class="shop-tooltip close float-none text-danger"
								title="Remove" data-original-title="Remove" onclick="submitFormDelete(<%=user.getId()%>)"> <i
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
	<input type="hidden" id="userId" name="userId">
</form>
<script type="text/javascript">
	function submitFormUpdate(userId) {
		document.getElementById("editForm").action = "UserUpdate.jsp";
		document.getElementById("userId").value = userId;
		document.getElementById("editForm").submit();
	}
	function submitFormDelete(userId) {
		document.getElementById("editForm").action = "DeleteUserServlet";
		document.getElementById("userId").value = userId;
		document.getElementById("editForm").submit();
	}
</script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
</script>


<jsp:include page="footer.jsp" />