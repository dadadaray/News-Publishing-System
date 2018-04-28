<%@ page language="java" contentType="text/html;	charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}/backstage"></c:set>
<!doctype html>
      <html>

      <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>新闻天下发布系统</title>
      <meta name="description" content="这是一个 index 页面">
      <meta name="keywords" content="index">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="renderer" content="webkit">
      <meta http-equiv="Cache-Control" content="no-siteapp" />
      <link rel="icon" type="image/png" href="${ctx}/assets/i/favicon.png">
      <link rel="apple-touch-icon-precomposed" href="${ctx}/assets/i/app-icon72x72@2x.png">
      <meta name="apple-mobile-web-app-title" content="Amaze UI" />
      <link rel="stylesheet" href="${ctx}/assets/css/amazeui.min.css" />
      <link rel="stylesheet" href="${ctx}/assets/css/admin.css">
      <link rel="stylesheet" href="${ctx}/assets/css/app.css">
      <link rel="stylesheet" href="${ctx}/assets/css/mystyle.css">
      <link rel="stylesheet" href="${ctx}/assets/css/xcConfirm.css">
      <script src="${ctx}/assets/js/echarts.min.js"></script>
      </head>

      <body data-type="index">


      <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
          <a href="javascript:;" class="tpl-logo">
            <img src="${ctx}/assets/img/logo.png" alt="">
          </a>
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

          <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
              <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                <span class="am-icon-bell-o"></span> 新文章 <span class="am-badge tpl-badge-danger am-round">2</span></span>
              </a>
              <ul class="am-dropdown-content tpl-dropdown-content">
                <li class="tpl-dropdown-content-external">
                  <h3>你有 <span class="tpl-color-danger">2</span> 条提醒</h3><a href="${ctx}/all_news_back_checking.jsp">全部</a></li>
                  <li class="tpl-dropdown-list-bdbc"><a href="${ctx}/all_news_back_checking_content.jsp" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 发来新文章<span>《传达室》</span></a>
                    <span class="tpl-dropdown-list-fr">3小时前</span>
                  </li>
                  <li class="tpl-dropdown-list-bdbc"><a href="${ctx}/all_news_back_checking_content.jsp" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 发来新文章<span>《传达室》</span></a>
                    <span class="tpl-dropdown-list-fr">3小时前</span>
                  </li>
              </ul>
             </li>
             <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a>
              </li>

                    <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                      <a href="${ctx}/userinfo.jsp">
                        <span class="tpl-header-list-user-nick">管理员身份</span><span class="tpl-header-list-user-ico"> <img src="${ctx}/assets/img/user01.png"></span>
                      </a>
                    </li>
                    <li><a href="${ctx1}/backstage/logOut" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
                  </ul>
                </div>
     </header>
     <div class="tpl-page-container tpl-page-header-fixed">


      <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-list">
          <ul class="tpl-left-nav-menu">
            <li class="tpl-left-nav-item">
              <a href="${ctx}/index_back.jsp" class="nav-link">
                <i class="am-icon-home"></i>
                <span>首页</span>
              </a>
            </li>
           <li class="tpl-left-nav-item">
            <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
              <i class="am-icon-file-text"></i>
              <span>文章管理</span>
              <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
            </a>
            <ul class="tpl-left-nav-sub-menu" style="display:block;">
              <li>
                  <a href="${ctx}/all_news_back_checking.jsp" class="active">
                    <i class="am-icon-angle-right"></i>
                    <span>待审新文章</span>
                  </a>
                  <a href="${ctx}/all_news_back.jsp">
                    <i class="am-icon-angle-right"></i>
                    <span>已发布文章</span>
                  </a>
                  <a href="${ctx}/all_news_back_checked.jsp">
                    <i class="am-icon-angle-right"></i>
                    <span>未通过文章</span>
                  </a>
             </li>
           </ul>
         </li>
        <li class="tpl-left-nav-item">
         <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
          <i class="am-icon-users"></i>
          <span>用户管理</span>
          <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
        </a>
        <ul class="tpl-left-nav-sub-menu">
          <li>
            <a href="${ctx}/all_repoter.jsp">
              <i class="am-icon-angle-right"></i>
              <span>记者用户</span>
            </a>
            <a href="${ctx}/all_users.jsp">
              <i class="am-icon-angle-right"></i>
              <span>网站用户</span>
            </li>
          </ul>
        </li> 
        <li class="tpl-left-nav-item">
          <a href="${ctx1}/backstage/logOut" class="nav-link tpl-left-nav-link-list">
            <i class="am-icon-sign-out"></i>
            <span>退出登陆</span>
          </a>
        </li>
    </ul>
  </div>
