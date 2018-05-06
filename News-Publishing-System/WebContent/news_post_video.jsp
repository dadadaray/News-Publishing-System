<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>

<head>
<title>新闻天下</title>

<meta name="keywords" content="" />
<meta name="description" content="" />

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width" />
<link rel="icon" type="image/png" href="${ctx}/layout/images/favicon.png">

<!--[if lt IE 9]>
<script type="text/javascript" src="layout/plugins/html5.js"></script>
<![endif]-->

<link rel="stylesheet" href="${ctx}/layout/style.css" type="text/css" />

<script type="text/javascript" src="${ctx}/layout/js/jquery.js"></script>

<!-- PrettyPhoto start -->
<link rel="stylesheet" href="${ctx}/layout/plugins/prettyphoto/css/prettyPhoto.css" type="text/css" />
<script type="text/javascript" src="${ctx}/layout/plugins/prettyphoto/jquery.prettyPhoto.js"></script>
<!-- PrettyPhoto end -->

<!-- jQuery tools start -->
<script type="text/javascript" src="${ctx}/layout/plugins/tools/jquery.tools.min.js"></script>
<!-- jQuery tools end -->

<!-- Calendar start -->
<link rel="stylesheet" href="${ctx}/layout/plugins/calendar/calendar.css" type="text/css" />
<script type="text/javascript" src="${ctx}/layout/plugins/calendar/calendar.js"></script>
<!-- Calendar end -->

<!-- ScrollTo start -->
<script type="text/javascript" src="${ctx}/layout/plugins/scrollto/jquery.scroll.to.min.js"></script>
<!-- ScrollTo end -->

<!-- MediaElements start -->
<link rel="stylesheet" href="${ctx}/layout/plugins/video-audio/mediaelementplayer.css" />
<script src="${ctx}/layout/plugins/video-audio/mediaelement-and-player.js"></script>
<!-- MediaElements end -->

<!-- FlexSlider start -->
<link rel="stylesheet" href="${ctx}/layout/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="${ctx}/layout/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

<!-- iButtons start -->
<link rel="stylesheet" href="${ctx}/layout/plugins/ibuttons/css/jquery.ibutton.css" type="text/css" />
<script type="text/javascript" src="${ctx}/layout/plugins/ibuttons/lib/jquery.ibutton.min.js"></script>
<!-- iButtons end -->

<!-- jQuery Form Plugin start -->
<script type="text/javascript" src="${ctx}/layout/plugins/ajaxform/jquery.form.js"></script>
<!-- jQuery Form Plugin end -->

<script type="text/javascript" src="${ctx}/layout/js/main.js"></script>

<!--注册表单验证 start-->
<script type="text/javascript" src="${ctx}/layout/js/jquery.validate.js"></script>
<script type="text/javascript" src="${ctx}/layout/js/page_regist.js?lang=zh"></script>
<script type="text/javascript" src="${ctx}/layout/js/jquery.i18n.properties-1.0.9.js"></script>
<!--注册表单验证 end-->

<!--密码md5加密 start-->
<script type="text/javascript" src="${ctx}/layout/js/md5.js"></script>
<!--密码md5加密 end-->

