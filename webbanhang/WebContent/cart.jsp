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
    <link rel="stylesheet"href="./assest/about.css">
    <link rel="stylesheet"href="./assest/product.css">
    <link rel="stylesheet"href="./assest/cart.css">
    <link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./fontawesome-free-6.4.0-web/css/all.css">
    <link href="./assest/manager.css" rel="stylesheet" type="text/css" />
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
                            <li><a href="product.jsp">Công thức</a></li>
                        </ul>
                    </li>
                
					<c:if test="${sessionScope.acc!= null }">
					
					    <li><a href="showcart"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
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
      <div class="container">
		<div class="table-wrapper">
			
			<table class="table table-striped table-hover">
				<thead>
					<tr>
					
						<th>ID</th>
						<th>Tên Bánh</th>
						<th>Ảnh Minh Hoạ</th>
						<th>Số lượng</th>
						<th>Tổng giá tiền</th> 
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listcartt}" var="o">
						<tr>
						<td> <center>	${o.id} </center></td>
						
							<td>${o.name}</td>
							<td><img width="200px" height="250px" src="${o.img}">
							</td>
							<td>${o.quantity} cái</td>
						<td> <center>	${o.totalprice} $ </center></td>
							<td>  <font color="red" size="12"> <a
									onclick="unknow()"
										href="canceloder?cart_id=${o.name}"
										class="btn btn-outline-danger"> Hủy Đơn</a></font>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
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
                    <li><a href="index.jsp"><i class="fa-solid fa-house"></i> Home</a></li>
                    <li><a href="about.jsp"><i class="fa-solid fa-user"></i> About</a></li>
                    <li><a href="product.jsp"><i class="fa-solid fa-cake-candles"></i> Sản phẩm</a></li>
                    <li><a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
                    <li><a href="log.jsp"><i class="fa-solid fa-right-to-bracket"></i> Đăng nhập</a></li>
                </u>
            </div>
        </div>
    </div>
    </div>
</body>
</html>