</div>

        <div class="tpl-content-wrapper">
            <div class="tpl-portlet-components">
                <div class="portlet-title ">
                    <div class="caption font-green bold ">
                        <span class="am-icon-file-text-o"> </span> 文章详情
                    </div>
                    <div class="border_hr"></div>
                    <!-- 文章内容 -->
                    <div class="tpl-block">
                      <div class="am-g">
                        <div class="am-u-sm-9 center_text2">
                            <!-- 文章开始 -->
                            <div class="inner">
                           <div class="general_content">
                               <div class="main_content" id="con_eye">
                      
                        <div class="separator" style="height:30px;"></div>
                        
                        <article class="block_single_news">
                            <div class="pic_con_sty1">
                             <img class="pic_con_style_tu" src="${ctx}/assets/img/pic_news_post_1.jpg" alt="" />
                            </div>
                            <p class="title">
                                <h1>中国工厂太魔幻：未来每2分钟下线一辆汽车</h1>
                            </p>
                            
                            <div class="info row">
                                <div class="am-u-md-4 am-u-sm-4 date"><p>15 July, 2012</p></div>
                                <div class="am-u-md-4 am-u-sm-4 author"><p>作者: <a href="#">王敏</a></p></div>
                                    
                                <div class="am-u-md-4 am-u-sm-4 r_part">
                                    <a href="#" class="views">0</a>
                                    <a href="#" class="comments">0</a>
                                </div>
                            </div>
                            
                            <div class="content">
                                <p class="text_p">　世界，正处在新科技革命和产业变革的交汇点上。信息化、工业化不断融合，以机器人技术为代表的智能装备产业蓬勃兴起。2017年，中国继续成为全球第一大工业机器人市场，销量突破12万台，约占全球总产量的三分之一。与此同时，中国连续第九年成为全球高端数控机床第一消费大国，全球50%的数控机床装在了中国的生产线上。这一年，中国的人工智能企业总数接近600家，跃升世界第二,小编在这为您梳理中国智造“英雄谱”，相信你看完一定会被它们惊艳↓↓↓</p>
                                <h3>重器：智能制造核心-数字化仿真智能工厂</h3>
                                <p class="text_p"><b>最牛实力：</b>这间数字化仿真工厂，冲压环节的零件加工合格率达到100%，焊装环节的焊点定位合格率达到99.8%，总装环节的装配合格率更是达到100%。工程师们通过在仿真系统中的模拟演练，可以减少人为失误风险，大幅节约制造成本，缩短研发周期。.</p> 
                                <div class="pic_con_sty1"> 
                                    <img class="pic_con_style_tu" src="${ctx}/assets/img/pic_technology_big.jpg" alt="" />
                                </div>
                                       
                                <p class="text_p"><b>重器地位:</b>这是中国第一套全流程汽车仿真生产系统。如今，仿真工厂验收成功，智能工厂投入生产！未来这里每两分钟将有一辆高端家用汽车下线，更多的中国消费者将在价格不变的情况下，享受到性能比肩国外高端品牌的国产汽车。</p> 
                                <h3>重器：传统产业智能制造先锋—起重机转台智能生产线</h3>
                                <p class="text_p"><b>　重器地位：</b>全球起重机行业首条大型结构件智能化生产线，覆盖20余种产品，是多品种、小批量、离散型的传统工业探索智能制造的里程碑.</p> 
                                <p class="text_p">　智能制造时代来临，中国正在涌现一个又一个“智造先锋”，涵盖石化、钢铁、航空、汽车等82个行业。两年来，平均生产效率提高30%，能源利用率提升10%。<a href="#" class="lnk_blue text_a"><b>智能制造时代</b></a>查看恢弘气势</p>  
                                <blockquote class="full">引言样式</blockquote>
                                
                            </div>
                        </article>
                        
                        <div class="separator" style="height:4px;"></div>
                        
                        <div class="block_post_tags">
                            <p>标签: <a href="#">商业,</a><a href="#">股票</a></p>
                        </div>
                    </div>
                </div>
            </div>
                            <!-- 文章结束 -->
                            
                        </div>
                     </div> 
                     <hr>
                       <!-- 审核结果 -->
                       <div class="check_end"> 
                        <button type="button" class="am-btn am-btn-success" id="tzsucc" onclick="sendsuc(this)">通过并发表</button>
                        <button id="failsend" type="button" class="am-btn am-btn-danger">未通过并回复</button>
                       </div>
                       <!-- 审核结束 -->
               </div>
        </div>
    </div>  
    <!-- 审核意见 -->
   <!--  <div class="cdas"> 
        <div class="tpl-portlet-components">
          <div class="portlet-title ">
            <div class="caption font-green bold ">
               <span class="am-icon-file-text-o"> </span> 审核结果
            </div>
          </div>
            <button type="button" class="am-btn am-btn-default">默认样式</button>
            <button type="button" class="am-btn am-btn-primary">主色按钮</button>
            <button type="button" class="am-btn am-btn-secondary">次色按钮</button>
            <button type="button" class="am-btn am-btn-success">绿色按钮</button>
            <button type="button" class="am-btn am-btn-warning">橙色按钮</button>
            <button type="button" class="am-btn am-btn-danger">红色按钮</button>
        </div>
    </div> -->

</div>

</div>

</div>
</div>
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/xcConfirm.js"></script>
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/iscroll.js"></script>
<script src="${ctx}/assets/js/app.js"></script>
</body>

<script type="text/javascript">
  
    // 弹窗
   function sendsuc(e){
      window.wxc.xcConfirm("通过并发表成功了哦！");
   }

   $("#failsend").click(function(){ 
          var txt="";
          window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.textarea,{
            onOk:function(v){
              console.log(v);
            }
          });
        });

</script>

</html>