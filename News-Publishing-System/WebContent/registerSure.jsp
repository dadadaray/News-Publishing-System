<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}/font_desk" />
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 设置默认跳转时间为10秒 -->
<!--  <meta http-equiv="refresh" content="10;url=${ctx }/login.jsp" />-->
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${registerTitle}</title>
<link rel="icon" type="image/png" href="${ctx}/layout/images/favicon.png">
<!-- Style Sheet-->
<!-- 倒计时 -->
<script type="text/javascript" src="${ctx }/layout/js/jquery.js"></script>
<script type="text/javascript" src="${ctx }/layout/js/time_js.js"></script>

<link type="text/css" rel="stylesheet" href="${ctx }layout/time_css.css" />
<script type="text/javascript">
	countDown();
</script>

<link href="${ctx }/layout/zui.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${ctx }/layout/zui.lite.css">
<link rel="stylesheet" type="text/css" href="${ctx }/layout/zui-theme.css">
<link rel="stylesheet" type="text/css" href="${ctx }/layout/style_email.css">
<link rel="stylesheet" type="text/css" href="${ctx }/layout/style.css">
<link rel="stylesheet" type="text/css" href="${ctx }/layout/main5152.css">
<style id="themeStyle"></style>
<style type="text/css">
#top .primary-color, a, #cancel-comment-reply-link, .blog-tags a:hover,
	.relThumb a:hover strong, .flex_column h1, .flex_column h2,
	.flex_column h3, .flex_column h4, .flex_column h5, .flex_column h6,
	#top #wrap_all .tweet-text a, #top #js_sort_items a.active_sort,
	.callout a:hover {
	color: #f0b70c;
}
</style>
<script type="text/javascript" language="javascript">
	$(function() {
		$().popover('show');
		window.setTimeout("CloseWebPage()", 10000);
	})
	function CloseWebPage() {
		console.log("wuwuwuuw");
		quitBox('quit');
	}
	function quitBox(cmd) {

		var win = window.open("${ctx}/login.jsp", "_self");
		win.close();
	}
</script>
</head>
<body>
	<%@ include file="head.jsp"%>
	<!--导航栏完成-->
	<div class="container">
		<div class="row clearfix">

			<div class="game_time" style="float: left;">
				<div class="hold">
					<div class="pie pie1"></div>
				</div>
				<div class="hold">
					<div class="pie pie2"></div>
				</div>
				<div class="bg"></div>
				<div class="time"></div>

			</div>
			<div style="margin-left: 400px;">
				<h2>
					Welcome to nullpointer <small>You will love here!</small>
				</h2>

				<h3 class="popover-title">${regiserWelcome }</h3>
				<div class="popover-content">
					<h4>
						<small id="remindContent">本页面将于10秒内自动跳转到登录！<a href='${ctx}/login.jsp'>立即跳转</a></small>
					</h4>
				</div>
			</div>
		</div>
		<div class="container">
			<article class="article"> <header>
			<dl class="dl-inline">
				<dt><%=new Date()%></dt>
				<dt>Welcome to world of News</dt>
			</dl>
			<section class="abstract">
			<p>
				<strong>简介：</strong> <br /> 项目名称：新闻天下
			<hr />
			
			<hr />
			项目目标：新闻系统发布系统
			</p>
			</section> </header>
			<blockquote>
				<section class="abstract">
				<p>
					<strong>项目成员简介：</strong> <br /> PM：冯廷鑫
				<hr />
				产品经理：张肇霖
				<hr />
				用户体验、测试工程师：颜荣恩、汤文茹
				<hr />
				开发工程师：冯廷鑫、张肇霖、颜荣恩、汤文茹
				</p>
				</section>
			</blockquote>
			</article>
		</div>
	</div>


	<!--搜索框完成-->

	<!-- footer -->
		<%@ include file="footer.jsp"%>   

</body>
<!-- script -->
<script type="text/javascript" src="${ctx}/layout/js/jquery.js"></script>



<!-- ZUI Javascript组件 -->
<script src="${ctx }/layout/zui.min.js"></script>
<!-- 增强文档插件 -->
<script async src="${ctx }/assets/prettify/prettify.js"></script>
<script src="${ctx }/assets/marked/marked.min.js"></script>
</html>