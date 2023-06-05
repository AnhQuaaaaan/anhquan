<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assest/main.css">
    <link rel="stylesheet" href="./assest/about.css">
    <link rel="stylesheet" href="./assest/log.css">
    <link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./fontawesome-free-6.4.0-web/css/all.css">
    <title>Blog Channel</title>
</head>
<body>
    <div class="contain">
    <div class="header-main">
        <div class="logo1">
            <div class="logo">
                    <img src="./IMG/z4258760985767_9c327c4bde8f4350aedf2dd107a336a9.jpg">
            </div>
        </div>
        <div class="menu">
                <ul>
                    <li><a href="index.jsp"><i class="fa-solid fa-house"></i> Home</a></li>
                    <li><a href="about.jsp"><i class="fa-solid fa-user"></i> About</a></li>
                    <li><a href="cakect"><i class="fa-solid fa-cake-candles"></i> Sản phẩm</a>
                        <ul class="sub-menu">
                            <li><a href="cakect">Bánh ngọt</a></li>
                            <li><a href="">Nước uống</a></li>
                            <li><a href="product.jsp">Công thức</a></li>
                        </ul>
                    </li>
                    <c:if test="${sessionScope.acc== null }">
                    <li><a href="login"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
					</c:if>
					<c:if test="${sessionScope.acc!= null }">
                    <li><a href="showcart"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
					</c:if>
					<c:if test="${sessionScope.acc!= null }">
						<li><a ><i class="fa-solid fa-right-to-bracket"></i> Hello ${sessionScope.acc.email}</a></li>
                    	<li><a href="logouttc"><i class="fa-solid fa-right-to-bracket"></i> Đăng xuất</a></li>
					</c:if>
					<c:if test="${sessionScope.acc== null }">

                    	<li><a href="log.jsp"><i class="fa-solid fa-right-to-bracket"></i> Đăng nhập</a></li>
					</c:if>
                 </ul>
        </div>
        <div class="box1">
            <div class="box">
                <input type="text" placeholder="Search here">
                <a><i class="fa-solid fa-magnifying-glass" style="font-size: 30px"></i></a>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="login">
            <div class="login__container">
              <h1>Đăng Nhập</h1>
              <p class="text-danger">${mess}</p>
              <form action="logintc" method="post">
                <h5>Email</h5>
                <input name="email" type="text" class="input-login-username" />
                <h5>Password</h5>
                <input name="pass" type="password" class="input-login-password" />
                <button type="submit" class="login__signInButton">Đăng Nhập</button>
              </form>
              <a href="./sign.jsp" class="login__registerButton"
                >Tạo tài khoản mới</a
              >
            </div>
          </div>
    </div>
    <div class="footer"> 
        <div class="About">
            <div class="About-text">ABOUT ME</div>
           <div class="About-text1">NTK Blog là chuyên trang chia sẻ các kiến thức, trải nghiệm về cuộc sống của tác giả nhằm đem đến cho người xem những kiến thức bổ ích và điều thú vị xoay quanh cảm nhận và góc nhìn của tác giả.</div>
        </div>
        <div class="Quick-link">
            <div class="list">
                <ul>
                    <li>USEFUL LINKS</li>
                    <li><a href="index.jsp"><i class="fa-solid fa-house"></i> Home</a></li>
                    <li><a href="about.jsp"><i class="fa-solid fa-user"></i> About</a></li>
                    <li><a href="cakect"><i class="fa-solid fa-cake-candles"></i> Sản Phẩm</a></li>
                    <li><a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
                </ul>
            </div>
        </div>
        <div class="follow">
            <div class="contact">
                <u>
                    <li><a href="">FOLLOW ME</a></li>
                    <li><a href=""><i class="fa-brands fa-facebook"></i> FACEBOOK</a></li>
                    <li><a href=""><i class="fa-brands fa-instagram"></i> INSTAGRAM</a></li>
                    <li><a href=""><i class="fa-brands fa-tiktok"></i> TIK TOK</a></li>
                    <li><a href=""><i class="fa-brands fa-twitter"></i> TWITTER</a></li>
                </u>
            </div>
        </div>
    </div>
    </div>
</body>
</html>