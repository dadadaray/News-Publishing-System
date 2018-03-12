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
                <span class="am-icon-bell-o"></span> 新文章 <span class="am-badge tpl-badge-danger am-round">2</span></span>
              </a>
              <ul class="am-dropdown-content tpl-dropdown-content">
                <li class="tpl-dropdown-content-external">
                  <h3>你有 <span class="tpl-color-danger">2</span> 条提醒</h3><a href="all_news_back_checking.html">全部</a></li>
                  <li class="tpl-dropdown-list-bdbc"><a href="all_news_back_checking_content.html" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 发来新文章<span>《传达室》</span></a>
                    <span class="tpl-dropdown-list-fr">3小时前</span>
                  </li>
                  <li class="tpl-dropdown-list-bdbc"><a href="all_news_back_checking_content.html" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 发来新文章<span>《传达室》</span></a>
                    <span class="tpl-dropdown-list-fr">3小时前</span>
                  </li>
              </ul>
             </li>
             <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a>
              </li>

                    <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                      <a href="userinfo.html">
                        <span class="tpl-header-list-user-nick">管理员身份</span><span class="tpl-header-list-user-ico"> <img src="assets/img/user01.png"></span>
                      </a>
                    <li><a href="login.html" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
                  </ul>
                </div>
     </header>
     <div class="tpl-page-container tpl-page-header-fixed">


      <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-list">
          <ul class="tpl-left-nav-menu">
            <li class="tpl-left-nav-item">
              <a href="index_back.html" class="nav-link active">
                <i class="am-icon-home"></i>
                <span>首页</span>
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
                  <a href="all_news_back_checking.html">
                    <i class="am-icon-angle-right"></i>
                    <span>待审新文章</span>
                  </a>
                  <a href="all_news_back.html">
                    <i class="am-icon-angle-right"></i>
                    <span>已发布文章</span>
                  </a>
                  <a href="all_news_back_checked.html">
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
            <a href="all_repoter.html">
              <i class="am-icon-angle-right"></i>
              <span>记者用户</span>
            </a>
            <a href="all_users.html">
              <i class="am-icon-angle-right"></i>
              <span>网站用户</span>
            </li>
          </ul>
        </li> 
        <li class="tpl-left-nav-item">
          <a href="login.html" class="nav-link tpl-left-nav-link-list">
            <i class="am-icon-sign-out"></i>
            <span>退出登陆</span>
          </a>
        </li>
    </ul>
  </div>
</div>

          <div class="tpl-content-wrapper">
            <div class="row">
              <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat blue">
                  <div class="visual">
                    <i class="am-icon-comments-o"></i>
                  </div>
                  <div class="details">
                    <div class="number"> 112012 </div>
                    <div class="desc"> 网站浏览量 </div>
                  </div>
                  <a class="more" href=""> 详情查看
                    <i class="m-icon-swapright m-icon-white"></i>
                  </a>
                </div>
              </div>
              <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat red">
                  <div class="visual">
                    <i class="am-icon-bar-chart-o"></i>
                  </div>
                  <div class="details">
                    <div class="number"> 210 </div>
                    <div class="desc"> 新注册用户 </div>
                  </div>
                  <a class="more" href="#"> 详情查看
                    <i class="m-icon-swapright m-icon-white"></i>
                  </a>
                </div>
              </div>
              <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat green">
                  <div class="visual">
                    <i class="am-icon-apple"></i>
                  </div>
                  <div class="details">
                    <div class="number"> 35</div> 
                    <div class="desc"> 待审核文章 </div>
                  </div>
                  <a class="more" href="#"> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                  </a>
                </div>
              </div>
              <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat purple">
                  <div class="visual">
                    <i class="am-icon-android"></i>
                  </div>
                  <div class="details">
                    <div class="number"> 3 </div>
                    <div class="desc"> 今日发布文章 </div>
                  </div>
                  <a class="more" href="#"> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="am-u-md-12 am-u-sm-12 row-mb">
            <div class="tpl-portlet">
              <div class="tpl-portlet-title">
                <div class="tpl-caption font-red ">
                  <i class="am-icon-bar-chart"></i>
                  <span> 文章排行</span>
                </div>
                <div class="actions">
                  <ul class="actions-btn">
                    <li class="purple-on">昨天</li>
                    <li class="green">前天</li>
                    <li class="dark">本周</li>
                  </ul>
                </div>
              </div>
              <div class="tpl-scrollable">
                <div class="number-stats">
                  <div class="stat-number am-fl am-u-md-6">
                    <div class="title am-text-right"> 最热文章 </div>
                    <div class="text_wen am-text-right am-text-warning"> 《守望田野》 </div>
                  </div>
                  <div class="stat-number am-fr am-u-md-6">
                    <div class="title"> 浏览量 </div>
                    <div class="number am-text-success"> 2460 </div>
                  </div>

                </div>

                <table class="am-table tpl-table">
                  <thead>
                    <tr class="tpl-table-uppercase">
                      <th>文章名称</th>
                      <th>作者</th>
                      <th>浏览量</th>
                      <th>评论量</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>《守望田野》</td>
                      <td>
                        <img src="assets/img/user01.png" alt="" class="user-pic">
                        <a class="user-name" href="###">禁言小张</a>
                      </td>

                      <td>65</td>
                      <td class="font-green bold">5005</td>
                    </tr>
                    <tr>
                      <td>《守望田野》</td>
                      <td>
                        <img src="assets/img/user01.png" alt="" class="user-pic">
                        <a class="user-name" href="###">禁言小张</a>
                      </td>

                      <td>65</td>
                      <td class="font-green bold">5005</td>
                    </tr>
                    <tr>
                      <td>《守望田野》</td>
                      <td>
                        <img src="assets/img/user01.png" alt="" class="user-pic">
                        <a class="user-name" href="###">禁言小张</a>
                      </td>

                      <td>65</td>
                      <td class="font-green bold">5005</td>
                    </tr>
                    <tr>
                      <td>《守望田野》</td>
                      <td>
                        <img src="assets/img/user01.png" alt="" class="user-pic">
                        <a class="user-name" href="###">禁言小张</a>
                      </td>

                      <td>65</td>
                      <td class="font-green bold">5005</td>
                    </tr>
                    <tr>
                      <td>《守望田野》</td>
                      <td>
                        <img src="assets/img/user01.png" alt="" class="user-pic">
                        <a class="user-name" href="###">禁言小张</a>
                      </td>

                      <td>65</td>
                      <td class="font-green bold">5005</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>


      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/amazeui.min.js"></script>
      <script src="assets/js/iscroll.js"></script>
      <script src="assets/js/app.js"></script>
      </body>

      </html>