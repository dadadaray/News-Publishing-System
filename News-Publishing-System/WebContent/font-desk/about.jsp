<%@ page language="java" contentType="text/html;	charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!doctype html>
<html>

<head>
<title>BusinessNews</title>

<meta name="keywords" content="" />
<meta name="description" content="" />

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width" />

<!--[if lt IE 9]>
<script type="text/javascript" src="layout/plugins/html5.js"></script>
<![endif]-->

<link rel="stylesheet" href="layout/style.css" type="text/css" />

<script type="text/javascript" src="layout/js/jquery.js"></script>

<!-- PrettyPhoto start -->
<link rel="stylesheet" href="layout/plugins/prettyphoto/css/prettyPhoto.css" type="text/css" />
<script type="text/javascript" src="layout/plugins/prettyphoto/jquery.prettyPhoto.js"></script>
<!-- PrettyPhoto end -->

<!-- jQuery tools start -->
<script type="text/javascript" src="layout/plugins/tools/jquery.tools.min.js"></script>
<!-- jQuery tools end -->

<!-- Calendar start -->
<link rel="stylesheet" href="layout/plugins/calendar/calendar.css" type="text/css" />
<script type="text/javascript" src="layout/plugins/calendar/calendar.js"></script>
<!-- Calendar end -->

<!-- ScrollTo start -->
<script type="text/javascript" src="layout/plugins/scrollto/jquery.scroll.to.min.js"></script>
<!-- ScrollTo end -->

<!-- MediaElements start -->
<link rel="stylesheet" href="layout/plugins/video-audio/mediaelementplayer.css" />
<script src="layout/plugins/video-audio/mediaelement-and-player.js"></script>
<!-- MediaElements end -->

<!-- FlexSlider start -->
<link rel="stylesheet" href="layout/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="layout/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

<!-- iButtons start -->
<link rel="stylesheet" href="layout/plugins/ibuttons/css/jquery.ibutton.css" type="text/css" />
<script type="text/javascript" src="layout/plugins/ibuttons/lib/jquery.ibutton.min.js"></script>
<!-- iButtons end -->

<!-- jQuery Form Plugin start -->
<script type="text/javascript" src="layout/plugins/ajaxform/jquery.form.js"></script>
<!-- jQuery Form Plugin end -->

