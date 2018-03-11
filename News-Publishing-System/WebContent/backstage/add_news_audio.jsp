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
    <link rel="stylesheet" href="assets/css/iconfont.css">
    <link rel="stylesheet" href="assets/css/fileUpload.css"> 
    <link rel="stylesheet" href="assets/css/xcConfirm.css">
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


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="index.html" class="nav-link">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="add_news.html" class="nav-link  tpl-left-nav-link-list active">
                            <i class="am-icon-edit"></i>
                            <span>添加新文章</span>
                        </a>
                    </li>
                     <li class="tpl-left-nav-item">
                        <a href="tongzhi.html" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-bell-o"></i>
                            <span>通知管理</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="draft.html" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-inbox"></i>
                            <span>草稿箱</span>
                        </a>
                    </li>
                   <li class="tpl-left-nav-item">
                        <a href="all_news.html" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>文章管理</span>
                        </a>
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

                                <a href="form-line.html">
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
            <div class="row">
                <div class="am-u-md-12 am-u-sm-14 row-mb">
                    <div class="tpl-portlet" style="margin-bottom:10px;overflow:hidden;">
                        <div class="caption font-green bold" style="float:left;">
                            <span class="am-icon-file-text-o">&nbsp&nbsp选择模板</span> 
                        </div>
                        <div class="am-btn-group" style="float:left;">
                            <a href="add_news.html" class="am-btn am-btn-secondary am-radius" style="margin-left:20px;">图文自由排版</a>
                            <a href="add_news_img.html"class="am-btn am-btn-secondary am-radius" style="margin-left:10px;">大图轮播</a>
                            <a href="add_news_vedio.html" class="am-btn am-btn-secondary am-radius" style="margin-left:10px;">视频专题</a>
                            <a href="add_news_audio.html"class="am-btn am-btn-primary am-radius" style="margin-left:10px;">音频专题</a>
                            <a  href="add_news_tuwenModel.html" class="am-btn am-btn-secondary am-radius" style="margin-left:10px;">图文模板</a>
                        </div>                    
                    </div>
                    <div class="tpl-portlet">
                        <div class="portlet-title">
                            <div class="caption font-green bold">
                                <span class="am-icon-pencil">&nbsp&nbsp编辑音频</span> 
                            </div>                     
                            <div class="tpl-block">
                                <div class="am-g">
                                    <div class="tpl-form-body tpl-form-line">
                                        <form class="am-form tpl-form-line-form">
                                        <!--音频上传 -->
                                        <div class="am-form-group am-form-file" style="margin-left: 25px;">
                                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                            <i class="am-icon-cloud-upload"></i> 选择要上传的音频</button>
                                            <input id="doc-form-file" type="file" multiple>
                                        </div>
                                        <div id="file-list"></div>
                                        <!-- 音频上传结束 -->
                                        <hr/>
                                            <div class="am-form-group">
                                                <label for="user-name" class="am-u-sm-2 am-form-label">视频标题：</label>
                                                <div class="am-u-sm-10">
                                                    <input type="text" class="tpl-form-input" id="user-name" placeholder="请输入标题文字">
                                                    <small style="color:red;">请填写标题文字10-20字左右。</small>
                                                </div>
                                            </div>
                                             <div class="am-form-group">
                                                <label for="user-weibo" class="am-u-sm-2 am-form-label">添加分类</label>
                                                <div class="am-u-sm-10">
                                                    <select data-am-selected="{searchBox: 1}">
                                                      <option value="a">财经</option>
                                                      <option value="b">政务</option>
                                                      <option value="o">娱乐</option>
                                                    </select>
                                                </div>
                                            </div>

                        

                                            <div class="am-form-group">
                                                <label for="user-intro" class="am-u-sm-2 am-form-label">视频介绍：</label>
                                            </div>
                                            <div class="am-form-group">
                                                <div class="am-u-sm-12">
                                                    <textarea class="" rows="10" id="user-intro" placeholder="请输入视频介绍" type="hidden"></textarea>
                                                </div>
                                            </div>

                                            <div class="am-form-group">
                                                <label for="user-weibo" class="am-u-sm-2 am-form-label">封面图</label>
                                                <div class="am-u-sm-10">
                                                    <!--  图片上传显示-->
                                                    <!--input-group start-->
                                                    <div class="upload_box"><input type="file" name="file"  class="file" onchange="imgChange(this);" style="width:260px" /><div class="preview" style="margin-top: 20px;"><img class="imghead" src="assets/img/add.png" width="320" height="136"/></div></div>
                                                    <!--input-group end-->
                                                </div>
                                            </div>
                                            <div class="am-u-sm-8 am-u-sm-push-2 add_button">
                                                <a class="am-btn am-btn-primary tpl-btn-bg-color-success add_draft">存草稿</a>
                                                <a href="../前台/news_post_listen_eye.html" class="am-btn am-btn-primary tpl-btn-bg-color-success add_eye">预  览</a>
                                                <a class="am-btn am-btn-primary tpl-btn-bg-color-success add_fa">发  布</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>      

        <div class="am-modal am-modal-no-btn" tabindex="-1" id="your-modal">
          <div class="am-modal-dialog">
            <div class="am-modal-hd">Modal 标题
              <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
            </div>
            <div class="am-modal-bd">
              Modal 内容。
            </div>
          </div>
        </div>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/xcConfirm.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/iscroll.js"></script>
