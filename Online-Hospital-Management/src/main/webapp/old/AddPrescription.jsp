
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.Users.Users" %>
<jsp:include page="header.jsp" />

<%

String patientid=request.getParameter("patientid");
String patientname=request.getParameter("patientname");

List<Users> usersList = (List<Users>) session.getAttribute("userDetails");
Users users = null;
if(usersList != null && usersList.size() > 0) {
    users = usersList.get(0);
if(users != null) {	

%>

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title" style="background-image: url(images/bg-03.jpg);">
				<span class="login100-form-title-1">
					Add Prescription
				</span>
			</div>

			<form class="login100-form validate-form" action="AddPrescription" method="post">
				<div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">date</span>
					<input class="input100" type="date" name="pdate"  >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Diagnostics</span>
					<input class="input100" type="text" name="Diagnostics"  >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine</span>
					<input class="input100" type="text" name="pmedicine"  >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Description</span>
					<input class="input100" type="text" name="pdescription"  >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Doctor Name</span>
					<input class="input100" type="text" name="pdoctorname" value="<%=users.getName()%>"  >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Doctor Id</span>
					<input class="input100" type="text" name="pdoctorid" value="<%=users.getId()%>"  >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">patient name</span>
					<input class="input100" type="text" name="ppatientname" value="<%=patientname%>" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Patient Id</span>
					<input class="input100" type="text" name="ppatientid" value="<%=patientid%> ">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Submit">

				</div>
			</form>
		</div>
	</div>
</div>
<%
}
}
%>

<jsp:include page="footer.jsp" />