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


<!--密码md5加密 start-->
<script type="text/javascript" src="${ctx}/layout/js/md5.js"></script>
<!--密码md5加密 end-->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
	<%
		if (session.getAttribute("listNewsIndex1") == null) {
			request.getRequestDispatcher("index").forward(request, response);
		}
	%>
	<div class="wrapper sticky_footer">
		<!-- head -->
		<%@ include file="head.jsp"%>

		<!-- CONTENT BEGIN -->
		<div id="content" class="right_sidebar">
			<div class="inner">
				<div class="general_content">
					<div class="main_content">
						<div class="block_special_topic">
							<div class="type">
								<p>最新热点新闻</p>
							</div>
							<div class="title">
								<p>
									<a href="#">中国冬奥会拉开帷幕，迅速准备中。</a>
								</p>
							</div>
						</div>
						<div class="separator" style="height: 17px;"></div>

						<div class="block_home_slider">
							<div id="home_slider" class="flexslider">
								<ul class="slides">
									<li>
										<div class="slide">
											<img src="${ctx}/images/pic_home_slider_1.jpg" alt="" />
											<div class="caption">
												<p class="title">更多希望工程正在开发当中。</p>
												<p>每一次的成就都是不断积累的付出而换类来的，唯有不断积累才能换来成就。</p>
											</div>
										</div>
									</li>

									<li>
										<div class="slide">
											<img src="${ctx}/images/pic_home_slider_2.jpg" alt="" />
											<div class="caption">
												<p class="title">Many desktop publishing packages.</p>
												<p>There are many variations of passages of available, but the majority have suffered alteration in some form, by injected humour, or randomised.</p>
											</div>
										</div>
									</li>

									<li>
										<div class="slide">
											<img src="${ctx}/images/pic_home_slider_3.jpg" alt="" />
											<div class="caption">
												<p class="title">Many desktop publishing packages and web page.</p>
												<p>There are many variations of passages of available, but the majority.</p>
											</div>
										</div>
									</li>

									<li>
										<div class="slide">
											<img src="${ctx}/images/pic_home_slider_4.jpg" alt="" />
											<div class="caption">
												<p class="title">Many desktop publishing packages and web page.</p>
												<p>There are many variations of passages of available, but the majority have suffered alteration in some form, by injected humour, or randomised, but the majority have suffered alteration in some form, by injected humour, or randomised.</p>
											</div>
										</div>
									</li>
								</ul>
							</div>

							<script type="text/javascript">
								$(function() {
									$('#home_slider').flexslider({
										animation : 'slide',
										controlNav : true,
										directionNav : true,
										animationLoop : true,
										slideshow : false,
										useCSS : false
									});

								});
							</script>
						</div>

						<div class="line_2" style="margin: 34px 0px 28px;"></div>

						<div class="block_home_col_1">
							<c:set var="newsHonorList" value="${sessionScope.listNewsIndex1}"></c:set>
							<c:forEach items="${newsHonorList}" var="news">
								<div class="block_home_post">
									<div class="pic">
										<a href="${ctx}/news_post.jsp" class="w_hover"> <img src="${ctx}/newsImgUp/${news.coverImgUrl}" alt="" width="65px" height="43px" ;/> <span></span>
										</a>
									</div>

									<div class="text">
										<p class="title">
											<a href="${ctx}/news_post.jsp">${fn:substring(news.newsTitle, 0,25)} <c:if test="${fn:length(news.newsTitle)>25}">...</c:if></a>
										</p>
										<div class="date">
											<p>
												<fmt:formatDate value="${news.publishTime}" pattern="yyyy-MM-dd" />
											</p>
										</div>
										<div class="icons">
											<ul>
												<li><a href="#" class="views">${news.views}</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="line_3" style="margin: 14px 0px 17px;"></div>
							</c:forEach>

							<!--  <div class="block_home_post">
								<div class="pic">
									<a href="${ctx}/news_post_style2.jsp" class="w_hover">
										<img src="${ctx}/images/pic_home_news_2.jpg" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="${ctx}/news_post_listen.jsp">宪法修正案(草案)：对中国现行宪法作出21条修改。</a></p>
									<div class="date"><p>11 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">74</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
                            <div class="line_3" style="margin:14px 0px 17px;"></div>-->

							<!--  <div class="block_home_post">
								<div class="pic">
									<a href="${ctx}/news_post.jsp" class="w_hover">
										<img src="${ctx}/images/pic_home_news_3.jpg" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="${ctx}/news_post_video.jsp">宪法修正案(草案)：对中国现行宪法作出21条修改。</a></p>
									<div class="date"><p>11 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">88</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>-->

						</div>

						<div class="block_home_col_2">
							<div class="line_3 first" style="margin: 14px 0px 17px;"></div>
							<div class="block_home_post">
								<div class="pic">
									<a href="${ctx}/news_post_style1.jsp" class="w_hover"> <img src="${ctx}/images/pic_home_news_4.jpg" alt="" /> <span></span>
									</a>
								</div>

								<div class="text">
									<p class="title">
										<a href="${ctx}/news_post_style1.jsp">宪法修正案(草案)：对中国现行宪法作出21条修改。</a>
									</p>
									<div class="date">
										<p>11 July, 2012</p>
									</div>
									<div class="icons">
										<ul>
											<li><a href="#" class="views">56</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="line_3" style="margin: 14px 0px 17px;"></div>

							<div class="block_home_post">
								<div class="pic">
									<a href="${ctx}/news_post_style3.jsp" class="w_hover"> <img src="${ctx}/images/pic_home_news_5.jpg" alt="" /> <span></span>
									</a>
								</div>

								<div class="text">
									<p class="title">
										<a href="${ctx}/news_post_style2.jsp">宪法修正案(草案)：对中国现行宪法作出21条修改。</a>
									</p>
									<div class="date">
										<p>11 July, 2012</p>
									</div>
									<div class="icons">
										<ul>
											<li><a href="#" class="views">74</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="line_3" style="margin: 14px 0px 17px;"></div>

							<div class="block_home_post">
								<div class="pic">
									<a href="${ctx}/news_post.jsp" class="w_hover"> <img src="${ctx}/images/pic_home_news_6.jpg" alt="" /> <span></span>
									</a>
								</div>

								<div class="text">
									<p class="title">
										<a href="${ctx}/news_post_style3.jsp">宪法修正案(草案)：对中国现行宪法作出21条修改。</a>
									</p>
									<div class="date">
										<p>11 July, 2012</p>
									</div>
									<div class="icons">
										<ul>
											<li><a href="#" class="views">88</a></li>
										</ul>
									</div>
								</div>
							</div>

						</div>
						<div class="clearboth"></div>

						<div class="line_3" style="margin: 14px 0px 13px;"></div>
						<a href="${ctx}/main_news.jsp" class="lnk_all_news fl">全部新闻</a>
						<div class="clearboth"></div>
						<div class="line_3" style="margin: 13px 0px 35px;"></div>

						<h3 style="font-size: 16px;">今日新闻</h3>
						<div class="line_4" style="margin: -4px 0px 18px;"></div>

						<div class="block_topic_news">
							<article class="block_topic_post">
								<p class="title">
									<a href="${ctx}/Bgimgshow.jsp">菲律宾近400名警官被革职 杜特尔特：警队“已腐烂”。</a>
								</p>
								<div class="f_pic">
									<a href="${ctx}/Bgimgshow.jsp" class="general_pic_hover scale"><img src="${ctx}/images/pic_home_main_news_1.jpg" alt="" /></a>
								</div>
								<p class="text">菲律宾总警司约翰·布拉拉考2日说，自2016年年中以来，已有将近400名警官因不当行为遭革职。</p>
								<div class="info">
									<div class="date">
										<p>11 July, 2012</p>
									</div>

									<div class="r_part">
										<div class="category">
											<p>
												<a href="#">Business</a>
											</p>
										</div>
										<a href="#" class="views">183</a>
									</div>
								</div>
							</article>

							<article class="block_topic_post">
								<p class="title">
									<a href="${ctx}/Bgimgshow.jsp">菲律宾近400名警官被革职 杜特尔特：警队“已腐烂”</a>
								</p>
								<div class="f_pic">
									<a href="${ctx}/Bgimgshow.jsp" class="general_pic_hover scale"><img src="${ctx}/images/pic_home_main_news_2.jpg" alt="" /></a>
								</div>
								<p class="text">菲律宾总警司约翰·布拉拉考2日说，自2016年年中以来，已有将近400名警官因不当行为遭革职。</p>
								<div class="info">
									<div class="date">
										<p>11 July, 2012</p>
									</div>

									<div class="r_part">
										<div class="category">
											<p>
												<a href="#">Business</a>
											</p>
										</div>
										<a href="#" class="views">183</a>
									</div>
								</div>
							</article>

							<article class="block_topic_post">
								<p class="title">
									<a href="${ctx}/Bgimgshow.jsp">菲律宾近400名警官被革职 杜特尔特：警队“已腐烂”</a>
								</p>
								<div class="f_pic">
									<a href="${ctx}/Bgimgshow.jsp" class="general_pic_hover scale"><img src="${ctx}/images/pic_home_main_news_3.jpg" alt="" /></a>
								</div>
								<p class="text">菲律宾总警司约翰·布拉拉考2日说，自2016年年中以来，已有将近400名警官因不当行为遭革职。</p>
								<div class="info">
									<div class="date">
										<p>11 July, 2012</p>
									</div>

									<div class="r_part">
										<div class="category">
											<p>
												<a href="#">Business</a>
											</p>
										</div>
										<a href="#" class="views">183</a>
									</div>
								</div>
							</article>

							<article class="block_topic_post">
								<p class="title">
									<a href="${ctx}/Bgimgshow.jsp">菲律宾近400名警官被革职 杜特尔特：警队“已腐烂”</a>
								</p>
								<div class="f_pic">
									<a href="${ctx}/Bgimgshow.jsp" class="general_pic_hover scale"><img src="${ctx}/images/pic_home_main_news_4.jpg" alt="" /></a>
								</div>
								<p class="text">菲律宾总警司约翰·布拉拉考2日说，自2016年年中以来，已有将近400名警官因不当行为遭革职。</p>
								<div class="info">
									<div class="date">
										<p>11 July, 2012</p>
									</div>

									<div class="r_part">
										<div class="category">
											<p>
												<a href="#">Business</a>
											</p>
										</div>
										<a href="#" class="views">183</a>
									</div>
								</div>
							</article>

						</div>

						<div class="line_3" style="margin: 20px 0px 24px;"></div>

						<div class="block_pager">
							<a href="#" class="prev">Previous</a> <a href="#" class="next">Next</a>

							<div class="pages">
								<ul>
									<li class="current"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
								</ul>
							</div>

							<div class="clearboth"></div>
						</div>

						<div class="line_2" style="margin: 24px 0px 35px;"></div>

						<h3 style="font-size: 16px;">温馨提示</h3>
						<div class="line_4" style="margin: -4px 0px 18px;"></div>

						<div class="block_best_materials">
							<div class="slider">
								<div id="best_materials_slider" class="flexslider">
									<ul class="slides">
										<li>
											<div class="block_best_material_post">
												<div class="f_pic">
													<a href="${ctx}/news_post.jsp" class="w_hover"><img src="${ctx}/images/pic_home_best_materials_1.jpg" alt="" /><span></span></a>
												</div>
												<p class="title">
													<a href="${ctx}/news_post.jsp">特朗普将正式公布进口钢铝关税 不豁免任何国家</a>
												</p>
												<div class="info">
													<div class="date">
														<p>08 July, 2012</p>
													</div>
													<div class="category">
														<p>
															<a href="#">Business</a>
														</p>
													</div>
												</div>
											</div>
										</li>

										<li>
											<div class="block_best_material_post">
												<div class="f_pic">
													<a href="${ctx}/news_post.jsp" class="w_hover"><img src="${ctx}/images/pic_home_best_materials_2.jpg" alt="" /><span></span></a>
												</div>
												<p class="title">
													<a href="${ctx}/news_post.jsp">特朗普将正式公布进口钢铝关税 不豁免任何国家</a>
												</p>
												<div class="info">
													<div class="date">
														<p>08 July, 2012</p>
													</div>
													<div class="category">
														<p>
															<a href="#">People</a>
														</p>
													</div>
												</div>
											</div>
										</li>

										<li>
											<div class="block_best_material_post">
												<div class="f_pic">
													<a href="${ctx}/news_post.jsp" class="w_hover"><img src="${ctx}/images/pic_home_best_materials_3.jpg" alt="" /><span></span></a>
												</div>
												<p class="title">
													<a href="${ctx}/news_post.jsp">特朗普将正式公布进口钢铝关税 不豁免任何国家</a>
												</p>
												<div class="info">
													<div class="date">
														<p>08 July, 2012</p>
													</div>
													<div class="category">
														<p>
															<a href="#">Technology</a>
														</p>
													</div>
												</div>
											</div>
										</li>

										<li>
											<div class="block_best_material_post">
												<div class="f_pic">
													<a href="${ctx}/news_post.jsp" class="w_hover"><img src="${ctx}/images/pic_home_best_materials_4.jpg" alt="" /><span></span></a>
												</div>
												<p class="title">
													<a href="${ctx}/news_post.jsp">特朗普将正式公布进口钢铝关税 不豁免任何国家</a>
												</p>
												<div class="info">
													<div class="date">
														<p>08 July, 2012</p>
													</div>
													<div class="category">
														<p>
															<a href="#">Business</a>
														</p>
													</div>
												</div>
											</div>
										</li>

										<li>
											<div class="block_best_material_post">
												<div class="f_pic">
													<a href="${ctx}/news_post.jsp" class="w_hover"><img src="${ctx}/images/pic_home_best_materials_5.jpg" alt="" /><span></span></a>
												</div>
												<p class="title">
													<a href="${ctx}/news_post.jsp">特朗普将正式公布进口钢铝关税 不豁免任何国家</a>
												</p>
												<div class="info">
													<div class="date">
														<p>08 July, 2012</p>
													</div>
													<div class="category">
														<p>
															<a href="#">People</a>
														</p>
													</div>
												</div>
											</div>
										</li>

										<li>
											<div class="block_best_material_post">
												<div class="f_pic">
													<a href="${ctx}/news_post.jsp" class="w_hover"><img src="${ctx}/images/pic_home_best_materials_6.jpg" alt="" /><span></span></a>
												</div>
												<p class="title">
													<a href="${ctx}/news_post.jsp">特朗普将正式公布进口钢铝关税 不豁免任何国家</a>
												</p>
												<div class="info">
													<div class="date">
														<p>08 July, 2012</p>
													</div>
													<div class="category">
														<p>
															<a href="#">Technology</a>
														</p>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>

							<script type="text/javascript">
								$(function() {
									$('#best_materials_slider').flexslider({
										animation : 'slide',
										controlNav : false,
										directionNav : true,
										animationLoop : false,
										slideshow : false,
										itemWidth : 213,
										itemMargin : 0,
										minItems : 1,
										maxItems : 3,
										move : 1,
										useCSS : false
									});
								});
							</script>
						</div>

						<div class="line_2" style="margin: 20px 0px 0px;"></div>

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
<!-- 回车登陆 -->
<script type="text/javascript">
	$(document).keyup(function(e) {
		if (e.keyCode == 13) {
			$("#submit1").click()
		}
	});
</script>
</html>