<script type="text/javascript" src="layout/js/main.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>
	<div class="wrapper sticky_footer">
    	<!-- HEADER BEGIN -->
        <header>
            <div id="header">
            	<section class="top">
                	<div class="inner">
                    	<div class="fl">
                        	<div class="block_top_menu">
                            	<ul>
                                	<li class="current"><a href="index.html">é¦é¡µ</a></li>
                                    <li><a href="contact.html">èç³»æä»¬</a></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="fr">
                        	<div class="block_top_menu">
                            	<ul>
                                	<li class="current"><a href="registration.html" class="open_popup">ç»é</a></li>
                                    <li><a href="registration.html">æ³¨å</a></li>
                                    <li><a href="#">è®¢é</a></li>
                                </ul>
                            </div>
                            
                            <div class="block_social_top">
                            	<ul>
                                	<li><a href="#" class="fb">å¾®ä¿¡</a></li>
                                    <li><a href="#" class="tw">QQç©ºé´</a></li>
                                    <li><a href="#" class="rss">å¾®å</a></li>
                                </ul>
                            </div>
                        </div>
                        
                    	<div class="clearboth"></div>
                    </div>
                </section>
                
            	<section class="bottom">
                	<div class="inner">
                    	<div id="logo_top"><a href="index.html"><img src="images/logo_top.png" alt="BusinessNews" title="BusinessNews" /></a></div>
                        
                        <div class="block_today_date">
                        	<div class="num"><p id="num_top" /></div>
                            <div class="other">
                            	<p class="month_year"><span id="month_top"></span>, <span id="year_top"></span></p>
                                <p id="day_top" class="day" />
                            </div>
                        </div>
                        
                        <div class="fr">
                        	<div class="block_languages">
                                <div class="clearboth"></div>
                            </div>
                            
                            <div class="block_search_top">
                            	<form action="#" />
                                	<div class="field"><input type="text" class="w_def_text" title="è¾å¥æ°é»å³é®è¯" /></div>
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
								<li ><a href="index.html">é¦é¡µ</a>
                                </li>
							  	<li  data-content="business"><a href="business.html">åä¸</a>
                                <ul>
                                        <li><a href="#">å¸åº</a></li>
                                        <li><a href="#">è¡ç¥¨</a></li>
                                        <li><a href="#">æèµ</a></li>
                                        <li><a href="#">é¶è¡</a></li>
                                    </ul>
                                </li>
                                <li data-content="technology"><a href="technology.html">ç§æ</a>
                                <ul>
                                        <li><a href="#">äºèç½</a></li>
                                        <li><a href="#">ç¨åº</a></li>
                                        <li><a href="#">ææ¯</a></li>
                                        <li><a href="#">æ±½è½¦</a></li>
                                    </ul>
                                </li>
                                <li  data-content="education"><a href="education.html">æè²</a>
                                    <ul>
                                        <li><a href="#">é«æ ¡</a></li>
                                        <li><a href="#">èåå­¦åº</a></li>
                                        <li><a href="#">å¹è²äººæ</a></li>
                                        <li><a href="#">æäººæè²</a></li>
                                    </ul>
                                </li>
							  	<li><a href="media.html">åªä½</a>
                                	
                                    <ul>
                                    	<li><a href="media.html">å¨±ä¹</a></li>
                                        <li><a href="media_item.html">å¨æ¥</a></li>
                                    </ul>
                                </li>
							  	<li class="current_page_item"><a href="#">ä¼ä¸ç¸å³</a>
                                	
                                    <ul>
                                    	<li><a href="about.html">å³äºæä»¬</a></li>
                                        <li><a href="about_author.html">è®°èä»¬</a></li>
                                        <li><a href="contact.html">èç³»æä»¬</a></li>
                                        <li><a href="registration.html">æ³¨å</a></li>
                                        <li><a href="main_news.html">ä¸»è¦æ°é»</a></li>
                                        <li><a href="news_post_w_slider.html">å¸¦æ»å¨æ¡çæ°é»ç¨¿</a></li>
                                        <li><a href="news_post_w_video.html">è§é¢æ°é»åå¸</a></li>
                                    </ul>
                                </li>
							  	<li><a href="blog.html">åå®¢</a>
                                	
                                    <ul>
                                    	<li><a href="blog.html">Our Blog Style 1</a></li>
                                        <li><a href="blog_style_2.html">Our Blog Style 2</a></li>
                                        <li><a href="blog_post.html">åå®¢é¡µé¢</a></li>
                                        <li><a href="blog_post_w_slider.html">åä¸æ»å</a></li>
                                        <li><a href="blog_post_w_video.html">åä¸è§é¢</a></li>
                                    </ul>
                                </li>
		  		  		  		<li><a href="typography.html">ç­ä»£ç </a>
                                	
                                    <ul>
                                    	<li><a href="accordion.html">Accordeon</a></li>
                                        <li><a href="blockquote.html">Blockquote</a></li>
                                        <li><a href="table.html">Table</a></li>
                                        <li><a href="columns.html">Columns</a></li>
                                        <li><a href="pricing_table.html">Pricing Table</a></li>
                                        <li><a href="testimonials.html">Testimonials</a></li>
                                        <li><a href="boxes.html">Info Boxes</a></li>
                                        <li><a href="dropcaps.html">Dropcaps</a></li>
                                        <li><a href="tabs.html">Tabs</a></li>
                                        <li><a href="lists.html">List Slyle</a></li>
                                        <li><a href="buttons.html">Buttons</a></li>
                                        <li><a href="video.html">Video</a></li>
                                        <li><a href="typography.html">Typography</a></li>
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
                            	<li><a href="main_news_europe.html">ä¸çåäº</a></li>
                                <li><a href="main_news_usa.html">è¡ç¥¨</a></li>
                                <li><a href="main_news_m_east.html">ä¸­ä¸å±å¿</a></li>
                                <li><a href="main_news_money.html">Money</a></li>
                                <li><a href="main_news_science.html">åæ°ç§æ</a></li>
                                <li><a href="main_news_culture.html">æåæè²</a></li>
                                <li><a href="main_news_top.html">ç½®é¡¶æ°é»</a></li>
                          	</ul>
                        </nav>
                        
                        <div class="block_clock">
                        	<p>Time: <span id="time"></span></p>
                        </div>
                    </div>
                </section>
            </div>
        </header>
    	<!-- HEADER END -->
        
        <!-- CONTENT BEGIN -->
        <div id="content" class="right_sidebar">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">
                        <div class="block_breadcrumbs">
                            <div class="text"><p>å½åä½ç½®:</p></div>
                            
                            <ul>
                                <li><a href="index.html">é¦é¡µ</a></li>
                                <li>å³äºæä»¬</li>
                            </ul>
                        </div>
                        <div class="separator" style="height:30px;"></div>
                        
                        <h2>å³äºæå¿</h2>
                        
                        <p class="general_subtitle">
