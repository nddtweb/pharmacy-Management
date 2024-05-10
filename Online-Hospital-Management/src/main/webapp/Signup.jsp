
<jsp:include page="header.jsp" />


<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">

<style>
.custom-input {
	height: 46px;
}

.custom-radio {
	width: auto;
}
</style>

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title"
				style="background-image: url(images/bg-05.jpg);">
				<span class="login100-form-title-1"> Sign Up </span>
			</div>

			<form class="login100-form validate-form" action="UsersInsert"
				method="post">
				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Name</span> <input class="input100"
						type="text" name="name" required placeholder="Enter your Name">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Address</span> <input class="input100"
						type="text" name="address" required
						placeholder="Enter your Address"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Email</span> <input class="input100"
						type="email" name="email" required
						placeholder="Enter your Address"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">phone</span> <input class="input100"
						type="tel" name="phone" required placeholder="Enter your phone">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Gender</span> <input type="radio"
						id="male" name="gender" value="male" class="custom-radio" required>
					<label for="male">Male</label> <input type="radio" id="female"
						name="gender" value="female" class="custom-radio" required>
					<label for="female">Female</label><br> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Age</span> <input class="input100"
						type="number" name="age" required placeholder="Enter your Age">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">User Name</span> <input
						class="input100" type="text" name="UID" required
						placeholder="Enter your User Name"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Password</span> <input
						class="input100" type="password" name="PID" required
						placeholder="Enter your Password"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26 custom-input">
					<span class="label-input100">Confirm Password</span> <input
						class="input100" type="password" name="confirmPassword" required
						placeholder="Enter your Address"> <span
						class="focus-input100"></span>
				</div>

				<input type="number" id="usertype" name="usertype" value="1" hidden>


				<div class="container-login100-form-btn">
					<input class="login100-form-btn" type="submit" value="Sign up">
				</div>
			</form>
		</div>
	</div>
</div>
