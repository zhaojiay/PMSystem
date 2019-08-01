<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>人事管理网站</title>
		<meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/unicorn.login.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
    <script type="text/javascript">
    	if(${ param.status } == 0){
    		alert("登录失败");
    	}
    </script>
    <body>
    	<% 
			Cookie[] cookies = request.getCookies();
			String value = "";
			if(cookies != null){
				for(Cookie cookie : cookies){
					if("uname".equals(cookie.getName())){
						value = cookie.getValue();
						break;
					}
				}
			}
		%>
        <div id="logo" style="text-align:center;color:#fff;">
            <h3>人事管理系统网站<h3>
        </div>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="${ pageContext.request.contextPath }/LoginServlet" method="post"/>
				<p>请在输入用户名和密码进行登录</p>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on" title="用户名"><i class="icon-user"></i></span>
                            <input type="text" placeholder="请输入用户名" name="uname" value="<%= value %>"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on" title="密码"><i class="icon-lock"></i></span>
                            <input type="password" placeholder="请输入密码" name="password"/>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link" id="to-recover">忘记密码?</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="登录" /></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical" />
				<p align="left">请填写您的公司邮箱地址,我们会将新的随机密码发送给您的邮箱。</p>
				<div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on" title="邮箱地址"><i class="icon-envelope"></i></span>
                            <input type="text" placeholder="请输入邮箱地址" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link" id="to-login">&lt; 返回登录</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="重置密码" /></span>
                </div>
            </form>
        </div>
        
        <script src="js/jquery.min.js"></script>  
        <script src="js/unicorn.login.js"></script> 
    </body>
</html>
