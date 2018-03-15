<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
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
                                	<li class="current"><a href="${ctx}/login.jsp">登录</a></li>
                                    <li><a href="${ctx}/registration.jsp">注册</a></li>
                                    <li><a href="#">退出</a></li>
                                </ul>
                            </div>
                            <div style="float:left;padding-top:10px;padding-left:20px;">
                                <ul>
                                    <li>
                                        <div>
                                            <a href="${ctx}/self.jsp"> 
                                                <img src="${ctx}/images/default.jpg" width="20px" height="20px" class="img-circle" />
                                                <b class="caret"></b>
                                            </a>
                                        </div>
                                    </li>                                    
                                </ul>
                            </div>
                            
                            <div class="block_social_top">
                            	<ul>
                                	<li><a href="#" class="fb">微信</a></li>
                                    <li><a href="#" class="tw">QQ空间</a></li>
                                    <li><a href="#" class="rss">微博</a></li>
                                </ul>
                            </div>
                        </div>
                        
                    	<div class="clearboth"></div>
                    </div>
                </section>
                
            	<section class="bottom">
                	<div class="inner">
                    	<div id="logo_top"><a href="${ctx}/index.jsp"><img src="${ctx}/images/logo_top.png" alt="BusinessNews" title="BusinessNews" /></a></div>
                        
                        <div class="block_today_date">
                        	<div class="num"><p id="num_top" /></div>
                            <div class="other">
                            	<p class="month_year"><span id="year_top"></span>,<span id="month_top"></span></p>
                                <p id="day_top" class="day" />
                            </div>
                        </div>
                        
                        <div class="fr">
                        	<div class="block_languages">
                                <div class="clearboth"></div>
                            </div>
                            
                            <div class="block_search_top">
                            	<form action="#" />
                                	<div class="field"><input type="text" class="w_def_text" title="输入新闻关键词" /></div>
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
								<li class="current_page_item"><a href="${ctx}/index.jsp">首页</a>
                                </li>
							  	<li  data-content="business"><a href${ctx}/="business.jsp">财经</a>
                                <ul>
                                        <li><a href="#">金融</a></li>
                                        <li><a href="#">证券</a></li>
                                        <li><a href="#">理财</a></li>
                                        <li><a href="#">基金</a></li>
                                        <li><a href="#">保险</a></li>
                                    </ul>
                                </li>
                                <li data-content="technology"><a href="${ctx}/technology.jsp">科技</a>
                                <ul>
                                        <li><a href="#">互联网</a></li>
                                        <li><a href="#">程序</a></li>
                                        <li><a href="#">技术</a></li>
                                        <li><a href="#">汽车</a></li>
                                    </ul>
                                </li>
                                <li  data-content="education"><a href="${ctx}/education.jsp">教育</a>
                                    <ul>
                                        <li><a href="#">高校</a></li>
                                        <li><a href="#">著名学府</a></li>
                                        <li><a href="#">培育人才</a></li>
                                        <li><a href="#">成人教育</a></li>
                                    </ul>
                                </li>
                                <li  data-content="education"><a href="${ctx}/education.jsp">体育</a>
                                    <ul>
                                        <li><a href="#">中超</a></li>
                                        <li><a href="#">英超</a></li>
                                        <li><a href="#">NBA</a></li>
                                        <li><a href="#">CBA</a></li>
                                        <li><a href="#">综合</a></li>
                                    </ul>
                                </li>
                                <li  data-content="education"><a href="${ctx}/education.jsp">娱乐</a>
                                    <ul>
                                        <li><a href="#">明星</a></li>
                                        <li><a href="#">综艺</a></li>
                                        <li><a href="#">电影</a></li>
                                        <li><a href="#">电视剧</a></li>
                                        <li><a href="#">音乐</a></li>
                                    </ul>
                                </li>
                                <li  data-content="education"><a href="${ctx}/education.jsp">军事</a>
                                    <ul>
                                        <li><a href="#">中国军情</a></li>
                                        <li><a href="#">周边扫描</a></li>
                                        <li><a href="#">环球军情</a></li>
                                        <li><a href="#">军备动态</a></li>
                                    </ul>
                                </li>
                                <li  data-content="education"><a href="${ctx}/education.jsp">旅游</a>
                                    <ul>
                                        <li><a href="#">旅游咨询</a></li>
                                        <li><a href="#">达人游记</a></li>
                                        <li><a href="#">自助游</a></li>
                                        <li><a href="#">跟团游</a></li>
                                    </ul>
                                </li>
                               <!--  <li  data-content="education"><a href="education.html">政务</a>
                                    <ul>
                                        <li><a href="#">政策解读</a></li>
                                        <li><a href="#">经济发展</a></li>
                                        <li><a href="#">专题聚焦</a></li>
                                    </ul>
                                </li> -->
							  	<li><a href="${ctx}/media.jsp">媒体</a>
                                	
                                    <ul>
                                    	<li><a href="${ctx}/media.jsp">娱乐</a></li>
                                        <li><a href="${ctx}/media_item.jsp">周报</a></li>
                                    </ul>
                                </li>
							  	<li><a href="#">企业相关</a>
                                	
                                    <ul>
                                    	<li><a href="${ctx}/about.jsp">关于我们</a></li>
                                        <li><a href="${ctx}/about_author.jsp">记者们</a></li>
                                        <li><a href="${ctx}/contact.jsp">联系我们</a></li>
                                        <li><a href="${ctx}/registration.jsp">注册</a></li>
                                        <li><a href="${ctx}/main_news.jsp">主要新闻</a></li>
                                        <li><a href="${ctx}/news_post_w_slider.jsp">带滑动条的新闻稿</a></li>
                                        <li><a href="${ctx}/news_post_w_video.jsp">视频新闻发布</a></li>
                                    </ul>
                                </li>
							  	<li><a href="blog.jsp">博客</a>
                                	
                                    <ul>
                                    	<li><a href="${ctx}/blog.jsp">Our Blog Style 1</a></li>
                                        <li><a href="${ctx}/blog_style_2.jsp">Our Blog Style 2</a></li>
                                        <li><a href="${ctx}/blog_post.jsp">博客页面</a></li>
                                        <li><a href="${ctx}/blog_post_w_slider.jsp">后与滑块</a></li>
                                        <li><a href="${ctx}/blog_post_w_video.jsp">后与视频</a></li>
                                    </ul>
                                </li>
		  		  		  		<li><a href="${ctx}/typography.jsp">短代码</a>
                                	
                                    <ul>
                                    	<li><a href="${ctx}/accordion.jsp">Accordeon</a></li>
                                        <li><a href="${ctx}/blockquote.jsp">Blockquote</a></li>
                                        <li><a href="${ctx}/table.jsp">Table</a></li>
                                        <li><a href="${ctx}/columns.jsp">Columns</a></li>
                                        <li><a href="${ctx}/pricing_table.jsp">Pricing Table</a></li>
                                        <li><a href="${ctx}/testimonials.jsp">Testimonials</a></li>
                                        <li><a href="${ctx}/boxes.jsp">Info Boxes</a></li>
                                        <li><a href="${ctx}/dropcaps.jsp">Dropcaps</a></li>
                                        <li><a href="${ctx}/tabs.jsp">Tabs</a></li>
                                        <li><a href="${ctx}/lists.jsp">List Slyle</a></li>
                                        <li><a href="${ctx}/buttons.jsp">Buttons</a></li>
                                        <li><a href="${ctx}/video.jsp">Video</a></li>
                                        <li><a href="${ctx}/typography.jsp">Typography</a></li>
                                    </ul>
								</li>
						  </ul>
						</nav>
                    </div>
                </section>
                
                
                <section class="section_secondary_menu">
                	<div class="inner">
                    	<nav class="secondary_menu">
                        	<ul>
                            	<li><a href="${ctx}/main_news_europe.jsp">世界军事</a></li>
                                <li><a href="${ctx}/main_news_usa.jsp">股票</a></li>
                                <li><a href="${ctx}/main_news_m_east.jsp">中东局势</a></li>
                                <li><a href="${ctx}/main_news_money.jsp">金融</a></li>
                                <li><a href="${ctx}/main_news_science.jsp">创新科技</a></li>
                                <li><a href="${ctx}/main_news_culture.jsp">文化教育</a></li>
                                <li><a href="${ctx}/main_news_top.jsp">置顶新闻</a></li>
                          	</ul>
                        </nav>
                        
                        <div class="block_clock">
                        	<p>当前时间 <span id="time"></span></p>
                        </div>
                    </div>
                </section>
            </div>
        </header>
    	<!-- HEADER END -->