äºå®ä¸ï¼è¯»èå°å»ºç«çä¸ä¸ªç½é¡µçå¯è¯»çåå®¹çæ¶ååå¿çå®çå¸å±æ¯è®¸å¤ååå·²ç»é­åäºèåééã</p>
                        
                        <div class="line_4" style="margin:0px 0px 18px;"></div>
                        
                        <p>å¨æµè§çé¢æ¶ï¼ç±äºé¡µé¢çå¯è¯»åå®¹èåå¿ãä½¿ç¨ä¹±æ°åæçä¸ç¹æ¯ï¼å®æä¸ä¸ªæ´å¤ææ´å°çæ­£å¸¸åå¸çå­æ¯ï¼èä¸æ¯ä½¿ç¨ä½¿å®çèµ·æ¥åå¯è¯»ã</p>
                        <p>è®¸å¤æ¡é¢åºçè½¯ä»¶ååç½é¡µç¼è¾å¨ç°å¨ä½¿ç¨ä½ä¸ºé»è®¤çç¤ºèææ¬ï¼å¹¶ä¸ºä¹±æ°åææç´¢ä¼åç°å¾å¤ç½ç«ä»ç¶å¤äºèµ·æ­¥é¶æ®µãå¤å¹´æ¥ï¼åç§çæ¬é½å¨æ¼åï¼ææ¶æ¯å¶ç¶çï¼ææ¶æ¯ææçï¼æ³¨å¥å¹½é»ç­ï¼ã</p>
                        
                        <div class="separator" style="height:11px;"></div>
                        
                        <div class="block_staff">
                            <div class="title">
                                <p><span class="left">&nbsp;</span>
                                    æåå·¥ä½äººå
                                    <span class="right">&nbsp;</span></p>
                            </div>
                            
                            <div class="one_third">
                                <div class="person">
                                    <div class="photo"><a href="about_author.html"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                        <p class="position">Editor in chief:</p>
                                        <p class="name"><a href="about_author.html">ç½é©¬.æ¯ç®å°ä¼¯æ ¼</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                    <div class="photo"><a href="about_author.html"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                        <p class="position">Art Director:</p>
                                        <p class="name"><a href="about_author.html">Jason Kimber</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            
                            <div class="one_third">
                                <div class="person">
                                    <div class="photo"><a href="about_author.html"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                        <p class="position">Editor:</p>
                                        <p class="name"><a href="about_author.html">Sara Patrick</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                    <div class="photo"><a href="about_author.html"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                        <p class="position">Editor:</p>
                                        <p class="name"><a href="about_author.html">Karl Doe</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            
                            <div class="one_third last">
                                <div class="person">
                                    <div class="photo"><a href="about_author.html"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                        <p class="position">Newsmaker:</p>
                                        <p class="name"><a href="about_author.html">Mark Hugo</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                                
                                <div class="person">
                                    <div class="photo"><a href="about_author.html"><img src="images/ava_default_1.jpg" alt="" /></a></div>
                                    <div class="text">
                                        <p class="position">Designer:</p>
                                        <p class="name"><a href="about_author.html">Jessica Baja</a></p>
                                    </div>
                                    
                                    <div class="clearboth"></div>
                                </div>
                            </div>
                            
                            <div class="clearboth"></div>
                        </div>
                        
                        <div class="line_3" style="margin:24px 0px 19px;"></div>
                        
                        <p>å¦æä½ ä¸ç¼è¾æä»»ä½åä½ï¼è¯·ä¸æèç³»-<a href="mailto:webvisionss@gmail.com" class="lnk_red" target="_blank">webvisionss@gmail.com</a>.æ¨éè¦åå¸å¹¿åå¹¿åï¼è¯·ä¸å¹¿åé¨èç³»â<a href="mailto:weblionmedia@gmail.com" class="lnk_red" target="_blank">weblionmedia@gmail.com</a></p>
                        
                        <div class="line_2" style="margin:5px 0px 0px;"></div>
                        
                    </div>
                    
                    <div class="sidebar">
                    	<div class="block_subscribes_sidebar">
                        	<div class="service">
                            	<a href="#" class="rss">
                                	<span class="num">11 234</span>
                                    <span class="people">Subscribers</span>
                                </a>
                            </div>
                            
                            <div class="service">
                            	<a href="#" class="tw">
                                	<span class="num">781</span>
                                    <span class="people">Followers</span>
                                </a>
                            </div>
                            
                            <div class="service">
                            	<a href="#" class="fb">
                                	<span class="num">341</span>
                                    <span class="people">Subscribers</span>
                                </a>
                            </div>
                        </div>
                        
                      <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_posts">
                        	<h4>æµè¡åç´ </h4>
                            
                        	<div class="article">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_popular_post_1.jpg" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#">Packages and web page editors their default text.</a></p>
									<div class="date"><p>11 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">41</a></li>
                                            <li><a href="#" class="comments">22</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_3"></div>
                            
                            <div class="article">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_popular_post_2.jpg" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#">Web page editors their default model text, and a search for.</a></p>
									<div class="date"><p>07 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">24</a></li>
                                            <li><a href="#" class="comments">16</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_3"></div>
                            
                            <div class="article">
								<div class="pic">
									<a href="#" class="w_hover">
										<img src="images/pic_popular_post_3.jpg" alt="" />
										<span></span>
									</a>
								</div>
                                        
								<div class="text">
									<p class="title"><a href="#">Editors their default model text, and a search uncover.</a></p>
									<div class="date"><p>05 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">33</a></li>
                                            <li><a href="#" class="comments">25</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_2"></div>
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_stuff">
                        	<h4>ç­ç¹è§é¢</h4>
                            
                            <div class="content">
                            	<a href="#" class="view_all">Show all video</a>
                            	<div class="media"><a href="http://www.youtube.com/watch?v=ySIvism2af8" class="general_pic_hover play no_fx" data-rel="prettyPhoto" title="Popular Video"><img src="images/pic_pop_video.jpg" alt="" /></a></div>
                                <p><a href="blog_post_w_video.html">Publishing packages and web page editors their default model.</a> <img src="images/icon_video.gif" alt="" /></p>
                                <p class="date">11 July, 2012</p>
                            </div>
                            
                            <div class="info">
                            	<ul>
                                	<li class="comments"><a href="#">115</a></li>
                                    <li class="views"><a href="#">220</a></li>
                                </ul>
                            </div>
                            
                            <div class="clearboth"></div>
                            
                            <div class="line_2"></div>
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_calendar">
                        	<h4>Calendar</h4>
                            
                            <div class="calendar" id="calendar_sidebar">
                            </div>
                            
                            <script type="text/javascript">
								var today = new Date();
								var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
								$('#calendar_sidebar').DatePicker({
									flat : true,
									date : date,
									calendars : 1,
									starts : 1,
									locale : {
										days : ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
										daysShort : ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
										daysMin : ['S', 'M', 'T', 'W', 'T', 'F', 'S', 'S'],
										months : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
										monthsShort : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
										weekMin : 'wk'
									}
								});
							</script>
                            
                            <div class="line_2"></div>
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                        
                        <!-- <div class="block_twitter_widget">
                        	<h4>Twitter Widget</h4>
                            <div class="lnk_follow"><a href="#" target="_blank">Follow on Twitter</a></div>
                            
                            <div class="tweet">
                            	<script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
								<script type="text/javascript" src="layout/plugins/tweet/tweet.widget.js"></script>
                                <script type="text/javascript">
                                    // ('YOUR USERNAME','NUMBER OF POSTS');
                                    AddTweet('Web_Visions',1);
                                </script>
                            </div>
                            
                            <div class="line_2"></div>
                        </div> -->
                        
                        <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_stuff">
                        	<h4>æµè¡å¾ç</h4>
                            
                            <div class="content">
                            	<a href="#" class="view_all">Show all photos</a>
                            	<div class="media"><a href="images/pic_pop_photo_big.jpg" class="general_pic_hover zoom no_fx" data-rel="prettyPhoto" title="Popular Photo"><img src="images/pic_pop_photo.jpg" alt="" /></a></div>
                                <p><a href="blog_post_w_slider.html">Editors their default model text, and a search for will uncover many.</a> <img src="images/icon_photo.gif" alt="" /></p>
                                <p class="date">11 July, 2012</p>
                            </div>
                            
                            <div class="info">
                            	<ul>
                                	<li class="comments"><a href="#">100</a></li>
                                    <li class="views"><a href="#">134</a></li>
                                </ul>
                            </div>
                            
                            <div class="clearboth"></div>
                            
                            <div class="line_2"></div>
                        </div>
                        
                      	<div class="separator" style="height:31px;"></div>
                        
                        <!-- <div class="block_newsletter">
                        	<h4>Newsletter</h4>
                            
                            <form action="#" />
                            	<div class="field"><input type="text" class="w_def_text" title="Enter Your Email Addres" /></div>
                                <input type="submit" class="button" value="Subscribe" />
                                
                                <div class="clearboth"></div>
                            </form>
                        </div> -->
                        
                    </div>
                    
                	<div class="clearboth"></div>
                </div>
            </div>
        </div>
    	<!-- CONTENT END -->
        
        <!-- FOOTER BEGIN -->
        <footer>
            <div id="footer">
            	<section class="top">
                	<div class="inner">
                    	<div id="logo_bottom"><a href="index.html"><img src="images/logo_bottom.png" alt="" /></a></div>
                        
                        <div class="block_to_top">
                        	<a href="#">è¿åé¡¶é¨</a>
                        </div>
                    </div>
                </section>
                <script type="text/javascript">
                $(function(){
                  $(".block_to_top").click(function() {
                     $("html,body").animate({scrollTop:0}, 500); }); 
                                                      })

                </script>
                
            	<section class="middle">
                	<div class="inner">
                    	<div class="line_1"></div>
                        
                        <div class="block_footer_widgets">
                        	<div class="column">
                            	<h3>è®°è</h3>
                                
                                <div class="block_flickr_footer">
                                	<ul>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_1.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_2.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_3.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_4.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_5.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_6.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_7.png" alt="" /></a></li>
                                        <li><a href="http://www.flickr.com/" target="_blank"><img src="images/pic_flickr_8.png" alt="" /></a></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="column">
                            	<h3>æ ç­¾</h3>
                                
                                <div class="block_tags">
                                	<ul>
                                    	<li><a href="#">Business</a></li>
                                        <li><a href="#">Science</a></li>
                                        <li><a href="#">conferece</a></li>
                                        <li><a href="#">Photo</a></li>
                                        <li><a href="#">education</a></li>
                                        <li><a href="#">AI</a></li>
                                        <li><a href="#">Sport</a></li>
                                        <li><a href="#">mobile</a></li>
                                        <li><a href="#">Technology</a></li>
                                        <li><a href="#">computer</a></li>
                                        <li><a href="#">Video</a></li>
                                        <li><a href="#">apple</a></li>
                                        <li><a href="#">news</a></li>
                                        <li><a href="#">flowers</a></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="column">
                            	<h3>æµè§æå¤</h3>
                                
                                <div class="block_most_read_news">
                                	<div class="article">
                                    	<div class="pic">
                                        	<a href="news_post.html" class="w_hover">
                                            	<img src="images/pic_most_read_1.png" alt="" />
                                                <span></span>
                                            </a>
                                        </div>
                                        
                                        <div class="text">
                                        	<p class="title"><a href="news_post.html">Content of a page when randomised.</a></p>
                                            <p class="date">08 July, 2012</p>
                                        </div>
                                    </div>
                                    <div class="line_1"></div>
                                    
                                    <div class="article">
                                    	<div class="pic">
                                        	<a href="news_post.html" class="w_hover">
                                            	<img src="images/pic_most_read_2.png" alt="" />
                                                <span></span>
                                            </a>
                                        </div>
                                        
                                        <div class="text">
                                        	<p class="title"><a href="news_post.html">Established fact that a will be distracted.</a></p>
                                            <p class="date">08 July, 2012</p>
                                        </div>
                                    </div>
                                    <div class="line_1"></div>
                                    
                                    <div class="article">
                                    	<div class="pic">
                                        	<a href="news_post.html" class="w_hover">
                                            	<img src="images/pic_most_read_3.png" alt="" />
                                                <span></span>
                                            </a>
                                        </div>
                                        
                                        <div class="text">
                                        	<p class="title"><a href="news_post.html">Distracted by the readable content of a page.</a></p>
                                            <p class="date">08 July, 2012</p>
                                        </div>
                                    </div>
                                    <div class="line_1"></div>
                                    
                                </div>
                            </div>
                            
                            <div class="column">
                            	<h3>æè§åé¦</h3>
                                
                                <div class="block_contact_footer">
                                	<form action="#" />
                                    	<p class="text">å§å:</p>
                                        <div class="field"><input type="text" /></div>
                                        
                                        <p class="text">é®ç®±:</p>
                                        <div class="field"><input type="text" /></div>
                                        
                                        <p class="text">åé¦ä¿¡æ¯:</p>
                                        <div class="textarea"><textarea cols="1" rows="1"></textarea></div>
                                        
                                        <div class="clear_form"><input type="reset" value="éæ°å¡«å" /></div>
                                        <div class="send"><input type="submit" class="general_button" value="æäº¤" /></div>
                                        
                                        <div class="clearboth"></div>
                                    </form>
                                </div>
                            </div>
                            
                            <div class="clearboth"></div>
                        </div>
                    </div>
                </section>
                
            	<section class="bottom">
                	<div class="inner">
                    	<div class="line_1"></div>
                        
                        <div class="fr">
                        	<div class="block_menu_footer">
                            	<ul>
                                	<li><a href="business.html">Business</a></li>
                                    <li><a href="technology.html">Technology</a></li>
                                    <li><a href="education.html">Education</a></li>
                                    <li><a href="media.html">Media</a></li>
                                </ul>
                            </div>
                            
                            <div class="block_social_footer">
                            	<ul>
                                	<li><a href="#" class="fb">Facebook</a></li>
                                    <li><a href="#" class="tw">Twitter</a></li>
                                    <li><a href="#" class="rss">RSS</a></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="block_copyrights"><p>&copy; 2011 Business Press. All rights reserved.</p></div>
                    </div>
                </section>
            </div>
        </footer>
        <!-- FOOTER END -->
    </div>
</body>

</html>