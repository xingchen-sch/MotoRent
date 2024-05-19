<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String basePath = request.getContextPath() + "/";
	String Path = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+basePath+"/";
 %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link rel="stylesheet" href="css/login.css">

		<title>校园二手交易平台</title>
	</head>

	<body>
		<section>
			<!-- 背景颜色 -->
			<div class="color"></div>
			<div class="color"></div>
			<div class="color"></div>
			<div class="box">
				<!-- 背景圆 -->
				<div class="circle" style="--x:0"></div>
				<div class="circle" style="--x:1"></div>
				<div class="circle" style="--x:2"></div>
				<div class="circle" style="--x:3"></div>
				<div class="circle" style="--x:4"></div>
				<!-- 登录框 -->
				<div class="container">
					<div class="form">
						<h2>注册</h2>
						<form action="<%=basePath%>registerSvl" method="post">
							<div class="inputBox">
								<input type="text" placeholder="设置用户名" required="" name="uname">
							</div>
							<span>${remsg}</span>
							<div class="inputBox">
								<input type="password" placeholder="设置密码" required="" id="pw" name="pwd">
							</div>
							<div class="inputBox">
								<input type="password" placeholder="确认密码" id="repw" required="" onkeyup="checkpassword()" >
							</div>
							<span id="tishi"></span></input>
							<div class="inputBox">
								<select  required="" name="role">
									<option value="0">请选择</option>
									<option value="1">管理员</option>
									<option value="2">用户</option>
								</select>
							</div>
							<div class="inputBox" id="box">
								<input class="input" placeholder="请输入手机号" required="" name="tel">
							</div>
							
							<div class="inputBox">
								<input type="submit" value="注册">
							</div>
							<p class="text-muted text-center"><small>已经有账户了？</small><a href="<%=basePath %>/loginSvl">点此登录</a>
                            </p>

						</form>
					</div>
				</div>
			</div>
			
			<script type="text/javascript">
                 function checkpassword() {
                 var password = document.getElementById("pw").value;
                 var repassword = document.getElementById("repw").value;
                 if(password == repassword) {
                    document.getElementById("tishi").innerHTML="<br><font color='green'>两次密码输入一致</font>";
                    document.getElementById("submit").disabled = false;
          
                 }else{
                 document.getElementById("tishi").innerHTML="<br><font color='red'>两次输入密码不一致!</font>";
                 document.getElementById("submit").disabled = true; 
                       }
                 }
         </script>
		</section>
	</body>

</html>
