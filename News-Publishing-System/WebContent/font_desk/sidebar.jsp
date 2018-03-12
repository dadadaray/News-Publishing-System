<%@ page language="java" contentType="text/html;	charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
    <!-- CONTENT RIGHT BEGIN -->
    <div class="sidebar">
    	<div class="block_subscribes_sidebar">
        	<div class="service">
            	<a href="#" class="rss">
                	<span class="num">11 234</span>
                    <span class="people">围脖</span>
                </a>
            </div>
            
            <div class="service">
            	<a href="#" class="tw">
                	<span class="num">781</span>
                    <span class="people">qq空间</span>
                </a>
            </div>
            
            <div class="service">
            	<a href="#" class="fb">
                	<span class="num">341</span>
                    <span class="people">票圈</span>
                </a>
            </div>
        </div>
        
      <div class="separator" style="height:31px;"></div>
        
        <div class="block_popular_posts">
        	<h4>流行元素</h4>
            
        	<div class="article">
				<div class="pic">
					<a href="#" class="w_hover">
						<img src="${ctx}/font_desk/images/pic_popular_post_1.jpg" alt="" />
						<span></span>
					</a>
				</div>
                        
				<div class="text">
					<p class="title"><a href="#">
						中国工厂太魔幻：未来每2分钟下线一辆汽车。</a></p>
					<div class="date"><p>2018年1月20日</p></div>
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
						<img src="${ctx}/font_desk/images/pic_popular_post_2.jpg" alt="" />
						<span></span>
					</a>
				</div>
                        
				<div class="text">
					<p class="title"><a href="#">
						中国工厂太魔幻：未来每2分钟下线一辆汽车</a></p>
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
						<img src="${ctx}/font_desk/images/pic_popular_post_3.jpg" alt="" />
						<span></span>
					</a>
				</div>
                        
				<div class="text">
					<p class="title"><a href="#">
						中国工厂太魔幻：未来每2分钟下线一辆汽车</a></p>
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
        	<h4>热点视频</h4>
            
            <div class="content">
            	<a href="#" class="view_all">全部视频</a>
            	<div class="media">
                 <!--<a href="http://www.youtube.com/watch?v=ySIvism2af8" class="general_pic_hover play no_fx" data-rel="prettyPhoto" title="Popular Video"><img src="images/pic_pop_video.jpg" alt="85-" /></a>-->
                 <video width="240" height="138" poster="${ctx}/font_desk/images/pic_pop_video.jpg" controls="controls">
                 <source src="${ctx}/font_desk/vedio/vtest.mp4" type="video/ogg">
                 <source src="${ctx}/font_desk/vedio/vtest.mp4" type="video/mp4">
                 <source src="${ctx}/font_desk/vedio/vtest.mp4" type="video/webm">
                 <object data="${ctx}/font_desk/vedio/vtest.mp4" width="240" height="138">
                 </object>
            </video> 

                <!--<video width="250" height="200" class="general_pic_hover play no_fx" src="${ctx}/font_desk/vedio/vtest.mp4" poster="${ctx}/font_desk/images/pic_pop_video.jpg" autoplay="autoplay"></video>-->    
                 

                </div>
                <p><a href="video.jsp">
					中国工厂太魔幻：未来每2分钟下线一辆汽车</a> <img src="${ctx}/font_desk/images/icon_video.gif" alt="" /></p>
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
        	<h4>流行图片</h4>
            
            <div class="content">
            	<a href="#" class="view_all">全部图片</a>
            	<div class="media"><a href="images/pic_pop_photo_big.jpg" class="general_pic_hover zoom no_fx" data-rel="prettyPhoto" title="Popular Photo"><img src="${ctx}/font_desk/images/pic_pop_photo.jpg" alt="" /></a></div>
                <p><a href="blog_post_w_slider.jsp">
					中国工厂太魔幻：未来每2分钟下线一辆汽车。</a> <img src="${ctx}/font_desk/images/icon_photo.gif" alt="" /></p>
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
    <!-- CONTENT RIGHT END -->