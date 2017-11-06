<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>书房</title>

<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bookshelf.css">

</head>
<body>
	<div class="container">
		<!-- S= 导航条 -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Read & Share</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">我的书房</a></li>
						<li><a href="#">个人设置</a></li>
					</ul>
					<form class="navbar-form navbar-right">
						<input type="text" class="form-control" placeholder="Search">
					</form>
				</div>
			</div>
		</nav>
		<!-- E= 导航条 -->

		<div class="row">
			<div class="col-md-12">
				<div class="page-header" id="title">
					<h1>&nbsp;&nbsp;&nbsp;&nbsp;书房</h1>
				</div>
			</div>
		</div>
		<div class="bookshelfContainer ">
			<!--左侧导航栏-->
			<div class="myMenu">
				<a href="#" target="_self"><img class="img-thumbnail"
					src="res/img/user_icon.png" alt="..."> </a>
				<div class="caption">

					<p class="text-center">

				林炯程

					</p>
				</div>
				<div class="friend">
					<h4 class="text-left ">
						<b>好友书房</b>
					</h4>

					<ul class="nav navbar-default  nav-stacked booklist"
						role="navigation">
						<li role="presentation" class="active "><a class="bookitem"
							href="friendsBookshelf.html?id=黄思彬">黄思彬</a></li>
						<li role="presentation"><a class="bookitem" href="#">马乙凯</a></li>

					</ul>
				</div>
			</div>
			<!--左侧导航栏-->
			<div class="bookContent">
				<nav class="navbar navbar-default  bookHead">

					<ul id="bookTab" class="nav navbar-nav navbar-tabs">
						<li class="active"><a href="#like" data-toggle="tab">我喜欢的书</a></li>

						<li><a href="#modern" data-toggle="tab">现代言情</a></li>
					</ul>


					<ul class="nav navbar-nav navbar-right">

						<li role="presentation" class="dropdown"><a
							class="dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false"> 更多<span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu dropdown-menu-left ">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									data-toggle="tab" href="#null">游戏人生</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									data-toggle="tab" href="#null">现代言情</a></li>
							</ul></li>

					</ul>
				</nav>
				<div class="tab-content">
				<div class="tab-content">
					<div class="row bookBody tab-pane fade  " id="null">
					</div>
					<div class="row bookBody tab-pane fade in active " id="like">
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book1.png">
							</a>
						</div>
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book2.png">
							</a>
						</div>
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail "> <img src="res/img/book3.png">
							</a>
						</div>
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book4.png">
							</a>
						</div>
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book5.png">
							</a>
						</div>
					</div>
					<div class="row bookBody tab-pane fade" id="modern">
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book6.png">
							</a>
						</div>
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book7.png">
							</a>
						</div>
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book8.png">
							</a>
						</div>
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book9.png">
							</a>
						</div>
						<div class="col-xs-3 col-md-3 ">
							<a href="#" class="thumbnail"> <img src="res/img/book5.png">
							</a>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	</div>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bookshelf.js"></script>
</body>
</html>