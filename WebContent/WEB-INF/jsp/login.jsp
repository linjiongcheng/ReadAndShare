<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>登陆</title>

	<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>

    <div class="container">

		<div class="panel panel-default loginPanel">
			<div class="panel-heading loginHeading">
				<h3 class="loginTitle">用户登陆</h3>
			</div>
			<div class="panel-body loginBody">
				<form:form method="POST" action="/ReadAndShare/loginUser">
					<div class="form-group">
						<input name="phoneNumber" type="tel" class="form-control input-lg" id="inputPhoneNumber" placeholder="您的手机号码" pattern="(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$" required>
					</div>
					<div class="form-group">
						<input name="password" type="password" class="form-control input-lg" id="inputPassword" placeholder="您的密码" required>
					</div>
					<div class="form-group" id="loginButton">
						<button type="submit" class="btn btn-primary btn-lg btn-block">登陆</button>
					</div>
					<p id="registerTip">还没有帐号？ 
					<form:form method="GET" action="/ReadAndShare/redirectToRegister">
						<a id="goToRegister">立即注册！</a></p>
					</form:form>
				</form:form>
			</div>
		</div>

    </div> <!-- /container -->

	<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
</body>
</html>