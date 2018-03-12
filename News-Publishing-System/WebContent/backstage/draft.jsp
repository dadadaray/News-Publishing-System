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
                        <a href="draft.html" class="nav-link  tpl-left-nav-link-list active">
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
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-user"></i>
                            <span>个人中心</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="userinfo.html">
                                   <i class="am-icon-angle-right"></i>
                                    <span>个人资料</span>
                                </a>
                                <a href="re_userinfo.html">
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
                草稿箱列表
            </div>
            <div class="tpl-portlet-input tpl-fz-ml">
                <div class="portlet-input input-small input-inline">
                    <div class="input-icon right">
                        <i class="am-icon-search"></i>
                        <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                    </div>
                </div>


            </div>
            <div class="am-g" id="doc-modal-list">
                <div class="tpl-table-images">
                    <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                        <div class="tpl-table-images-content">
                            <div class="tpl-table-images-content-i-time">创建时间：<span>2016-09-12</span></div>
                            <div class="tpl-i-title">
                                “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                            </div>
                            <a href="javascript:;" class="tpl-table-images-content-i">
                                <div class="tpl-table-images-content-i-info">
                                    <span class="ico">
                                        <img src="assets/img/user02.png" alt="">追逐
                                    </span>

                                </div>
                                <span class="tpl-table-images-content-i-shadow"></span>
                                <img src="assets/img/a1.png" alt="">
                            </a>
                            <div class="tpl-table-images-content-block">
                                <div class="tpl-i-font">
                                    你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                                </div>
                                <div class="tpl-i-more">
                                    <ul>
                                    </ul>
                                </div>
                                <div class="row">
                                    <a href="add_news.html" class="am-u-xs-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-xs am-btn-secondary"><span class="am-icon-edit"></span> 编辑</a>
                                    <input type="hidden" data-id="1"/>
                                    <button type="button" class="am-u-lg-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-danger am-btn-xs btn-close"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                        <div class="tpl-table-images-content">
                            <div class="tpl-table-images-content-i-time">创建时间：2016-09-12</div>
                            <div class="tpl-i-title">
                                “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                            </div>
                            <a href="javascript:;" class="tpl-table-images-content-i">
                                <div class="tpl-table-images-content-i-info">
                                    <span class="ico">
                                        <img src="assets/img/user02.png" alt="">追逐
                                    </span>

                                </div>
                                <span class="tpl-table-images-content-i-shadow"></span>
                                <img src="assets/img/a1.png" alt="">
                            </a>
                            <div class="tpl-table-images-content-block">
                                <div class="tpl-i-font">
                                    你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                                </div>
                                <div class="tpl-i-more">
                                    <ul>
                                    </ul>
                                </div>
                                <div class="row">
                                    <a href="add_news.html" class="am-u-xs-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-xs am-btn-secondary"><span class="am-icon-edit"></span> 编辑</a>
                                    <input type="hidden" data-id="2"/>
                                    <button type="button" class="am-u-lg-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-danger am-btn-xs btn-close"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                        <div class="tpl-table-images-content">
                            <div class="tpl-table-images-content-i-time">创建时间：2016-09-12</div>
                            <div class="tpl-i-title">
                                “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                            </div>
                            <a href="javascript:;" class="tpl-table-images-content-i">
                                <div class="tpl-table-images-content-i-info">
                                    <span class="ico">
                                        <img src="assets/img/user02.png" alt="">追逐
                                    </span>

                                </div>
                                <span class="tpl-table-images-content-i-shadow"></span>
                                <img src="assets/img/a1.png" alt="">
                            </a>
                            <div class="tpl-table-images-content-block">
                                <div class="tpl-i-font">
                                    你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                                </div>
                                <div class="tpl-i-more">
                                    <ul>
                                    </ul>
                                </div>
                                <div class="row">
                                    <a href="add_news.html" class="am-u-xs-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-xs am-btn-secondary"><span class="am-icon-edit"></span> 编辑</a>
                                    <input type="hidden" data-id="3"/>
                                    <button type="button" class="am-u-lg-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-danger am-btn-xs btn-close"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                        <div class="tpl-table-images-content">
                            <div class="tpl-table-images-content-i-time">创建时间：2016-09-12</div>
                            <div class="tpl-i-title">
                                “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                            </div>
                            <a href="javascript:;" class="tpl-table-images-content-i">
                                <div class="tpl-table-images-content-i-info">
                                    <span class="ico">
                                        <img src="assets/img/user02.png" alt="">追逐
                                    </span>

                                </div>
                                <span class="tpl-table-images-content-i-shadow"></span>
                                <img src="assets/img/a1.png" alt="">
                            </a>
                            <div class="tpl-table-images-content-block">
                                <div class="tpl-i-font">
                                    你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                                </div>
                                <div class="tpl-i-more">
                                    <ul>
                                    </ul>
                                </div>
                                <div class="row">
                                    <a href="add_news.html" class="am-u-xs-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-xs am-btn-secondary"><span class="am-icon-edit"></span> 编辑</a>
                                    <input type="hidden" data-id="4"/>
                                    <button type="button" class="am-u-lg-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-danger am-btn-xs btn-close"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                        <div class="tpl-table-images-content">
                            <div class="tpl-table-images-content-i-time">创建时间：2016-09-12</div>
                            <div class="tpl-i-title">
                                “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                            </div>
                            <a href="javascript:;" class="tpl-table-images-content-i">
                                <div class="tpl-table-images-content-i-info">
                                    <span class="ico">
                                        <img src="assets/img/user02.png" alt="">追逐
                                    </span>

                                </div>
                                <span class="tpl-table-images-content-i-shadow"></span>
                                <img src="assets/img/a1.png" alt="">
                            </a>
                            <div class="tpl-table-images-content-block">
                                <div class="tpl-i-font">
                                    你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                                </div>
                                <div class="tpl-i-more">
                                    <ul>
                                    </ul>
                                </div>
                                <div class="row">
                                    <a href="add_news.html" class="am-u-xs-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-xs am-btn-secondary"><span class="am-icon-edit"></span> 编辑</a>
                                    <input type="hidden" data-id="5"/>
                                    <button type="button" class="am-u-lg-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-danger am-btn-xs btn-close"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                        <div class="tpl-table-images-content">
                            <div class="tpl-table-images-content-i-time">创建时间：2016-09-12</div>
                            <div class="tpl-i-title">
                                “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                            </div>
                            <a href="javascript:;" class="tpl-table-images-content-i">
                                <div class="tpl-table-images-content-i-info">
                                    <span class="ico">
                                        <img src="assets/img/user02.png" alt="">追逐
                                    </span>

                                </div>
                                <span class="tpl-table-images-content-i-shadow"></span>
                                <img src="assets/img/a1.png" alt="">
                            </a>
                            <div class="tpl-table-images-content-block">
                                <div class="tpl-i-font">
                                    你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                                </div>
                                <div class="tpl-i-more">
                                    <ul>
                                    </ul>
                                </div>
                                <div class="row">
                                    <a href="add_news.html" class="am-u-xs-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-xs am-btn-secondary"><span class="am-icon-edit"></span> 编辑</a>
                                    <input type="hidden" data-id="6"/>
                                    <button type="button" class="am-u-lg-6 am-u-md-6 am-u-sm-6 am-btn am-btn-default am-btn-danger am-btn-xs btn-close"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="am-u-lg-12">
                        <div class="am-cf">

                            <div class="am-fr">
                                <ul class="am-pagination tpl-pagination">
                                    <li class="am-disabled"><a href="#">«</a></li>
                                    <li class="am-active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">»</a></li>
                                </ul>
                            </div>
                        </div>
                        <hr>
                    </div>

                </div>

            </div>
        </div>
        <div class="tpl-alert"></div>
    </div>

</div>

</div>
</div>
    <div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
      <div class="am-modal-dialog">
        <div class="am-modal-bd" style="padding:40px 10px">
          你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
          <span class="am-modal-btn" data-am-modal-cancel>取消</span>
          <span class="am-modal-btn" data-am-modal-confirm>确定</span>
        </div>
      </div>
    </div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/xcConfirm.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/iscroll.js"></script>
<script src="assets/js/app.js"></script>
<script type="text/javascript">

    //删除
    $('#doc-modal-list').find('.btn-close').on('click', function() {
        $('#my-confirm').modal({
          relatedTarget: this,
          onConfirm: function(options) {
            var $link = $(this.relatedTarget).prev('input');
            var msg =  '你要删除的链接 ID 为 ' + $link.data('id');
            alert(msg);
          },
          // closeOnConfirm: false,
          onCancel: function() {
            alert('算求，不弄了');
          }
        });
    });

    //弹窗
    function sendsuc(e){
        var txt=e.innerText;
        window.wxc.xcConfirm(txt);
    }
</script>
</body>

</html>