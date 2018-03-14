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
<link rel="stylesheet" href="${ctx}/layout/jiaodian.css" type="text/css" />

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
                            <div class="text"><p>当前位置:</p></div>
                            
                            <ul>
                                <li><a href="${ctx}/index.jsp">首页</a></li>
                                <li>商业</li>
                            </ul>
                        </div>
                        <div class="separator" style="height:30px;"></div>

                        <div class="news_list">
                            <a href="#">
                               <h2 class="list_top_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒</h2>
                               <p class="list_con_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒[详情]</p>
                            </a>
                            <div class="list_time">2月3日</div>
                            <div class="list_share"><a> 分享 </a>|<a> 评论 </a></div>
                            <div class="list_line"></div>
                        </div>
                         <div class="news_list">
                            <a href="#">
                               <h2 class="list_top_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒
                               </h2>
                               <p class="list_con_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒[详情]</p>
                            </a>
                            <div class="list_time">2月3日</div>
                            <div class="list_share"><a> 分享 </a>|<a> 评论 </a></div>
                            <div class="list_line"></div>
                        </div>
                         <div class="news_list">
                            <a href="#">
                               <h2 class="list_top_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒
                               </h2>
                               <p class="list_con_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒[详情]</p>
                            </a>
                            <div class="list_time">2月3日</div>
                            <div class="list_share"><a> 分享 </a>|<a> 评论 </a></div>
                            <div class="list_line"></div>
                        </div>
                         <div class="news_list">
                            <a href="#">
                               <h2 class="list_top_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒
                               </h2>
                               <p class="list_con_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒[详情]</p>
                            </a>
                            <div class="list_time">2月3日</div>
                            <div class="list_share"><a> 分享 </a>|<a> 评论 </a></div>
                            <div class="list_line"></div>
                        </div>
                         <div class="news_list">
                            <a href="#">
                               <h2 class="list_top_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒
                               </h2>
                               <p class="list_con_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒[详情]</p>
                            </a>
                            <div class="list_time">2月3日</div>
                            <div class="list_share"><a> 分享 </a>|<a> 评论 </a></div>
                            <div class="list_line"></div>
                        </div>
                         <div class="news_list">
                            <a href="#">
                               <h2 class="list_top_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒
                               </h2>
                               <p class="list_con_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒[详情]</p>
                            </a>
                            <div class="list_time">2月3日</div>
                            <div class="list_share"><a> 分享 </a>|<a> 评论 </a></div>
                            <div class="list_line"></div>
                        </div>
                         <div class="news_list">
                            <a href="#">
                               <h2 class="list_top_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒
                               </h2>
                               <p class="list_con_p">马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒[详情]</p>
                            </a>
                            <div class="list_time">2月3日</div>
                            <div class="list_share"><a> 分享 </a>|<a> 评论 </a></div>
                            <div class="list_line"></div>
                        </div>
                        
                         

                        <div class="line_4" style="margin:0px 0px 18px;"></div>
                        
                       <!--  <article class="block_topic_post_feature">
                            
                              
                               <div class="content">
                                <div class="title">
                                    <a href="news_post.jsp">
                                       马云商业说：掀起学习狂潮。气风云看世态炎凉。观沧海赏云卷云舒。
                                    </a>
                                </div>
                               <div class="info">
                                    <div class="date"><p>11 July, 2012</p></div>
                                    
                                    <div class="r_part">
                                        <div class="category"><p><a href="#">Business</a></p></div>
                                        <a href="#" class="views">220</a>
                                    </div>
                                </div>
                                    
                                
                            </div> -->
                            
                            <div class="clearboth"></div>
                        </article>
                        
                        <div class="line_2" style="margin:21px 0px 21px;"></div>
                        
                        <div class="block_topic_news">
                            
                           
                        </div>
                        
                        
                        <div class="block_pager">
                            <a href="#" class="prev">Previous</a>
                            <a href="#" class="next">Next</a>
                            
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