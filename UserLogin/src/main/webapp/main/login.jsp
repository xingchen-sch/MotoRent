<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String basePath = request.getContextPath() + "/";
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
                    <form action="<%=basePath%>loginSvl" method="post">
                    <h2>校园二手交易平台</h2>
                        <div class="inputBox">
                            <input type="text" placeholder="用户名" required="" name="uname">

                        </div>
                        <div class="inputBox">
                            <input type="password" placeholder="密码" required="" name="pwd">
                        </div>
                        <div class="inputBox">
                            <input type="submit" value="登录">

                        </div>
                        <span>${msg}</span>
                        <p class="forget">忘记密码?<a href="#">
                                点击这里
                            </a></p>
                        <p class="forget">没有账户?<a href="<%=basePath %>/registerSvl">
                                注册
                            </a></p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>

</html>
</body>
</html>