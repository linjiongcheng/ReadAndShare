<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>以书会友</title>

	<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/home.css">
</head>
<body>

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

  <div class="container">

    <div class="row row-offcanvas row-offcanvas-right">

      <div class="col-xs-12 col-sm-9" id="content">
        <p class="pull-right visible-xs">
          <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">查看书友</button>
        </p>

        <div class="jumbotron">
          <h1>欢迎回来，用户9527</h1>
          <p>This is an example to show the potential of an offcanvas layout pattern in Bootstrap. Try some responsive-range viewport sizes to see it in action.</p>
        </div>

        <ul class="nav nav-tabs">
          <li role="presentation" class="tag active" title="recBooks"><a href="#">热门推荐</a></li>
          <li role="presentation" class="tag" title="ranking"><a href="#">排行榜</a></li>
        </ul>

        <div class="row" id="recBooks">

          <div class="col-md-3 recBook">
            <div class="thumbnail recThumbnail">
              <img src="res/img/book1.jpg" style="height: 200px; padding-top: 9px;">
              <div class="caption recCaption">
                <a href="/ReadAndShare/bookWiki?isbn=123456"><strong>冰下的人</strong></a>
                <p>侯磊</p>
              </div>
            </div>
          </div><!--/.col-md-3-->
          <div class="col-md-3 recBook">
            <div class="thumbnail recThumbnail">
              <img src="res/img/book2.jpg" style="height: 200px; padding-top: 9px;">
              <div class="caption recCaption">
                <a href="#"><strong>时间的果</strong></a>
                <p>黎戈</p>
              </div>
            </div>
          </div><!--/.col-md-3-->
          <div class="col-md-3 recBook">
            <div class="thumbnail recThumbnail">
              <img src="res/img/book3.jpg" style="height: 200px; padding-top: 9px;">
              <div class="caption recCaption">
                <a href="#"><strong>黄金时代</strong></a>
                <p>王小波</p>
              </div>
            </div>
          </div><!--/.col-md-3-->
          <div class="col-md-3 recBook">
            <div class="thumbnail recThumbnail">
              <img src="res/img/book4.jpg" style="height: 200px; padding-top: 9px;">
              <div class="caption recCaption">
                <a href="#"><strong>姥姥语录</strong></a>
                <p>倪萍</p>
              </div>
            </div>
          </div><!--/.col-md-3-->
          <div class="col-md-3 recBook">
            <div class="thumbnail recThumbnail">
              <img src="res/img/book5.jpg" style="height: 200px; padding-top: 9px;">
              <div class="caption recCaption">
                <a href="#"><strong>智能革命</strong></a>
                <p>李彦宏</p>
              </div>
            </div>
          </div><!--/.col-md-3-->
          <div class="col-md-3 recBook">
            <div class="thumbnail recThumbnail">
              <img src="res/img/book6.jpg" style="height: 200px; padding-top: 9px;">
              <div class="caption recCaption">
                <a href="#"><strong>世界的凛冬</strong></a>
                <p>肯·福莱特</p>
              </div>
            </div>
          </div><!--/.col-md-3-->
          <div class="col-md-3 recBook">
            <div class="thumbnail recThumbnail">
              <img src="res/img/book7.jpg" style="height: 200px; padding-top: 9px;">
              <div class="caption recCaption">
                <a href="#"><strong>被仰望与被遗忘的</strong></a>
                <p>盖伊·特立斯</p>
              </div>
            </div>
          </div><!--/.col-md-3-->
          <div class="col-md-3 recBook">
            <div class="thumbnail recThumbnail">
              <img src="res/img/book8.jpg" style="height: 200px; padding-top: 9px;">
              <div class="caption recCaption">
                <a href="#"><strong>恋情的终结</strong></a>
                <p>格雷厄姆·格林</p>
              </div>
            </div>
          </div><!--/.col-md-3-->

        </div><!--/row-->

        <div class="ranking" id="ranking" style="display: none;">

          <div class="row rankBook">
            <div class="col-md-1 rank">
              <p>1</p>
            </div>
            <div class="col-md-2">
              <img src="res/img/book1.jpg" style="width:120px; height: 200px; padding-top: 10px;">
            </div>
            <div class="col-md-9 rankingContent">
              <strong><a href="#">冰下的人</a></strong>
              <p>侯磊</p>
              <p>本书是青年作家侯磊的中短篇小说集。小说以北京当代中下层人的生活为主，展现了人在生活中的困境与无奈，以及人在社会变迁中的命运与挣扎。如《少年色晃儿》，写九十年代北京不良少年；《积极分子》写街道居委会大妈；《女司机》写女性的出租司机； 作者多年从事编辑工作，写过诗，搞过文史，现就读于中国人民大学文学院创造性写作专业，跟随阎连科、刘震云、梁鸿、张悦然等名师学习小说创作。</p>
            </div>
          </div>

          <div class="row rankBook">
            <div class="col-md-1 rank">
              <p>2</p>
            </div>
            <div class="col-md-2">
              <img src="res/img/book2.jpg" style="width:120px; height: 200px; padding-top: 10px;">
            </div>
            <div class="col-md-9 rankingContent">
              <strong><a href="#">冰下的人</a></strong>
              <p>侯磊</p>
              <p>本书是青年作家侯磊的中短篇小说集。小说以北京当代中下层人的生活为主，展现了人在生活中的困境与无奈，以及人在社会变迁中的命运与挣扎。如《少年色晃儿》，写九十年代北京不良少年；《积极分子》写街道居委会大妈；《女司机》写女性的出租司机； 作者多年从事编辑工作，写过诗，搞过文史，现就读于中国人民大学文学院创造性写作专业，跟随阎连科、刘震云、梁鸿、张悦然等名师学习小说创作。</p>
            </div>
          </div>

          <div class="row rankBook">
            <div class="col-md-1 rank">
              <p>3</p>
            </div>
            <div class="col-md-2">
              <img src="res/img/book3.jpg" style="width:120px; height: 200px; padding-top: 10px;">
            </div>
            <div class="col-md-9 rankingContent">
              <strong><a href="#">冰下的人</a></strong>
              <p>侯磊</p>
              <p>本书是青年作家侯磊的中短篇小说集。小说以北京当代中下层人的生活为主，展现了人在生活中的困境与无奈，以及人在社会变迁中的命运与挣扎。如《少年色晃儿》，写九十年代北京不良少年；《积极分子》写街道居委会大妈；《女司机》写女性的出租司机； 作者多年从事编辑工作，写过诗，搞过文史，现就读于中国人民大学文学院创造性写作专业，跟随阎连科、刘震云、梁鸿、张悦然等名师学习小说创作。</p>
            </div>
          </div>

          <div class="row rankBook">
            <div class="col-md-1 rank">
              <p>4</p>
            </div>
            <div class="col-md-2">
              <img src="res/img/book4.jpg" style="width:120px; height: 200px; padding-top: 10px;">
            </div>
            <div class="col-md-9 rankingContent">
              <strong><a href="#">冰下的人</a></strong>
              <p>侯磊</p>
              <p>本书是青年作家侯磊的中短篇小说集。小说以北京当代中下层人的生活为主，展现了人在生活中的困境与无奈，以及人在社会变迁中的命运与挣扎。如《少年色晃儿》，写九十年代北京不良少年；《积极分子》写街道居委会大妈；《女司机》写女性的出租司机； 作者多年从事编辑工作，写过诗，搞过文史，现就读于中国人民大学文学院创造性写作专业，跟随阎连科、刘震云、梁鸿、张悦然等名师学习小说创作。</p>
            </div>
          </div>

        </div>

      </div><!--/.col-xs-12.col-sm-9-->

      <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
        <p>我的书友</p>
        <div class="list-group">

          <a href="/ReadAndShare/bookShelf?phoneNumber=13000000000" class="list-group-item">
            <div class="row">
              <div class="col-xs-6 col-md-4">
                <img src="res/img/friend.jpg" class="img-rounded img-responsive">
              </div>
              <div class="col-xs-12 col-md-8">
                <p><strong>贺冰新</strong></p>
                <p><small>这里显示一些信息</small></p>
              </div>
            </div>
          </a>

          <a href="/ReadAndShare/bookShelf?phoneNumber=13000000001" class="list-group-item">
            <div class="row">
              <div class="col-xs-6 col-md-4">
                <img src="res/img/friend2.jpg" class="img-rounded img-responsive">
              </div>
              <div class="col-xs-12 col-md-8">
                <p><strong>郭柏鹭</strong></p>
                <p><small>这里显示一些信息</small></p>
              </div>
            </div>
          </a>

          <a href="#" class="list-group-item">
            <p align="center">...</p>
          </a>

        </div>
      </div><!--/.sidebar-offcanvas-->
    </div><!--/row-->

    <hr>
    <footer>
      <p>&copy; OOAD Team Nine 2017</p>
    </footer>
  </div> 

	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/search.js"></script>
	<script type="text/javascript" src="js/home.js"></script>
</body>
</html>