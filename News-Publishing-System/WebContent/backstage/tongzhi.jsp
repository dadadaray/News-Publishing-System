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
                    <a href="tongzhi.html" class="nav-link  tpl-left-nav-link-list active">
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
              <span class="am-icon-bell-o"> 通知列表</span>
            </div>
            <div class="tpl-portlet-input tpl-fz-ml">
             <div class="portlet-input input-small input-inline">
              <div class="input-icon right">
                <i class="am-icon-search"></i>
                <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
              </div>
            </div>
          </div>
          <div class="am-g">
            <div class="am-u-sm-12 am-u-md-6">
              <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                  <input type="checkbox" class="tpl-table-fz-check" id="checkall" onclick="checkallcheckbox();" style="float:left;margin-left: -7px;">
                  <button style="float:left;margin-left:20px;" type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 批量删除</button>
                </div>
              </div>
            </div>
            <div class="am-u-sm-12 am-u-md-3">
              <div class="am-form-group">
                <select data-am-selected="{btnSize: 'sm'}">
                  <option value="option1">全部消息</option>
                  <option value="option2">文章推荐</option>
                  <option value="option3">审核通过</option>
                  <option value="option4">审核意见</option>
                </select>
              </div>
            </div>
          </div>
          <ul class="tpl-task-list tpl-task-remind" id="doc-modal-list">
            <li>
             <div class="cosB">
               <span>2小时前 </span>  &nbsp &nbsp 
               <input type="hidden" data-id="1"/>                     
               <button type="button" class="am-btn am-btn-xs am-btn-danger  am-round btn-close">
                <span class="am-icon-trash-o">
                </span> 删除
              </button>
            </div>
            <div class="cosA">

             <div class="task-checkbox">
               <input type="hidden" value="1" name="test">
               <input type="checkbox" name="box" onclick="checkonebox()" value="">
             </div>
             <a href="#">
               <span class="label label-sm label-danger" style="display: block;float: left;">审核通过
               </span>
               <font color="82949a">
                 <span style="display: block;float: left;">&nbsp&nbsp你的文章：</span>
                 <span style="display: block;float: left;" class="bold"> 
                  《文章名》
                </span>
                <span class="text_overflow_1" onclick="tanchuang1(this)"> 
                  已经成功发布了。已经成功发布了。已经成功发布了。已经成功发布了。已经成功发布了。已经成功发布了。已经成功发布了。已经成功发布了。已经成功发布了。已经成功发布了。已经成功发布了。
                </span>
                <div style="clear:both;"></div>
              </font>
            </a>  
          </div>
        </li>
        <li>
          <div class="cosB">
           <span>2小时前 </span>  &nbsp &nbsp 
           <input type="hidden" data-id="2"/>                     
           <button type="button" class="am-btn am-btn-xs am-btn-danger  am-round btn-close">
            <span class="am-icon-trash-o"></span> 删除
          </button>
        </div>
        <div class="cosA">

         <div class="task-checkbox">
          <input type="hidden" value="1" name="test">
          <input type="checkbox" name="box" onclick="checkonebox()" value="">
        </div>
        <a href="#">
          <span class="label label-sm label-success " style="display: block;float: left;">审核意见</span>
          <font color="82949a">
            <span style="display: block;float: left;">&nbsp&nbsp你的文章：</span>
            <span class="bold" style="display: block;float: left;"> 
              《文章名》
            </span> 
            <span class="text_overflow_1" onclick="tanchuang1(this)"> 
             角度应该侧重民生问题，应该贴近百兴生活。需要修改。
           </span>
           <div style="clear:both;"></div>
         </font>
       </a>
     </div>
   </li>
   <li>
    <div class="cosB">
     <span>2小时前 </span>  &nbsp &nbsp 
     <input type="hidden" data-id="2"/>                     
     <button type="button" class="am-btn am-btn-xs am-btn-danger  am-round btn-close">
      <span class="am-icon-trash-o"></span> 删除
    </button>
  </div>
  <div class="cosA">

   <div class="task-checkbox">
    <input type="hidden" value="1" name="test">
    <input type="checkbox" name="box" onclick="checkonebox()" value="">
  </div>
  <a href="#">
    <span class="label label-sm label-warning " style="display: block;float: left;">文章推荐</span>
    <font color="82949a">
      <span style="display: block;float: left;">&nbsp&nbsp你的文章：</span>
      <span class="bold" style="display: block;float: left;"> 
        《文章名》
      </span> 
      <span class="text_overflow_1" onclick="tanchuang1(this)"> 
       被设为推荐文章。
     </span>
     <div style="clear:both;"></div>
   </font>
 </a>
</div>
</li>
</ul>
</div>

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
</body>

<script>
  // 弹窗
  function tanchuang1(e){
    console.log(e);
    var txt=e.innerText;
    window.wxc.xcConfirm(txt); 
  }

    //头部通知消息弹窗
    function sendsuc(e){
        var txt=e.innerText;
        window.wxc.xcConfirm(txt);
    }

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

    //全选/全不选功能
    function checkallcheckbox() { 
        var ischecked = document.getElementById("checkall").checked; 
        if(ischecked) { 
            checkallbox(); 
        }else { 
            discheckallbox(); 
        } 
    } 
    //选中全部复选框
    function checkallbox() { 
        var boxarray = document.getElementsByName("box"); 
        for(var i = 0; i < boxarray.length; i++) { 
        if(boxarray[i].disabled != true)
            boxarray[i].checked = true; 
        } 
    } 
    
    //取消选中全部复选框
    function discheckallbox() { 
        var boxarray = document.getElementsByName("box"); 
        for(var i = 0; i < boxarray.length; i++) {
            boxarray[i].checked = false; 
        } 
    }
    
    //点击每个checkbox时判断是否所有的checkbox全部选中  
    function checkonebox() { 
        if(isallchecked()) { 
            document.getElementById("checkall").checked = true; 
        }
        if(isalldischecked()) { 
            document.getElementById("checkall").checked = false; 
        } 
    } 
    
    //是否全部选中
    function isallchecked() { 
        var boxarray = document.getElementsByName("box"); 
        for(var i = 0; i < boxarray.length; i++) { 
            if(!boxarray[i].checked) { 
                return false; 
            } 
        } 
        return true; 
    } 
    
    //是否没有全部选中
    function isalldischecked() { 
        var boxarray = document.getElementsByName("box"); 
        for(var i = 0; i < boxarray.length; i++) { 
            if(!boxarray[i].checked) { 
                return true; 
            } 
        } 
        return false; 
    }

  </script>

  </html>