<script src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/fileUpload.js"></script>
<script src="assets/js/echarts.min.js"></script>
<!--富文本js-->
<script language="javascript" type="text/javascript" src="assets/js/tinymce/tinymce.js"></script>

<script type="text/javascript">
    //富文本 begin
    tinymce.init({
        selector: "textarea",
        upload_image_url: './upload', //配置的上传图片的路由
        height: 400,
        language:'zh_CN',
        plugins: [
            'advlist autolink lists link  charmap print preview hr anchor pagebreak',
            'searchreplace wordcount visualblocks visualchars code fullscreen',
            'insertdatetime media nonbreaking save table contextmenu directionality',
            'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc help'
          ],
          toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
          toolbar2: 'print preview media | forecolor backcolor emoticons | codesample help',
          image_advtab: true,
          templates: [
            { title: 'Test template 1', content: 'Test 1' },
            { title: 'Test template 2', content: 'Test 2' }
          ],
        menubar: false
    });
    //富文本 end
    //视频上传
    //图片上传 begin
    $("#fileUploadContent1").initUpload({
        "uploadUrl":"#",//上传文件信息地址
        //"size":350,//文件大小限制，单位kb,默认不限制
        //"maxFileNumber":3,//文件个数限制，为整数
        //"filelSavePath":"D://images",//文件上传地址，后台设置的根目录
        "beforeUpload":beforeUploadFun,//在上传前执行的函数
        //"onUpload":onUploadFun，//在上传后执行的函数
        //autoCommit:true,//文件是否自动上传
        "fileType":['avi','wmv','mp4','mpeg','flv','rm','rmvb','vob']//文件类型限制，默认不限制，注意写的是文件后缀
    });
    //音频上传 start
    $('#doc-form-file').on('change', function() {
        var fileNames = '';
        $.each(this.files, function() {
          fileNames += '<span class="am-badge">' + this.name + '</span> ';
        });
        $('#file-list').html(fileNames);
    });
    //音频上传 end

    // 页面上图片上传并显示start
    function imgChange (e) {
        var file=e;
        var imgUrl =window.URL.createObjectURL(file.files[0]);
        var imgPar=e.parentNode;
        //console.log(imgPar.childNodes);
        var img=imgPar.childNodes[1].childNodes[0];
        img.setAttribute('src',imgUrl);
    }
    // 页面上图片上传并显示end

    //弹窗
    function sendsuc(e){
        var txt=e.innerText;
        window.wxc.xcConfirm(txt);
    }
</script>
</body>

</html>










