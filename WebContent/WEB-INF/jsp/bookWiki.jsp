<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>书籍百科</title>

	<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/bookwiki.css">

  <style>
  ul{margin:0;padding:0;}
  li{list-style:none;}
/*  .box{margin:10px auto;}*/
  .box .img{float:left;}
  .box .img img{width:200px;height:250px;}
  .box .list{float:left;width:340px;margin-left:20px;display:inline;}
  .box .list li{line-height:24px;font-size:14px;}
  .list li span{font-weight:bold;}
  </style>

  <style type="text/css">  
  #bg{  
      width: 60px;  
      height: 16px;  
      background: url("res/img/star_gray.png");  
  }  
  #over{  
      height:16px;  
      background:url("res/img/star_org.png") no-repeat;  
  }  
  </style>  
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
  <br><br>

  <div class="container">
    <!-- content here! -->
    <div class="row">
      <div class="col-md-12">
        <div class="page-header" id="title">
          <h2>书籍百科&nbsp;&nbsp;</h2>
        </div>
      </div>
    </div>

    <div class="row">
    <div class="col-md-12">
      <div class="col-md-8">

        <h3>巴格达警报&nbsp;&nbsp;</h3>

        <div class="box">
          <div class="img">
              <img src="res/img/book.jpg" alt="" />
          </div>

          <ul class="list">
              <li><span>作者：</span>[阿尔及利亚] 雅斯米纳·卡黛哈</li>
              <li><span>出版社: </span>理想国 | 学林出版社</li>
              <li><span>原作名: </span>Les sirènes de Bagdad</li>
              <li><span>译者: </span>陈姿颖</li>
              <li><span>出版年: </span>2017-4-1</li>
              <li><span>页数：</span>269</li>
              <li><span>定价: </span>36.00元</li>
              <li><span>ISBN：</span>9787548611844</li> 
              <li><span>评分：</span>8.9</li>
              <div id="bg"><!--这里是背景，也就是灰色的星星-->

                    <!--说明，这里的width就是设置分数啦，以我写的为例，一个星星的长度是12px，也就是1分12px，如果是4.3分，就是4.3*12px = 51.6px的长度，当然这个一般是取得数据后用js或者其他模板语言去控制的-->  
                <div id="over" style="width:53.4px"></div><!--这里是遮罩，设置宽度以达到评分的效果-->  
              </div>
              
          </ul>

        </div>
      </div>

      
      <div class="box col-md-3">
        <br>
        <ul class="list-group list">

          <li class="list-group-item">
            <span class="badge">14</span>
            阅读数
          </li>
          <li class="list-group-item">
            <span class="badge">10</span>
            书评数
          </li>
          <li class="list-group-item">
            <span class="badge">11</span>
            回答问题数
          </li>
          <li class="list-group-item">
            <span class="badge">13</span>
            点赞数
          </li>
          <li class="list-group-item">
              赞一个
              <span class="glyphicon glyphicon-heart-empty" aria-hidden="true"  id="like"></span>
          </li>
          <li class="list-group-item">
            评价
            <div id="bg"><!--这里是背景，也就是灰色的星星-->
            <!--说明，这里的width就是设置分数啦，以我写的为例，一个星星的长度是12px，也就是1分12px，如果是4.3分，就是4.3*12px = 51.6px的长度，当然这个一般是取得数据后用js或者其他模板语言去控制的-->  
                <div id="over" style="width:0px"></div><!--这里是遮罩，设置宽度以达到评分的效果-->
            </div>                
          </li>

        </ul>              
      </div>
    </div>
    </div>
      <!-- <img src="img/book.jpg" alt="Responsive image" class="img-responsive" id="userIcon"> -->

    <br>
    <div class="col-md-12">
      <h4>标签</h4>
      <div class="container">
        <div class="hero-unit">
            <span class="label label-default">战争</span>
            <span class="label label-default">阿尔及利亚</span>
            <span class="label label-default">人性</span>
            <span class="label label-default">文学</span>
            <span class="label label-default">小说</span>
            <span class="label label-default">理想国</span>
        </div>    
      </div>
      <br>
    </div>  
    

    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">作者介绍</h3>
        </div>
        <div class="panel-body">
          <p>作者|雅斯米纳•卡黛哈（Yasmina Khadra），本名穆罕默德•莫莱赛奥（Mohamed Moulessehoul），1955年生于阿尔及利亚，长期在军队中担任军官。他18岁开始出版小说，深受好评。阿尔及利亚内战期间，他为了躲避军方对书籍的审查，采用妻子的名字“雅斯米纳•卡黛哈”作为笔名。2001年，他离开阿尔及利亚军队迁居法国，公布了真实身份，但继续使用这个女性笔名，以表达对妻子的感激，以及对所有阿拉伯女性的敬意。雅斯米纳•卡黛哈的作品深切关注世界各地的政治和军事冲突，代表作为“当代东方三部曲”：《喀布尔之燕》（Les Hirondelles de Kaboul）、《哀伤的墙》（L'Attentat）、《巴格达警报》（Les sirènes de Bagdad）。</p>
          <p>译者|陈姿颖，英语、法语专职译者，译有《视觉工厂：图像诞生的关键故事》、《自慰：恐惧的历史》、《神谕之谜》、《从科学到想象》（合译）、《路易威登：传奇旅行箱100》（合译）等书。</p>
        </div>
      </div>
    </div>
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">书籍介绍</h3>
        </div>
        <div class="panel-body">
          <p>★从战火中走出的军官作家，写下关于战争、人性与尊严的震撼之作，畅销三十余国：“要是朝着光明走，就不会孤独。”</p>
          <p>★在废墟般的巴格达，年轻人将如何面对废墟般的人生？</p>
          <p>★当代罕见的作家雅斯米纳•卡黛哈，曾是阿尔及利亚军官，退役后直面误解与暴力之源：“我在部队被当成怪物，因为我是个诗人；如今文学界的人也把我当成怪物，因为我曾是军人。”</p>
          <p>★以妻子之名写作，向所有阿拉伯女性致敬：“我用妻子的名字当笔名，就像是戴上了桂冠。”</p>
          <p>★关注冲突与战乱中的普通人，解答“这个世界怎么了”。</p>
          <p>【故事梗概】
          年轻的男孩来到首都巴格达。大学生活刚刚开始，美军的炮火却骤然降临。他被迫离开曾经繁华的都市和一见倾心的姑娘，返回沙漠深处的贫穷村落。然而战争紧追不舍，美军在深夜突袭这纯朴的村落，为了搜捕恐怖分子，在惊慌的家人面前杀害并羞辱了他的父亲。当尊严也散落一地的时候，年轻人只身离开家乡前往巴格达，寻求终极报复。
          雅斯米纳•卡黛哈在小说中，以热忱而悲悯的笔调还原了剧烈变化中的伊拉克社会，并借主角的经历表明，即使在最恶劣的环境中，人性之美仍能战胜极端主义，主宰世界的不会是仇恨，而是爱与希望。</p>
          <p>【媒体评论】</p>
          <p>罕见的文学作家，为当今的苦难赋予了意义。——《新闻周刊》</p>
          <p>这个故事有着纪录片式的细节……充满警示性，如同真实的历史一般。——《纽约时报》</p>
          <p>作者没有给出答案，而是以精妙的技艺让读者去观察和理解。—— 《观点》</p>
          <p>雅斯米纳•卡黛哈的小说刚刚出版时，法国文学界以为发现了来自阿拉伯女性的声音。但作者实际上是个男人……他极为专业地还原了一座气氛癫狂、被任意毁坏的城市。——《卫报》</p>
          <p>扭曲的动作场面，情绪的微妙转折和栩栩如生、废墟般的巴格达场景，赋予这本小说生命。——《独立报》</p>
          <p>《巴格达警报》令人震惊，同时也给我们真正的启发。关于一个国家如何在可怕的环境下求生、一个正常人如何在目睹无法想象的恐怖中崩溃，它提供了难得的见解。——《泰晤士报》</p>
          <p>【精彩选摘】</p>
          <p>★生命不过是一场疯狂的赌注，选择死亡的方式，才是唯一弥补损失的办法。</p>
          <p>★要是朝着光明走，就不会孤独。</p>
          <p>★我留下了什么，又带走了什么？我的回忆没有了我，是否能好好存在？</p>
          <p>★一切都完了！这一幕就是终点，就是结束，接下来只有无尽的坠落、虚空。部族所有的神话、世上所有的传说，还有天上的星辰，全都失去了光彩。太阳依旧会升起，但对我来说，白日或黑夜已再无任何差别。</p>
        </div>
      </div>
    </div>

      <div class="col-md-12">
        <div class="page-header">
          <h3>书评&nbsp;&nbsp;</h3>
        </div>
      </div>

      <div class="col-md-9">
          <ul class="media-list">
              <li class="media">
                  <div class="media-left">
                      <a href="#">
                          <img class="media-object img-circle" src="res/img/a.png" alt="广丰">
                      </a>
                  </div>
                  <div class="media-body">
                      <h4 class="media-heading">风往北吹</h4>

                      <p>阿加莎•克里斯蒂在二战后怀念起她曾去过的叙利亚时说，“我爱那片平静肥沃的土地和土地上纯朴的人们，他们知道如何大笑和享受生活，他们悠闲快活，他们有尊严、有礼貌、有幽默细胞，且不畏死亡。”而与曾经的乐土叙利亚同为阿拉伯国家的伊拉克，更是世界奇迹巴比伦空中花园...</p>

                      <div class="ds-comment-footer">
                          <span class="ds-time" datetime="2016-01-28T20:13:29+08:00" title="2016年1月28日 下午8:13:29">2016年1月28日</span>&nbsp;
                          <a>
                              <span class="glyphicon glyphicon-heart-empty" aria-hidden="true" id="like1"></span> 赞
                          </a>
                      </div>
                      <hr/>
                  </div>
              </li>
             
              <li class="media">
                  <div class="media-left">
                      <a href="#">
                          <img class="media-object img-circle" src="res/img/c.png" alt="菜鸟">
                      </a>
                  </div>
                  <div class="media-body">
                      <h4 class="media-heading">菜鸡一枚我不哭</h4>

                      <p>任何一个时代，既具有繁花似锦的光明面，同样也具有污浊不堪的阴暗面。我们生活的世界，就是光明与阴暗交织的战场。有良知的作家，能够刺破浮夸的生活表象下隐藏的鲜血淋漓的真实，以反思和悲悯之心唤起读者心中的共鸣。</p>

                      <div class="ds-comment-footer">
                          <span class="ds-time" datetime="2016-01-28T20:13:29+08:00" title="2016年1月28日 下午8:13:29">2016年5月10日</span>&nbsp;
                          <a>
                              <span class="glyphicon glyphicon-heart-empty" aria-hidden="true" id="like2"></span> 赞
                          </a>
                      </div>
                  </div>
              </li>
          <hr/>
          <div class="form-group">
            <span class="input input--isao">
            <input placeholder="评论内容" class="input__field input__field--isao" type="text" id="input-38">
            <label class="input__label input__label--isao" for="input-38">
                          <span class="input__label-content input__label-content--isao"></span>
                      </label>
                      <a id="addcommentbutton" type="button" class="btn btn-primary btn-block ladda-button" title=""
                           data-style="expand-right" data-original-title="评论">
                      <span class="ladda-label">
                        提交评论
                      </span>
                      </a>
            </span>
          </div>
      </div>

      <div class="col-md-3"></div>
  


    <div class="col-md-12">
      <nav aria-label="...">
        <ul class="pagination">
          <li class="disabled">
            <span>
              <span aria-hidden="true">&laquo;</span>
            </span>
          </li>
          <li class="active">
            <span>1 <span class="sr-only">(current)</span></span>
          </li>
          <li>
            <a href="#">2 <span class="sr-only"></span></a>
          </li>
          <li>
            <a href="#">3 <span class="sr-only"></span></a>
          </li>
          <li>
            <a href="#">4 <span class="sr-only"></span></a>
          </li>
          <li>
            <a href="#">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
      <hr>
      <footer style="padding: 30px 0;">
        <p>&copy; OOAD Team Nine 2017</p>
      </footer>      
    </div> 

  </div> 
          

  
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>

  <script type="text/javascript" src="js/bookwiki.js"></script>
	<script type="text/javascript" src="js/search.js"></script>
</body>
</html>