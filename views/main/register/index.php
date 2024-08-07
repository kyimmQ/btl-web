<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
  
	<title>KMS Technology - Bright Minds, Brilliant Solutions</title>
	<meta content="" name="description">
	<meta content="" name="keywords">
  
	<!-- Favicons -->
	<link href="https://kms-technology.com/wp-content/uploads/2018/10/favicon.png" rel="icon">
  	<link href="public/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  
	<!-- Vendor CSS Files -->
	<link href="public/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
	<link href="public/assets/vendor/aos/aos.css" rel="stylesheet">
	<link href="public/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="public/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="public/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
	<link href="public/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	<link href="public/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
	<link href="public/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
	<link href="public/assets/css/style.css" rel="stylesheet">
	<link href="public/assets/css/main.css" rel="stylesheet">
	<link href="public/assets/css/util.css" rel="stylesheet">
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="index.php?page=main&controller=register&action=submit" method="POST" class="login100-form validate-form">
					<span class="login100-form-title p-b-20">
						<strong>ĐĂNG KÝ</strong>
					</span>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Fname is required">
						<input class="input100" type="text" name="fname" placeholder="Họ">
						<span class="focus-input100"></span>
						<span class="label-input100">Họ</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Lname is required">
						<input class="input100" type="text" name="lname" placeholder="Tên">
						<span class="focus-input100"></span>
						<span class="label-input100">Tên</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Age is required">
						<input class="input100" type="text" name="age" placeholder="Tuổi">
						<span class="focus-input100"></span>
						<span class="label-input100">Tuổi</span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="phone" placeholder="Số điện thoại">
						<span class="focus-input100"></span>
						<span class="label-input100">Số điện thoại</span>
					</div>

					<div class="form-check" style="padding-left: 0;">
						<div class="row">
							<label class="col-md-3 col-form-label">Giới tính:</label>	
						</div>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" value="1">
						<label class="form-check-label">Nam</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" value="0">
						<label class="form-check-label">Nữ</label>
					</div>
					
					
					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div>
							<a href="index.php?page=main&controller=login&action=index" class="txt1" style="font-size: 18px; color: blue;">
								Đã có tài khoản? Đăng nhập!
							</a>
						</div>

						<div>
							<a href="index.php?page=main&controller=layouts&action=index" class="txt1" style="font-size: 18px; color: blue;">
								Trở về trang chủ!
							</a>
						</div>
					</div>
			
					<div class="container-login100-form-btn">
						<input id="submit" class="login100-form-btn" type="submit" style="background-color: green; font-size: 20px;" value="Đăng ký tài khoản">
					</div>
				</form>

				<div class="login100-more" style="background-size: 1000px; background-image: url('https://www.passerellesnumeriques.org/wp-content/uploads/2018/10/KMS-Technology.png');">
				</div>
			</div>
		</div>
	</div>

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			const submit = document.getElementById("submit");
			submit.addEventListener("click", function(e) {
				if (!validate()) {
					e.preventDefault(); // Prevent form submission if validation fails
				} else {
					alert("Đăng ký thành công!");
				}
			});

			function validate() {
				// Perform your validation logic here

				const email = document.querySelector("input[name=email]").value;
				const pass = document.querySelector("input[name=pass]").value;
				const fname = document.querySelector("input[name=fname]").value;
				const lname = document.querySelector("input[name=lname]").value;
				const age = document.querySelector("input[name=age]").value;
				const phone = document.querySelector("input[name=phone]").value;
				const gender = document.querySelector("input[name=gender]:checked");

				if (email === "" || pass === "" || fname === "" || lname === "" || age === "" || phone === "" || !gender) {
					alert("Vui lòng nhập đầy đủ thông tin!");
					return false;
				} else if (email.indexOf("@") === -1 || email.indexOf(".") === -1) {
					alert("Email không hợp lệ!");
					return false;
				} else if (isNaN(age) || isNaN(phone)) {
					alert("Tuổi và số điện thoại phải là số!");
					return false;
				} else if (age < 0 || age > 150) {
					alert("Tuổi không hợp lệ!");
					return false;
				} else if (phone.length < 10 || phone.length > 11) {
					alert("Số điện thoại không hợp lệ!");
					return false;
				} else {
					return true;
				}
			}

		});
	</script>
	
</body>
</html>