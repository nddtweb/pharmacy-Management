<jsp:include page="header.jsp" />

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title" style="background-image: url(images/bg-06.jpg);">
				<span class="login100-form-title-1">
					Contact Us
				</span>
			</div>

			<form class="login100-form validate-form" action="#" method="post">
				<div class="wrap-input100 validate-input m-b-26" data-validate="Name is required">
					<span class="label-input100">Name</span>
					<input class="input100" type="text" name="Name"  required placeholder="Enter your Name">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-18" data-validate="Email is required">
					<span class="label-input100">Email</span>
					<input class="input100" type="text" name="Email" required placeholder="Enter your Email.">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" data-validate="Message is required">
					<span class="label-input100">Message</span>
					<textarea class="input100"  name="Message" required placeholder="Enter your Message."></textarea>
                    <span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Submit">
				</div>
			</form>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />




