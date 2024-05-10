<jsp:include page="header.jsp" />
<%@ page import="java.util.List" %>
<%@ page import="com.Users.Users" %>

<div class="limiter" style="display: flex;">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title" style="background-image: url(images/bg-05.jpg);">
                <span class="login100-form-title-1">
                    Add Appointment To Doctor
                </span>
            </div>
            <% 
            int did=0; 
            String didParam=request.getParameter("did"); 

            if (didParam !=null && !didParam.isEmpty()) {
                did=Integer.parseInt(didParam); 
            } 
            String doctorname=request.getParameter("doctorname"); 

            List<Users> usersList = (List<Users>) session.getAttribute("userDetails");
                    Users users = null;

                    if(usersList != null && usersList.size() > 0) {
                    users = usersList.get(0);
                    
                    if(users != null) {

                    %>
                    <form class="login100-form validate-form" action="AddAppointmenttoDocter" method="post">
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                            <span class="label-input100">Patient ID:</span>
                            <input class="input100" type="text" name="patientid" value="<%=users.getId() %>" readonly
                                placeholder="">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                            <span class="label-input100">Patient Name:</span>
                            <input class="input100" type="text" name="patientname" required placeholder=".">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                            <span class="label-input100">Date:</span>
                            <input class="input100" type="date" name="date" required placeholder="">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                            <span class="label-input100">Time:</span>
                            <input class="input100" type="time" name="time" required placeholder=".">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                            <span class="label-input100">Description:</span>
                            <input class="input100" type="text" name="description" required placeholder="">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                            <span class="label-input100">Doctor Id:</span>
                            <input class="input100" type="text" name="doctorid" value="<%=did%>" readonly
                                placeholder=".">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                            <span class="label-input100">Doctor Name:</span>
                            <input class="input100" type="text" name="doctorname" value="<%=doctorname%>" readonly
                                placeholder="">
                            <span class="focus-input100"></span>
                        </div>


                        <!-- <div class="flex-sb-m w-full p-b-30">
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>

					<div>
						<a href="#" class="txt1">
							Forgot Password?
						</a>
					</div>
				</div> -->

                        <div class="container-login100-form-btn">
                            <input class="login100-form-btn" type="submit" value="Add">
                            <!-- <button class="login100-form-btn">
						Login
					</button> -->
                        </div>
                    </form>
                    <% } } %>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />
