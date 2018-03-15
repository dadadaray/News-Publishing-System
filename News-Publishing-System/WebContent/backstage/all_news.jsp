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
                        <span class="am-icon-bell-o"></span> 提醒 <span class="am-badge tpl-badge-success am-round">3</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 
                              <span class="tpl-color-success">3</span> 条消息</h3>
                              <a href="${ctx}/tongzhi.jsp" class="font-green">全部</a>
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
                    <a href="${ctx}/userinfo.jsp">
                        <span class="tpl-header-list-user-nick">编辑记者身份</span><span class="tpl-header-list-user-ico"> <img src="${ctx}/assets/img/user01.png"></span>
                    </a>
                </li>
                <li>
                  <a href="${ctx}/login.jsp" class="tpl-header-list-link">
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
                        <a href="${ctx}/index.jsp" class="nav-link">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="${ctx}/add_news.jsp" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-pencil-square"></i>
                            <span>添加新文章</span>
                        </a>
                    </li>
                     <li class="tpl-left-nav-item">
                        <a href="${ctx}/tongzhi.jsp" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-bell"></i>
                            <span>通知管理</span>
                            <i class="tpl-left-nav-content tpl-badge-danger">
                               12
                           </i>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="${ctx}/draft.jsp" class="nav-link  tpl-left-nav-link-list">
                            <i class="am-icon-inbox"></i>
                            <span>草稿箱</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                            <i class="am-icon-file-text"></i>
                            <span>文章管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <a href="${ctx}/all_news.jsp" class="active">
                                   <i class="am-icon-angle-right"></i>
                                    <span>已发表文章</span>
                                </a>
                                <a href="${ctx}/all_news_checking.jsp">
                                   <i class="am-icon-angle-right"></i>
                                    <span>审核中列表</span>
                                 </a>

                                <a href="${ctx}/all_news_checked.jsp">
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
                                <a href="${ctx}/userinfo.jsp">
                                   <i class="am-icon-angle-right"></i>
                                    <span>个人资料</span>
                                </a>
                                <a href="${ctx}/re_userinfo.jsp">
                                   <i class="am-icon-angle-right"></i>
                                    <span>完善信息</span>
                                 </a>

                                <a href="${ctx}/login.jsp">
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
                        <span class="am-icon-file-text-o"> </span>  发表文章
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="请输入标题关键字..."> </div>
                            </div>
                        </div>


                    </div>
                    <div class="tpl-block">
                        <div class="am-g">
                            <div class="am-u-sm-12 am-u-md-9">
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                         <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 批量删除
                                         </button>
                                         <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-share-alt"></span> 分享排行
                                         </button>
                                         <button type="button" class="am-btn am-btn-default am-btn-warning">
                                            <span class="am-icon-eye"></span>
                                             浏览排行
                                         </button>
                                         <button type="button" class="am-btn am-btn-default am-btn-success">
                                            <span class="am-icon-comment"></span>
                                             留言排行
                                         </button>
                                    </div>
                                </div>
                            </div>
                            <div class="am-u-sm-12 am-u-md-3">
                                <div class="am-form-group">
                                    <select data-am-selected="{btnSize: 'sm'}">
                                         <option value="a">财经</option>
                                         <option value="b">科技</option>
                                         <option value="c">教育</option>
                                         <option value="d">体育</option>
                                         <option value="e">娱乐</option>
                                         <option value="f">军事</option>
                                         <option value="g">旅游</option>
                                         <option value="h">政务</option>                                      
                                      
                                  </select>
                              </div>
                          </div>
                      </div>
                      <div class="am-g">
                        <div class="am-u-sm-12">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-check">
                                                <input type="checkbox" class="tpl-table-fz-check" id="checkall" onclick="checkallcheckbox();">
                                            </th>
                                            <th class="table-id">ID</th>
                                            <th class="table-title">文章名称</th>
                                            <th class="table-type am-hide-sm-only">类别</th>
                                            <th class="table-type am-hide-sm-only">浏览量</th>
                                            <th class="table-type am-hide-sm-only">转发量</th>
                                            <th class="table-type am-hide-sm-only">留言量</th>
                                            <th class="table-date am-hide-sm-only">发文日期</th>
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody id="doc-modal-list">
                                         <tr>
                                            <td><input type="checkbox" name="box" onclick="checkonebox()" value=""></td>
                                            <td>1</td>
                                            <td><a href="#">《战时孤儿》</a></td>
                                            <td>军事</td>
                                            <td class="am-hide-sm-only">45689</td>
                                            <td class="am-hide-sm-only">1256</td>
                                            <td class="am-hide-sm-only font-green bold">445</td>
                                            <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button onclick="edit()" class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                            <span class="am-icon-pencil-square-o">
                                                            </span> 编辑
                                                        </button>
                                                        <input type="hidden" data-id="1"/>
                                                        <button type="button" class="btn-close am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
                                                            <span class="am-icon-trash-o"></span> 删除
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td><input type="checkbox" name="box" onclick="checkonebox()" value=""></td>
                                            <td>1</td>
                                            <td><a href="#">《战时孤儿》</a></td>
                                            <td>军事</td>
                                            <td class="am-hide-sm-only">45689</td>
                                            <td class="am-hide-sm-only">1256</td>
                                            <td class="am-hide-sm-only font-green bold">445</td>
                                            <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button onclick="edit()" class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                            <span class="am-icon-pencil-square-o">
                                                            </span> 编辑
                                                        </button>
                                                        <input type="hidden" data-id="2"/>
                                                        <button type="button" class="btn-close am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
                                                            <span class="am-icon-trash-o"></span> 删除
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td><input type="checkbox" name="box" onclick="checkonebox()" value=""></td>
                                            <td>1</td>
                                            <td><a href="#">《战时孤儿》</a></td>
                                            <td>军事</td>
                                            <td class="am-hide-sm-only">45689</td>
                                            <td class="am-hide-sm-only">1256</td>
                                            <td class="am-hide-sm-only font-green bold">445</td>
                                            <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button onclick="edit()" class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                            <span class="am-icon-pencil-square-o">
                                                            </span> 编辑
                                                        </button>
                                                        <input type="hidden" data-id="3"/>
                                                        <button type="button" class="btn-close am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only btn-close">
                                                            <span class="am-icon-trash-o"></span> 删除
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                 </tbody>
                            </table>
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

                        </form>
                    </div>

                </div>
            </div>
            <div class="tpl-alert"></div>
        </div>


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
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/xcConfirm.js"></script>
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/iscroll.js"></script>
<script src="${ctx}/assets/js/app.js"></script>
</body>
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

    //查看
    function edit(){
        window.open("${ctx}/add_news.jsp");
    }

    //弹窗
    function sendsuc(e){
        var txt=e.innerText;
        window.wxc.xcConfirm(txt);
    }

</script>

</html>