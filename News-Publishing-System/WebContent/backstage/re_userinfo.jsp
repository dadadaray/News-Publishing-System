<%@ page language="java" contentType="text/html;	charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
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
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/mystyle.css">
    <link rel="stylesheet" href="assets/css/xcConfirm.css">
    <script src="assets/js/echarts.min.js"></script>
</head>

<body data-type="index">


    <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
            <a href="javascript:;" class="tpl-logo">
                <img src="assets/img/logo.png" alt="">
            </a>
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-bell-o"></span> 提醒 <span class="am-badge tpl-badge-success am-round">3</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 
                              <span class="tpl-color-success">3</span> 条消息</h3>
                              <a href="tongzhi.html" class="font-green">全部</a>
                            </li>
                            <li class="tpl-dropdown-list-bdbc" onclick="sendsuc(this)">

                              <a href="#" class="tpl-dropdown-list-fl">
                                <span class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-success"></span> 
                                <span>《从大城市的》<span>需要修改
                              </a>
                                <span class="tpl-dropdown-list-fr">3小时前</span>
                            </li>
                            <li class="tpl-dropdown-list-bdbc" onclick="sendsuc(this)">
                              <a href="#" class="tpl-dropdown-list-fl">
                                <span class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-danger"></span>
                                 <span>《从大城市的》<span>审核通过
                            </a>
                                <span class="tpl-dropdown-list-fr">15分钟前</span>
                            </li>
                            <li class="tpl-dropdown-list-bdbc" onclick="sendsuc(this)">
                                <a href="#" class="tpl-dropdown-list-fl">
                                    <span class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-warning"></span> 
                                     <span>《从大城市的》<span>成为推荐文章 
                                </a>
                                <span class="tpl-dropdown-list-fr">2天前</span>
                            </li>
                        </ul>
                    </li>
                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a href="userinfo.html">
                        <span class="tpl-header-list-user-nick">编辑记者身份</span><span class="tpl-header-list-user-ico"> <img src="assets/img/user01.png"></span>
                    </a>
                </li>
                <li>
                  <a href="login.html" class="tpl-header-list-link">
                    <span class="am-icon-sign-out tpl-header-list-ico-out-size"></span>
                  </a>
                </li>
            </ul>
        </div>
    </header>
    <div class="tpl-page-container tpl-page-header-fixed">
        <div class="tpl-left-nav tpl-left-nav-hover"><!-- 列表 -->
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="index.html" class="nav-link">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="add_news.html" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-pencil-square"></i>
                            <span>添加新文章</span>
                        </a>
                    </li>
                     <li class="tpl-left-nav-item">
                        <a href="tongzhi.html" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-bell"></i>
                            <span>通知管理</span>
                            <i class="tpl-left-nav-content tpl-badge-danger">
                               12
                           </i>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="draft.html" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-inbox"></i>
                            <span>草稿箱</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-file-text"></i>
                            <span>文章管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="all_news.html">
                                   <i class="am-icon-angle-right"></i>
                                    <span>发表文章</span>
                                </a>
                                <a href="all_news_checking.html">
                                   <i class="am-icon-angle-right"></i>
                                    <span>审核中列表</span>
                                 </a>

                                <a href="all_news_checked.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>未通过类表</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                            <i class="am-icon-user"></i>
                            <span>个人中心</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display:block;">
                            <li>
                                <a href="userinfo.html">
                                   <i class="am-icon-angle-right"></i>
                                    <span>个人资料</span>
                                </a>
                                <a href="re_userinfo.html" class="active">
                                   <i class="am-icon-angle-right"></i>
                                    <span>完善信息</span>
                                 </a>

                                <a href="login.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>退出登录</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
         <div class="tpl-content-wrapper">
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-pencil"></span> 完善信息
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                        </div>
                    </div>


                </div>
                <div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">


                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">头像 / image</label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                                <div class="tpl-form-file-img " id="tpl-form-file-img-tou">
                                                <img src="assets/img/user01.png" width="200" height="200">
                                                 </div>
                                               <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                                <i class="am-icon-cloud-upload"></i> 上传头像</button>
                                                <input id="doc-form-file" type="file" multiple>
                                            </div>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">用户名 / Name</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-name" placeholder="用户名 / Name">
                                        <small>输入你的用户名，让我们记住你。</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">电子邮件 / Email</label>
                                    <div class="am-u-sm-9">
                                        <input type="email" name="useremailform" id="user-email" placeholder="输入你的电子邮件 / Email">
                                        <small>邮箱你懂得...</small>
                                    </div>                                
                                </div>
                                <div class="warninfo3" style="margin-left: 200px; margin-top: -10px;"><div class="am-alert am-btn am-btn-danger" data-am-alert>
                                <button type="button" class="am-close">&times;</button>
                                <p style="color:#000">输入正确的邮箱格式吆！</p>
                               </div></div>
                                

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">电话 / Telephone</label>
                                    <div class="am-u-sm-9">
                                        <input type="tel" id="user-phone" placeholder="输入你的电话号码 / Telephone">
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">职业信条 / creed</label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="5" id="user-intro" placeholder="输入职业信条(少于250个字)" maxlength="250" required></textarea>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">简介 / Intro</label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="5" id="user-intro" placeholder="输入个人简介(少于250个字)" maxlength="250" required=""></textarea>
                                    
                                    </div>
                                </div>
                                

                                
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="button" class="am-btn am-btn-primary">保存修改</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/xcConfirm.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/iscroll.js"></script>
<script src="assets/js/app.js"></script>
<script type="text/javascript">
    //弹窗
    function sendsuc(e){
        var txt=e.innerText;
        window.wxc.xcConfirm(txt);
    }
</script>
</body>

</html>