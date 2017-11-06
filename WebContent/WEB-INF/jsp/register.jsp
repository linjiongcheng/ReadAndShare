<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>注册</title>

	<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/register.css">
</head>
<body>

    <div class="container">

    	<div class="panel panel-default registerPanel">
			<div class="panel-heading registerHeading">
				<h3 class="registerTitle">用户注册</h3>
			</div>
			<div class="panel-body registerBody">
				<form:form method="POST" action="/ReadAndShare/registerUser">
					<div class="form-group">
						<input name="phoneNumber" type="tel" class="form-control input-lg" id="inputPhoneNumber" placeholder="您的手机号码" pattern="(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$" required>
					</div>
					<div class="input-group form-group">
						<input type="text" class="form-control input-lg" id="inputCaptcha" placeholder="您的验证码" required>
						<span class="input-group-btn">
							<button class="btn btn-default btn-lg" type="button" id="getCaptcha">获取验证码</button>
						</span>
					</div>
					<div class="form-group">
						<input name="password1" type="password" class="form-control input-lg" id="inputPassword" placeholder="您的密码" required>
					</div>
					<div class="form-group">
						<input name="password2" type="password" class="form-control input-lg" id="repeatPassword" placeholder="重复密码" required>
					</div>
					<div class="form-group" id="registerButton">
						<button type="submit" class="btn btn-primary btn-lg btn-block">注册</button>
					</div>
				</form:form>
			</div>
		</div>

    </div> <!-- /container -->

	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="js/myJS.js"></script>
</body>
</html>