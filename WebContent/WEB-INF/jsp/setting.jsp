<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>用户中心</title>

	<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/setting.css">
</head>
<body>

    <!-- S= 导航条 -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        	<a class="navbar-brand" href="/ReadAndShare/home">Read & Share</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
	          <li><a href="/ReadAndShare/bookShelf?phoneNumber=${phoneNumber}">我的书房</a></li>
	          <li><a href="/ReadAndShare/setting">个人设置</a></li>
			  <li><a href="/ReadAndShare/unregister">注销</a></li>
          </ul>
          <form class="navbar-form navbar-right">
		    <div class="input-group">
		      <input type="text" class="form-control" placeholder="Search for..." id="searchContent">
		      <span class="input-group-btn">
		        <button class="btn btn-default" type="button" id="searchButton">Go</button>
		      </span>
		    </div><!-- /input-group -->
          </form>
        </div>
      </div>
    </nav>
    <!-- E= 导航条 -->

    <div class="container">

      <!-- content here! -->
      <div class="row">

        <!-- S= 标题 -->
        <div class="col-md-10 col-md-offset-1">
          <div class="page-header" id="title">
            <h2>个人中心&nbsp;&nbsp;<small>User setting</small></h2>
          </div>
        </div>
        <!-- E= 标题 -->

        <!-- S= 左侧面板 -->
        <div class="col-md-2 col-md-offset-1">
          <div class="panel panel-default" id="sidebar">
            <div class="panel-body">
              <a href="#" id="goToPhoto" target="_self"><img src="res/img/user_icon.png" alt="..." class="img-responsive img-circle center-block" id="userIcon"></a>
              <a href="#" class="btn btn-default btn-block disabled"  id="goToSetting" target="_self">个人信息</a>
              <a href="#" class="btn btn-default btn-block" id="goToPassword" target="_self">修改密码</a>
            </div>
          </div>
        </div>
        <!-- E= 左侧面板 -->

        <!-- S= 右侧主面板 -->
        <!-- 个人信息 -->
        <div class="col-md-8" id="personalInfo">
          <div class="panel panel-default" id="main-content">
            <div class="panel-heading">
              <h3 class="panel-title">个人信息</h3>
            </div>
            <div class="panel-body">
              <form:form method="POST" action="/ReadAndShare/settingUser" class="form-horizontal">
                <div class="form-group">
                  <label for="inputName" class="col-md-2 control-label">昵称/Name</label>
                  <div class="col-md-10">
                    <input name="name" type="text" class="form-control" id="inputName" placeholder="Name" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-2 control-label">性别/Gender</label>
                  <div class="col-md-10">
                    <label class="radio-inline">
                      <input type="radio" name="inputGender" id="inputGenderBoy" value="男"> 男
                    </label>
                    <label class="radio-inline">
                      <input type="radio" name="inputGender" id="inputGenderGirl" value="女"> 女
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail" class="col-md-2 control-label">邮箱/Email</label>
                  <div class="col-md-10">
                    <input name="email" type="email" class="form-control" id="inputEmail" placeholder="Email">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputWeChat" class="col-md-2 control-label">微信/WeChat</label>
                  <div class="col-md-4">
                    <input name="we_chat" type="text" class="form-control" id="inputWeChat" placeholder="WeChat">
                  </div>
                  <label for="inputQQ" class="col-md-2 control-label">QQ</label>
                  <div class="col-md-4">
                    <input name="qq" type="tel" class="form-control" id="inputQQ" placeholder="QQ" pattern="[1-9][0-9]{4,14}">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputSchool" class="col-md-2 control-label">学校/School</label>
                  <div class="col-md-4">
                    <input name="school" type="text" class="form-control" id="inputSchool" placeholder="School">
                  </div>
                  <label for="inputMajor" class="col-md-2 control-label">专业/Major</label>
                  <div class="col-md-4">
                    <input name="major" type="text" class="form-control" id="inputMajor" placeholder="Major">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputBio" class="col-md-2 control-label">个人简介/Bio</label>
                  <div class="col-md-10">
                    <textarea name="bio" class="form-control" rows="5" id="inputBio" placeholder="Tell a little about yourself"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-md-offset-5 col-md-4">
                    <button type="submit" class="btn btn-default" id="commitInfoChange">确认修改</button>
                    <button type="reset" class="btn btn-default">重置</button>
                  </div>
                </div>
              </form:form>
            </div>
          </div>
        </div>

        <!-- 修改密码 -->
        <div class="col-md-8" id="modifyPassword" style="display: none;">
          <div class="panel panel-default" id="main-content">
            <div class="panel-heading">
              <h3 class="panel-title">修改密码</h3>
            </div>
            <div class="panel-body">
              <form:form method="POST" action="/ReadAndShare/changePassword" class="form-horizontal">
                <div class="form-group">
                  <label for="inputPrePassword" class="col-md-2 control-label">原密码</label>
                  <div class="col-md-10">
                    <input name="oldPassword" type="password" class="form-control" id="inputPrePassword" placeholder="请输入原密码" required>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputNewPassword" class="col-md-2 control-label">新密码</label>
                  <div class="col-md-10">
                    <input name="newPassword1" type="password" class="form-control" id="inputNewPassword" placeholder="请输入新密码" required>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputConfirmPassword" class="col-md-2 control-label">确认密码</label>
                  <div class="col-md-10">
                    <input name="newPassword2" type="password" class="form-control" id="inputConfirmPassword" placeholder="请再次输入新密码" required>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-md-offset-6 col-md-2">
                    <button type="submit" class="btn btn-default" id="commitInfoChange">确认修改</button>
                  </div>
                </div>
              </form:form>
            </div>
          </div>
        </div>

        <!-- 修改头像 -->
        <div class="col-md-8" id="modifyPhoto" style="display: none;">
          <div class="panel panel-default" id="main-content">
            <div class="panel-heading">
              <h3 class="panel-title">修改头像</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div id="bigPhoto" class="img-thumbnail">
                  <img src="img/user_icon.png" alt="..." class="img-responsive img-circle" id="userIcon">
                </div>
                <div id="middlePhoto" class="img-thumbnail">
                  <img src="img/user_icon.png" alt="..." class="img-responsive img-circle" id="userIcon">
                </div>
                <div id="smallPhoto" class="img-thumbnail">
                  <img src="img/user_icon.png" alt="..." class="img-responsive img-circle" id="userIcon">
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <button type="submit" class="btn btn-default" id="uploadPhoto">上传头像</button>
                  <button type="submit" class="btn btn-default" id="commitPhotoChange">确认修改</button>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- E= 右侧主面板 -->

      </div>
      
      <hr>

      <footer>
      <p>&copy; OOAD Team Nine 2017</p>
      
    </footer>
    </div> 

  <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/setting.js"></script>
	<script type="text/javascript" src="js/search.js"></script>
</body>
</html>