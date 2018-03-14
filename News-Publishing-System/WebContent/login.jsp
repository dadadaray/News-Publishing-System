<%@ page language="java" contentType="text/html;	charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
    <!-- POPUP BEGIN -->
    <div id="overlay"></div>
    <div id="login" class="block_popup" style="height:246px">
        <div class="popup" style="height:245px">
            <a href="#" class="close">Close</a>
            
            <div class="content">
                <div class="title"><p>登 录 网 站</p></div>
                
                <div class="form">
                    <form action="#" id="signupForm1">
                        <div class="column">
                            <p class="label">邮  箱</p>
                            <div class="field"><input type="text" class="req" name="email1" id="email1"/></div>
                        </div>
                        
                        <div class="column">
                            <p class="label">密  码</p>
                            <div class="field"><input type="password" name="password1" id="password1"/></div>
                        </div>
                        
                        <div class="column_2" style="padding-top:10px;width:450px;height:50px;">
                            <p class="label">验证码</p>
                            <div class="field" style="float:left;">
                                <input type="text" name="codeValue" id="codeValue"> 
                            </div>
                            <img src="${ctx}/images/pic_most_read_3.png" width="150px" height="28px" style="float:left;padding-left:10px;" />
                        </div>
                        <div class="login-error1"></div>
                        <div class="column button">
                            <a href="#" class="enter" id="submit1"><span> 登  录</span></a>
                        </div>
                        
                        <div class="clearboth"></div>
                    </form>
                </div>
                
                <div class="subtitle" style="margin-bottom:0px;margin-top:20px;"></div>
                <div class="text"><p>还没有账号？请 <a href="${ctx}/registration.jsp" style="color:blue;">立即注册</a></p></div>
            </div>
        </div>
    </div>
    <!-- POPUP END -->