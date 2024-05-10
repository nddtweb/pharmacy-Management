<jsp:include page="header.jsp" />

<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">

<style>
.custom-input {
	height: 46px;
}
</style>

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title"
				style="background-image: url(images/bg-05.jpg);">
				<span class="login100-form-title-1"> Users Login </span>
			</div>

			<form class="login100-form validate-form" action="Login"
				method="post">
				<div class="wrap-input100 validate-input m-b-26 custom-input"
					data-validate="Username is required">
					<span class="label-input100">Username</span> <input
						class="input100" type="text" name="UID" required
						placeholder="Enter your username"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-18 custom-input"
					data-validate="Password is required">
					<span class="label-input100">Password</span> <input
						class="input100" type="password" name="PID" required
						placeholder="Enter your password."> <span
						class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<input class="login100-form-btn" type="submit" value="Login">
				</div>
			</form>
		</div>
	</div>
</div>
