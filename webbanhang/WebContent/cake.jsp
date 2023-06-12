<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./assest/main.css">
<link rel="stylesheet" href="./assest/about.css">
<link rel="stylesheet" href="./assest/cake.css">
<link rel="stylesheet" href="./assest/comment.css">
<link rel="stylesheet"
	href="./font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./fontawesome-free-6.4.0-web/css/all.css">
<title>Blog Channel</title>
</head>
<body>
	<div class="contain">
		<div class="header-main">
			<div class="logo1">
				<div class="logo">
					<img
						src="./IMG/z4258760985767_9c327c4bde8f4350aedf2dd107a336a9.jpg">
				</div>
			</div>
			<div class="menu">
				<ul>
					<li><a href="index.jsp"><i class="fa-solid fa-house"></i>
							Home</a></li>
					<li><a href="about.jsp"><i class="fa-solid fa-user"></i>
							About</a></li>
					<li><a href="cakect"><i class="fa-solid fa-cake-candles"></i>
							Sản phẩm</a>
						<ul class="sub-menu">
							<li><a href="cakect">Bánh ngọt</a></li>
							<li><a href="product.jsp">Công thức</a></li>
						</ul></li>
					<c:if test="${sessionScope.acc== null }">
                    <li><a href="login"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
					</c:if>
					<c:if test="${sessionScope.acc!= null }">
                    <li><a href="showcart"><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
					</c:if>
					<c:if test="${sessionScope.acc!= null }">
						<li><a><i class="fa-solid fa-right-to-bracket"></i>
								Hello ${sessionScope.acc.email}</a></li>
						<li><a href="logouttc"><i
								class="fa-solid fa-right-to-bracket"></i> Đăng xuất</a></li>
					</c:if>
					<c:if test="${sessionScope.acc== null }">

						<li><a href="log.jsp"><i
								class="fa-solid fa-right-to-bracket"></i> Đăng nhập</a></li>
					</c:if>
				</ul>
			</div>
			<div class="box1">
				<div class="box">
				<form action="search" method="post">
					<input name="searchhere" type="text" placeholder="Search here"/>
					<button class="searchbt" type="submit"><i class="fa-solid fa-magnifying-glass" style="font-size: 30px"></i></button>
				</form>
				</div>
			</div>
		</div>
		<div class="main1">
			<div class="main-about1">
				<div class="about-text">
					<c:if test="${sessionScope.acc.isadmin == 1}">
						<p class="Texts">Quản lí sản phẩm</p>
						<ul class="list-text">
							<li><a href="set.jsp">Thêm sản phẩm</a></li>
							<li><a href="fixct">Sửa và xoá sản phẩm</a></li>
						</ul>
					</c:if>
				</div>
				<c:forEach items="${listcake}" var="o">
					<div class="all-list">
						<a class="s" href="/list1.jsp">
							<div class="list10">
								<div class="list1">
									<img class="list1-img" alt="" src="${o.img}">
									<div class="list-content">
										<div class="Name">${o.name}</div>
										<div class="Date">${o.price}$</div>
										<div class="IFM">Bánh có các lớp bơ chảy mềm mại, cực kì
											ngon miệng, ngoài ra một số tiệm bánh còn làm thêm phần nhân
											phô mai quyến rũ. Nếu chưa từng thử món này, bạn nhất định
											phải ăn một lần cho biết nhé!</div>
										<c:if test="${sessionScope.acc != null }">
											<div class="More">
												<a onclick="add_success()"
													href="addtocart?product_id=${o.id }"> Thêm vào giỏ hàng
												</a>
											</div>
										</c:if>
										<c:if test="${sessionScope.acc == null }">
											<div class="More">
												<a onclick="need_login()" href="login"> Thêm vào giỏ hàng </a>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
				<div class="Log">LIST OF COMMENTS
				</div>
                <c:forEach items="${listcomment}" var="o">
                					<div class="Name2">${o.email}</div>
                                    <textarea readonly="readonly" class="IFM2">${o.comment}</textarea>
                </c:forEach>	
			</div>
			<div class="main-about2">
				<div class="about2-img"></div>
				<div class="something">
					<p>"I love to cook, create delicious recipes with beautiful
						photos. I also share my life stories and my relationship with
						food."</p>
				</div>
				<div class="something1"></div>
				<div class="newletter">
					<div id="text">NEWSLETTER</div>
					<div id="text1">Subscribe my newsletter for latest recipes
						and cooking ideas. Let's stay updated!</div>
					<div id="give">
						<div id="from">
                            <form action="commenttc3" method="post">
				                <h2>Email</h2>
				                <input name="email" type="text" class="input-signup-username" />
				                <h2>Comment</h2>
				                <textarea class="cmtss" name="comment" type="text" class="input-signup-password" ></textarea>
				          		<button  class="DK" type="submit" class="signup__signInButton">Submit</button>
              				</form>
                        </div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="About">
				<div class="About-text">ABOUT ME</div>
				<div class="About-text1">NTK Blog là chuyên trang chia sẻ các
					kiến thức, trải nghiệm về cuộc sống của tác giả nhằm đem đến cho
					người xem những kiến thức bổ ích và điều thú vị xoay quanh cảm nhận
					và góc nhìn của tác giả.</div>
			</div>
			<div class="Quick-link">
				<div class="list">
					<ul>
						<li>USEFUL LINKS</li>
						<li><a href="index.jsp"><i class="fa-solid fa-house"></i>
								Home</a></li>
						<li><a href="about.jsp"><i class="fa-solid fa-user"></i>
								About</a></li>
						<li><a href="cakect"><i class="fa-solid fa-cake-candles"></i>
								Sản Phẩm</a></li>
						<li><a href="cart.jsp"><i
								class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
					</ul>
				</div>
			</div>
			<div class="follow">
				<div class="contact">
					<u>
						<li><a href="index.jsp"><i class="fa-solid fa-house"></i>
								Home</a></li>
						<li><a href="about.jsp"><i class="fa-solid fa-user"></i>
								About</a></li>
						<li><a href="cakect"><i class="fa-solid fa-cake-candles"></i>
								Sản phẩm</a></li>
						<li><a href="cart.jsp"><i
								class="fa-solid fa-cart-shopping"></i> Giỏ hàng</a></li>
						<li><a href="log.jsp"><i
								class="fa-solid fa-right-to-bracket"></i> Đăng nhập</a></li>
					</u>
				</div>
			</div>
		</div>
	</div>
</body>
</html>