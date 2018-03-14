<%@ page language="java" contentType="text/html;	charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
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
<link href="http://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic" rel="stylesheet" type="text/css" />

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

<script type="text/javascript">
	jQuery(function () {
	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

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
                        	<div class="text"><p>You are here:</p></div>
                            
                            <ul>
                            	<li><a href="${ctx}/index.jsp">Home</a></li>
                                <li>Media</li>
                            </ul>
                        </div>
                        <div class="separator" style="height:30px;"></div>
                        
                        <h2>Media</h2>
                        
                        <div class="line_4" style="margin:0px 0px 22px;"></div>
                        
                        <div class="block_media_f_pic">
                        	<img src="${ctx}/images/pic_media_big.jpg" alt="" />
                            <div class="caption">
                            	<p class="title"><a href="#">Many desktop publishing packages and web page.</a></p>
                                <div class="l_part"><p class="date">11 July, 2012</p></div>
                                <div class="r_part"><p class="type"><a href="#">5 photos</a></p></div>
                                
                                <div class="clearboth"></div>
                            </div>
                        </div>
                        
                        <div class="separator" style="height:19px;"></div>
                        
                        <div class="block_media_posts">
                        	<article class="block_media_post">
                                <div class="f_pic">
                                    <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_1.jpg" alt="" /><span class="hover"></span></a>
                                    <span class="type">3 photos</span>
                                </div>
                                    
                              	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publishing and web page.</a></p>
                                <p class="date">11 July, 2012</p>
                            </article>
                            
                            <article class="block_media_post">
                                <div class="f_pic">
                                    <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_2.jpg" alt="" /><span class="hover"></span></a>
                                    <span class="type">5 photos</span>
                                </div>
                                    
                              	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publishing and web page.</a></p>
                                <p class="date">11 July, 2012</p>
                            </article>
                            
                            <article class="block_media_post">
                                <div class="f_pic">
                                    <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_3.jpg" alt="" /><span class="hover"></span></a>
                                    <span class="type">Video</span>
                                </div>
                                    
                              	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publishing and web page.</a></p>
                                <p class="date">11 July, 2012</p>
                            </article>
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_tabs_type_3">
                            <div class="tabs">
                                <ul>
                                    <li><a href="#1" class="current">latest</a></li><!-- tab link -->
                                    <li><a href="#2">Popular</a></li><!-- tab link -->
                                </ul>
                            </div>
                                        
                            <div class="tab_content">
                                <!-- tab content goes here -->
                                <div class="block_media_posts_all">
                                	<article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_1.jpg" alt="" /><span class="hover"></span></a>
                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_2.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_3.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_4.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_5.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_6.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_7.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_8.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                </div>
                                
                                <div class="separator" style="height:12px;"></div>
                                
                                <a href="#" class="lnk_archive fr">Archive</a>
                                
                                <div class="clearboth"></div>
                                
                                <div class="block_tabs_pager">
                                	<ul>
                                    	<li><a href="#">1</a></li>
                                        <li class="current"><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">6</a></li>
                                        <li><a href="#">7</a></li>
                                        <li class="missed"><a href="#">...</a></li>
                                        <li><a href="#">26</a></li>
                                    </ul>
                                </div>
                            </div>
                                        
                            <div class="tab_content">
                                <!-- tab content goes here -->
                                <div class="block_media_posts_all">
                                	<article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_8.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_7.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_6.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_5.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_4.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_3.jpg" alt="" /><span class="hover"></span></a>                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_2.jpg" alt="" /><span class="hover"></span></a>
                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                    
                                    <article class="block_media_post_all">
                                    	<div class="f_pic">
                                            <a href="${ctx}/media_item.jsp"><img src="${ctx}/images/pic_media_tabs_1.jpg" alt="" /><span class="hover"></span></a>
                                        </div>
                                        
                                      	<p class="title"><a href="${ctx}/media_item.jsp">Many desktop publish packages.</a></p>
                                        <p class="date">11 July, 2012</p>
                                    </article>
                                </div>
                                
                                <div class="separator" style="height:12px;"></div>
                                
                                <a href="#" class="lnk_archive fr">Archive</a>
                                
                                <div class="clearboth"></div>
                            </div>
                                        
                            <script type="text/javascript">
                                $('.block_tabs_type_3 .tabs').tabs('.block_tabs_type_3 .tab_content', {
                                    initialIndex : 0
                                });
                            </script>
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
    
	<!-- login -->
	<%@ include file="login.jsp"%> 
	
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