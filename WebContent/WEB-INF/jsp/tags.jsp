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
</head>
<body>

    <div class="container">

      <!-- content here! -->
      <div class="row">

        <!-- S= 标题 -->
        <div class="col-md-10 col-md-offset-1">
          <div class="page-header" id="title">
            <h2>选择感兴趣的书籍类型&nbsp;&nbsp;<small>Book Type</small></h2>
          </div>
        </div>
        <!-- E= 标题 -->

        <div class="col-md-10 col-md-offset-1">
          <h3><span class="label label-default" >文学</span></h3>
        </div>  

         <div class="col-md-10 col-md-offset-1">
          <a class="btn btn-default" role="button">小说</a>
          <a class="btn btn-default" role="button">外国文学</a>
          <a class="btn btn-default" role="button">文学</a>
          <a class="btn btn-default" role="button">随笔</a>
          <a class="btn btn-default" role="button">中国文学</a>
          <a class="btn btn-default" role="button">经典</a>
          <a class="btn btn-default" role="button">日本文学</a>
          <a class="btn btn-default" role="button">散文</a>
          <br></br>
          <a class="btn btn-default" role="button">诗歌</a>
          <a class="btn btn-default" role="button">童话</a>
          <a class="btn btn-default" role="button">名著</a>
          <a class="btn btn-default" role="button">儿童文学</a>
          <a class="btn btn-default" role="button">当代文学</a>
          <a class="btn btn-default" role="button">外国名著</a>
        </div>


        <div class="col-md-10 col-md-offset-1">
          <h3><span class="label label-default" >流行</span></h3>
        </div>  

         <div class="col-md-10 col-md-offset-1">
          <a class="btn btn-default" role="button">漫画</a>
          <a class="btn btn-default" role="button">绘本</a>
          <a class="btn btn-default" role="button">推理</a>
          <a class="btn btn-default" role="button">青春</a>
          <a class="btn btn-default" role="button">言情</a>
          <a class="btn btn-default" role="button">科幻</a>
          <a class="btn btn-default" role="button">悬疑</a>
          <a class="btn btn-default" role="button">武侠</a>
          <br></br>
          <a class="btn btn-default" role="button">奇幻</a>
          <a class="btn btn-default" role="button">校园</a>
          <a class="btn btn-default" role="button">轻小说</a>
          <a class="btn btn-default" role="button">魔幻</a>
          <a class="btn btn-default" role="button">推理小说</a>
          <a class="btn btn-default" role="button">穿越</a>
        </div>

        <div class="col-md-10 col-md-offset-1">
          <h3><span class="label label-default" >文化</span></h3>
        </div>  

        <div class="col-md-10 col-md-offset-1">
          <a class="btn btn-default" role="button">历史</a>
          <a class="btn btn-default" role="button">心理学</a>
          <a class="btn btn-default" role="button">哲学</a>
          <a class="btn btn-default" role="button">传记</a>
          <a class="btn btn-default" role="button">社会学</a>
          <a class="btn btn-default" role="button">文化</a>
          <a class="btn btn-default" role="button">艺术</a>
          <a class="btn btn-default" role="button">设计</a>
          <br></br>
          <a class="btn btn-default" role="button">建筑</a>
          <a class="btn btn-default" role="button">政治</a>
          <a class="btn btn-default" role="button">宗教</a>
          <a class="btn btn-default" role="button">电影</a>
          <a class="btn btn-default" role="button">音乐</a>
          <a class="btn btn-default" role="button">戏剧</a>
          <a class="btn btn-default" role="button">军事</a>
          <a class="btn btn-default" role="button">绘画</a>
          <a class="btn btn-default" role="button">近代史</a>
        </div>

        <div class="col-md-10 col-md-offset-1">
          <h3><span class="label label-default" >生活</span></h3>
        </div>  

        <div class="col-md-10 col-md-offset-1">
          <a class="btn btn-default" role="button">爱情</a>
          <a class="btn btn-default" role="button">旅行</a>
          <a class="btn btn-default" role="button">成长</a>
          <a class="btn btn-default" role="button">励志</a>
          <a class="btn btn-default" role="button">心理</a>
          <a class="btn btn-default" role="button">摄影</a>
          <a class="btn btn-default" role="button">女性</a>
          <a class="btn btn-default" role="button">职场</a>
          <br></br>
          <a class="btn btn-default" role="button">美食</a>
          <a class="btn btn-default" role="button">政治</a>
          <a class="btn btn-default" role="button">教育</a>
          <a class="btn btn-default" role="button">游记</a>
          <a class="btn btn-default" role="button">健康</a>
          <a class="btn btn-default" role="button">情感</a>
          <a class="btn btn-default" role="button">养生</a>
          <a class="btn btn-default" role="button">两性</a>
        </div>

        <div class="col-md-10 col-md-offset-1">
          <h3><span class="label label-default" >经管</span></h3>
        </div>  

        <div class="col-md-10 col-md-offset-1">
          <a class="btn btn-default" role="button">经济学</a>
          <a class="btn btn-default" role="button">管理</a>
          <a class="btn btn-default" role="button">商业</a>
          <a class="btn btn-default" role="button">金融</a>
          <a class="btn btn-default" role="button">投资</a>
          <a class="btn btn-default" role="button">营销</a>
          <a class="btn btn-default" role="button">创业</a>
          <a class="btn btn-default" role="button">理财</a>
          <br></br>
          <a class="btn btn-default" role="button">广告</a>
          <a class="btn btn-default" role="button">股票</a>
          <a class="btn btn-default" role="button">企业史</a>
          <a class="btn btn-default" role="button">策划</a>
        </div>

        <div class="col-md-10 col-md-offset-1">
          <h3><span class="label label-default" >科技</span></h3>
        </div>  

        <div class="col-md-10 col-md-offset-1">
          <a class="btn btn-default" role="button" onclick="background-color:yellow">科普</a>
          <a class="btn btn-default" role="button">互联网</a>
          <a class="btn btn-default" role="button">编程</a>
          <a class="btn btn-default" role="button">科学</a>
          <a class="btn btn-default" role="button">交互设计</a>
          <a class="btn btn-default" role="button">用户体验</a>
          <a class="btn btn-default" role="button">算法</a>
          <a class="btn btn-default" role="button">web</a>
          <br></br>
          <a class="btn btn-default" role="button" onclick="background:yellow">科技</a>
          <a class="btn btn-default" role="button">UE</a>
          <a class="btn btn-default" role="button">通信</a>
          <a class="btn btn-default" role="button">交互</a>
          <a class="btn btn-default" role="button">UCD</a>
          <a class="btn btn-default" role="button">神经网络</a>
          <a class="btn btn-default" role="button">程序</a>
        </div>

        <div class="col-md-10 col-md-offset-1">
          <br><br><br>
          <a href="/ReadAndShare/updateTags"><button type="button" class="btn btn-lg btn-success center" active id="finishSelect">完成选择</button></a>
          <br><br><br>
        </div>

    </div>
    
	<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/tags.js"></script>
  
</body>
</html>