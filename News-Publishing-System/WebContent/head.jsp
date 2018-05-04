<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!-- HEADER BEGIN -->
<header>
	<div id="header">
		<section class="top">
			<div class="inner">
				<div class="fl">
					<div class="block_top_menu">
						<ul>
							<li class="current"><a href="${ctx}/index.jsp">首页</a></li>
							<li><a href="${ctx}/about.jsp">联系我们</a></li>
						</ul>
					</div>
				</div>

				<div class="fr">
					<div class="block_top_menu">
						<ul>
							<c:if test="${loginUser==null}">
								<li class="current"><a href="${ctx}/login.jsp">登录</a></li>
								<li><a href="${ctx}/registration.jsp">注册</a></li>
							</c:if>

							<c:if test="${loginUser!=null}">
								<li></li>
								<li style="color: #fff; font-size: 14px;">${loginUser.loginName},您好！</li>
								<li><a href="#">退出</a></li>
							</c:if>
						</ul>
					</div>
					<div style="float: left; padding-top: 10px; padding-left: 20px;">
						<ul>
							<li>
								<div>
									<a href="${ctx}/self.jsp"> <img src="${ctx}/images/default.jpg" width="20px" height="20px" class="img-circle" /> <b class="caret"></b>
									</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="clearboth"></div>
			</div>
		</section>

		<section class="bottom">
			<div class="inner">
				<div id="logo_top">
					<a href="${ctx}/index.jsp"><img src="${ctx}/images/logo_top.png" alt="BusinessNews" title="BusinessNews" /></a>
				</div>

				<div class="block_today_date">
					<div class="num">
						<p id="num_top" />
					</div>
					<div class="other">
						<p class="month_year">
							<span id="year_top"></span>,<span id="month_top"></span>
						</p>
						<p id="day_top" class="day" />
					</div>
				</div>

				<div class="fr">
					<div class="block_languages">
						<div class="clearboth"></div>
					</div>

					<div class="block_search_top">
						<form action="${ctx}/Search/hibsearnews" method="post">
							<div class="field">
								<input type="text" class="w_def_text" title="输入新闻关键词" name="s" />
							</div>
							<input type="submit" class="button" value="Search" />

							<div class="clearboth"></div>
						</form>
					</div>
				</div>

				<div class="clearboth"></div>
			</div>
		</section>

		<section class="section_main_menu">
			<div class="inner">
				<nav class="main_menu">
					<ul>
						<li class="current_page_item"><a href="${ctx}/index.jsp">首页</a></li>
						<li data-content="business"><a href="${ctx}/newsFront/frontListNewsByType?newsTypeName='财经'">财经</a></li>
						<li data-content="technology"><a href="${ctx}/newsFront/frontListNewsByType?newsTypeName='财经'">科技</a></li>
						<li data-content="education"><a href="${ctx}/newsFront/frontListNewsByType?newsTypeName='教育'">教育</a></li>
						<li data-content="education"><a href="${ctx}/newsFront/frontListNewsByType?newsTypeName='体育'">体育</a></li>
						<li data-content="education"><a href="${ctx}/newsFront/frontListNewsByType?newsTypeName='娱乐'">娱乐</a></li>
						<li data-content="education"><a href="${ctx}/newsFront/frontListNewsByType?newsTypeName='军事'">军事</a></li>
						<li data-content="education"><a href="${ctx}/newsFront/frontListNewsByType?newsTypeName='旅游'">旅游</a></li>
						<li data-content="education"><a href="${ctx}/newsFront/frontListNewsByType?newsTypeName='政务'">政务</a></li>

						<li><a href="#">企业相关</a>
							<ul>
								<li><a href="${ctx}/about.jsp">关于我们</a></li>
								<li><a href="${ctx}/about_author.jsp">记者们</a></li>
								<li><a href="${ctx}/contact.jsp">联系我们</a></li>

							</ul>
							</li>
						<li data-content="education"><a>文化</a></li>
						<li data-content="education"><a>生活</a></li>

					</ul>
				</nav>
			</div>
		</section>


		<section class="section_secondary_menu">
			<div class="inner">
				<div class="block_clock">
					<p>
						当前时间 <span id="time"></span>
					</p>
				</div>
			</div>
		</section>
	</div>
</header>
<!-- HEADER END -->