<!--登录表单验证 start-->
<script type="text/javascript" src="${ctx}/layout/js/page_login.js?lang=zh" id="url" data="<%= request.getHeader("REFERER")%>"></script>
<!--登录表单验证 start-->


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
	<div class="wrapper sticky_footer">
		<!-- head -->
		<%@ include file="head.jsp"%>

		<!-- CONTENT BEGIN -->
		<div id="content" class="right_sidebar">
			<div class="inner">
				<div class="general_content">
					<div class="main_content">
						<div class="block_breadcrumbs">
							<div class="text">
								<p>当前位置：</p>
							</div>

							<ul>
								<li><a href="index.jsp">首页</a></li>
								<li><a href="business.jsp">商业</a></li>
								<li>股票</li>
							</ul>
						</div>
						<div class="separator" style="height: 30px;"></div>

						<article class="block_single_news">
							<p class="title">
							<h1>中国工厂太魔幻：未来每2分钟下线一辆汽车</h1>
							</p>

							<div class="info">
								<div class="date">
									<p>15 July, 2012</p>
								</div>
								<div class="author">
									<p>
										作者: <a href="#">王敏</a>
									</p>
								</div>

								<div class="r_part">
									<a href="#" class="views">220</a> <a href="#" class="comments">25</a>
								</div>
							</div>

							<div class="content">
								<h5>YouTube</h5>

								<div class="block_video">
									<iframe width="612" height="344" src="http://www.youtube.com/embed/ySIvism2af8" frameborder="0" allowfullscreen=""></iframe>
								</div>
								<p class="text_p">世界，正处在新科技革命和产业变革的交汇点上。信息化、工业化不断融合，以机器人技术为代表的智能装备产业蓬勃兴起。2017年，中国继续成为全球第一大工业机器人市场，销量突破12万台，约占全球总产量的三分之一。与此同时，中国连续第九年成为全球高端数控机床第一消费大国，全球50%的数控机床装在了中国的生产线上。这一年，中国的人工智能企业总数接近600家，跃升世界第二,小编在这为您梳理中国智造“英雄谱”，相信你看完一定会被它们惊艳↓↓↓</p>
								<h3>重器：智能制造核心-数字化仿真智能工厂</h3>
								<p class="text_p">
									<b>最牛实力：</b>这间数字化仿真工厂，冲压环节的零件加工合格率达到100%，焊装环节的焊点定位合格率达到99.8%，总装环节的装配合格率更是达到100%。工程师们通过在仿真系统中的模拟演练，可以减少人为失误风险，大幅节约制造成本，缩短研发周期。.
								</p>

								<p class="text_p">
									智能制造时代来临，中国正在涌现一个又一个“智造先锋”，涵盖石化、钢铁、航空、汽车等82个行业。两年来，平均生产效率提高30%，能源利用率提升10%。<a href="#" class="lnk_blue text_a"><b>智能制造时代</b></a>查看恢弘气势
								</p>
								<blockquote class="full">引言样式</blockquote>

							</div>
						</article>

						<div class="separator" style="height: 4px;"></div>

						<div class="block_post_tags">
							<p>
								标签: <a href="#">商业,</a><a href="#">股票</a>
							</p>
						</div>

						<div class="block_post_social">
							<h4>
								<span>B</span>
							</h4>

							<section class="rating">
								<p class="title">
									<span>影响</span>
								</p>

								<ul>
									<li><span>1024</span>浏览量</li>
									<li><span>4</span>评论</li>
								</ul>
							</section>

							<section class="subscribe">
								<p class="title">
									<span>点赞</span>
								</p>
								<a onclick="toggle()"> <img id="xihuan_change" src="${ctx}/layout/images/xihuan1.png " alt="" width="40%" />
								</a>
							</section>

							<section class="recommend">
								<p class="title">
									<span>点击分享</span>
								</p>
								<ul>
									<li><a href="http://www.facebook.com/share.php?u=http://google.com" target="_blank"><img src="${ctx}/images/button_social_1.png" alt="" /></a></li>
									<li><a href="https://twitter.com/share?text=I like BusinessNews Template and You?" target="_blank"><img src="${ctx}/images/button_social_2.png" alt="" /></a></li>
									<li><a href="https://plusone.google.com/_/+1/confirm?url=http://google.com" target="_blank"><img src="${ctx}/images/button_social_3.png" alt="" /></a></li>
									<li><a href="http://pinterest.com/pin/create/button/?url=http://google.com" target="_blank"><img src="${ctx}/images/button_social_4.png" alt="" /></a></li>
								</ul>
							</section>

							<div class="clearboth"></div>
						</div>

						<div class="line_2" style="margin: 22px 0px 29px;"></div>

						<div class="block_related_posts">
							<h3>相关内容</h3>

							<div class="block_main_news">
								<article class="block_news_post">
									<div class="f_pic">
										<a href="#" class="general_pic_hover scale_small"><img src="${ctx}/images/pic_main_news_9.jpg" alt="" /></a>
									</div>
									<p class="category">
										<a href="#">图集</a>
									</p>
									<p class="title">
										<a href="#">啦啦啦啦啦啦啦巴拉巴拉巴拉</a>
									</p>
									<div class="info">
										<div class="date">
											<p>11 July, 2012</p>
										</div>
										<a href="#" class="views">183</a>

										<div class="clearboth"></div>
									</div>
								</article>

								<article class="block_news_post">
									<div class="f_pic">
										<a href="#" class="general_pic_hover scale_small"><img src="${ctx}/images/pic_main_news_4.jpg" alt="" /></a>
									</div>
									<p class="category">
										<a href="#">中国新时代</a>
									</p>
									<p class="title">
										<a href="#">不放初心，坚守使命。巴拉巴拉巴拉</a>
									</p>
									<div class="info">
										<div class="date">
											<p>11 July, 2012</p>
										</div>
										<a href="#" class="views">183</a>

										<div class="clearboth"></div>
									</div>
								</article>

								<article class="block_news_post">
									<div class="f_pic">
										<a href="#" class="general_pic_hover scale_small"><img src="${ctx}/images/pic_main_news_6.jpg" alt="" /></a>
									</div>
									<p class="category">
										<a href="#">商业</a>
									</p>
									<p class="title">
										<a href="#">不忘初心，牢记使命。巴拉巴拉巴拉</a>
									</p>
									<div class="info">
										<div class="date">
											<p>11 July, 2012</p>
										</div>
										<a href="#" class="views">183</a>

										<div class="clearboth"></div>
									</div>
								</article>

								<article class="block_news_post">
									<div class="f_pic">
										<a href="#" class="general_pic_hover scale_small"><img src="${ctx}/images/pic_main_news_13.jpg" alt="" /></a>
									</div>
									<p class="category">
										<a href="#">视频</a>
									</p>
									<p class="title">
										<a href="#">巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉</a>
									</p>
									<div class="info">
										<div class="date">
											<p>11 July, 2012</p>
										</div>
										<a href="#" class="views">183</a>

										<div class="clearboth"></div>
									</div>
								</article>

								<div class="clearboth"></div>
							</div>
						</div>

						<div class="line_2" style="margin: 5px 0px 30px;"></div>

						<c:set var="comment" value="${OneNews.comments}"></c:set>
						<div class="block_comments_type_2">
							<h3>${fn:length(comment)}评论</h3>
							<a href="#" class="add_new">查看所有评论</a>

							<!-- 查看所有评论 -->

							<c:forEach var="ct" items="${comment}" varStatus="status">

								<c:if test="${ct.parentComment == null }">
									<div class="comment">
										<c:set var="parentId" value="${ct.commentId }"></c:set>
										<div class="userpic">
											<a href="#"><img src="${ctx}/imgUp/${ct.userInfo.headUrl}" alt="" width="36px" height="36px" /></a>
										</div>

										<div class="comment_wrap">
											<div class="name">
												<p>
													<a href="#">${ct.userInfo.loginUser.loginName }</a>
												</p>
											</div>
											<div class="date">
												<p>
													<fmt:formatDate value="${ct.commentPublishTime }" pattern="yyyy-MM-dd HH:mm" />
												</p>
											</div>
											<div class="reply">
												<p>
													<a href="javascript:focusAndChangeStatus(${ct.commentId })">回复</a>
												</p>
											</div>
											<div class="content">
												<p>${ct.commentContent }</p>
											</div>
										</div>
										<div class="clearboth"></div>
										<div class="line_3"></div>
										<div class="comment">
											<c:set var="comms" value="${OneNews.comments}"></c:set>
											<c:forEach var="cts" items="${comms}">
												<c:if test="${cts.parentComment!= null && cts.parentComment.commentId == parentId}">
													<div class="userpic">

														<a href="#"><img src="${ctx}/imgUp/${cts.userInfo.headUrl}" alt="" width="36px" height="36px" /></a>
													</div>

													<div class="comment_wrap">
														<div class="name">
															<p>
																<a href="#">${cts.userInfo.loginUser.loginName }</a>
															</p>
														</div>
														<div class="date">
															<p>
																<fmt:formatDate value="${cts.commentPublishTime }" pattern="yyyy-MM-dd HH:mm" />
															</p>
														</div>
														<div class="reply">
															<p>
																<a href="#">回复</a>
															</p>
														</div>
														<div class="content">
															<p>${cts.commentContent}</p>
														</div>
													</div>
													<div class="clearboth"></div>
													<div class="line_3"></div>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</c:if>

							</c:forEach>
						</div>

						<div class="separator" style="height: 30px;"></div>
						<div class="block_leave_reply" id="commentReplyForm2">
							<h3>添加评论</h3>
							<!-- <p class="text">Your email address will not be published. Required fields are marked <span>*</span></p> -->

							<form id="formSendComment3" class="w_validation" action="${ctx}/comment/${OneNews.newsId}">
								<p>评论</p>
								<input type="hidden" id="commentIdInput" name="commentId" value="" />
								<div class="textarea">
									<textarea cols="1" rows="1" id="commentContent3" name="content"></textarea>
								</div>

								<input id="sendComment3" type="submit" class="general_button" value="发表评论" />
							</form>
						</div>

					</div>

					<!-- sidebar -->
					<%@ include file="sidebar.jsp"%>

					<div class="clearboth"></div>
				</div>
			</div>
		</div>
		<!-- CONTENT END -->

		<!-- footer -->
		<%@ include file="footer.jsp"%>

	</div>

</body>
<script type="text/javascript">
$("#sendComment3").click(function(){
	  var user="<%=session.getAttribute("loginUser")%>";
		if (user.length == 4) {
			alert("请登录！");
			widows.location.href = "login.jsp";
		} else {
			var a = $("#commentContent3");
			if (a == null) {
				alert("评论内容不能为空！");
			}
		}
	})
	$(document).keyup(function(e) {
		if (e.keyCode == 13) {
			$("#submit1").click()
		}
	});
	/*点赞，点击变换图片*/
	function toggle() {
		debugger;
		var xihuan_change = $('#xihuan_change');
		var val = xihuan_change.attr("src").indexOf('2');

		if (val >= 0) {
			$('#xihuan_change').attr('src', 'layout/images/xihuan1.png');
		} else {
			$('#xihuan_change').attr('src', 'layout/images/xihuan2.png');
		}
	}
	/*
	 * 当点击回复时，修改commentId为点击回复的值
	 同时滚动到输入框的div
	 */
	function focusAndChangeStatus(comentId) {
		document.getElementById("commentIdInput").value = comentId; //修改ID
		$('html, body').animate({
			scrollTop : $("#commentReplyForm2").offset().top
		}, 1000);
	}
</script>
</html>