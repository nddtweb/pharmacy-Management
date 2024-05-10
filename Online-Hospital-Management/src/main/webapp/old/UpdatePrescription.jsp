<jsp:include page="header.jsp" />

<%
String pid =request.getParameter("ppid");
String pdate = request.getParameter("ppdate");
String diagnostics = request.getParameter("Diagnostics");
String pmedicine = request.getParameter("pmedicine");
String pdescription = request.getParameter("pdescription");
String pdoctorname = request.getParameter("pdoctorname");
String pdoctorid = request.getParameter("pdoctorid");
String ppatientname = request.getParameter("ppatientname");
String ppatientid = request.getParameter("ppatientid");

%>

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title" style="background-image: url(images/bg-03.jpg);">
				<span class="login100-form-title-1">
					Update Prescription
				</span>
			</div>

			<form class="login100-form validate-form" action="UpdatePrescription" method="post">
				<div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Prescription ID</span>
					<input class="input100"  type="text" name="pid" value="<%=pid%>" readonly>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Prescription Date</span>
					<input class="input100" type="text" name="pdate" value="<%=pdate%>" readonly>
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Diagnostics</span>
					<input class="input100" type="text" name="diagnostics" value="<%=diagnostics%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Medicine</span>
					<input class="input100" type="text" name="pmedicine" value="<%=pmedicine%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Description</span>
					<input class="input100" type="text" name="pdescription" value="<%=pdescription%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Doctor Name</span>
					<input class="input100" type="text" name="pdoctorname" value="<%=pdoctorname%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">DoctorID</span>
					<input class="input100" type="text" name="pdoctorid" value="<%=pdoctorid%>" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Patient Name</span>
					<input class="input100" type="text" name="ppatientname" value="<%=ppatientname%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Patient ID</span>
					<input class="input100" type="text" name="ppatientid" value="<%=ppatientid%>">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Update">
				</div>
			</form>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />