<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assest/main.css">
    <link rel="stylesheet"href="./assest/about.css">
    <link rel="stylesheet"href="./assest/place.css">
    <link rel="stylesheet" href="/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="fontawesome-free-6.4.0-web/css/all.css">
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
        <div class="main1">
            <div class="main-about1">
                <div class="about-text">PLACE TO CHILL</div>
                <div class="about-date"> Write by Penci Design/October 29, 2022</div>
                <div class="about-img1"></div>
                <div class="text-about">Ơ Kìa Hà Nội sẽ là quán cafe chill ở Hà Nội mà bạn nên ghé thăm đầu tiên. Toạ lạc ngay trong một ngõ sâu nên không gian nơi đây cực kỳ yên tĩnh, xung quanh quán là nhiều bóng cây xanh mát mang đến cảm giác bình yên và thư giãn. Quán có nhiều khu vực trang trí xinh đẹp với xích đu, đồ gốm,... giúp bạn tha hồ “sống ảo” luôn. Đồ uống tại đây khá ngon và đa dạng nên đảm bảo thử là ghiền, nổi tiếng là chuỗi quán cafe chill ở Hà Nội với không gian tinh tế, sử dụng các ô cửa sổ kính cao tận trần tạo cảm giác sáng sủa. Bên trong quán được bố trí nhiều giá sách siêu đẹp, bên ngoài đặt nhiều cây xanh mang đến cảm giác rất mát mẻ. Nếu bạn muốn tìm kiếm một không gian yên tĩnh để đọc sách hay đơn giản là để chill



                </div>
                <div class="about-img2"></div>
                <div class="link-list">
                    <h2 style="margin: 25px;font-size: 40px;"> Bạn có thể quan tâm:</h2>
                    <ul>
                        <li><a href="">Salmon Skewers with Zucchini</a></li>
                        <li><a href="">Crepes with Fresh Fruit</a></li>
                        <li><a href="">Breakfast Zucchini Fritters</a></li>
                        <li><a href="">Bread with Beetroot Hummus</a></li>
                        <li><a href="">Hearty Pumpkin Soup</a></li>
                    </ul>
                </div>
                <div class="text1-about">Foglian Coffee mang đến không gian rộng rãi, thoáng mát với 3 tầng lầu cực chill để thư giãn. Quán được bố trí nhiều cây xanh cộng với giếng trời nên rất sáng sủa và tươi mát. Khu vực bên ngoài có thêm một sân vườn cực kỳ lãng mạn, còn với những ai muốn ngắm phố xá thì nên lên tầng thượng nha. Đồ uống tại đây khá đa dạng và dễ uống. Nếu đang tìm một quán cà phê chill ở Hà Nội thì đừng bỏ qua Foglian Coffee nhé.</div>
                <div class="text2-about">Nằm cuối cùng trong danh sách các quán cafe chill ở Hà Nội này sẽ là Backyard Coffee. Quán có phong cách hiện đại, không có quá nhiều chi tiết cầu kỳ, không gian rộng rãi với khu vực trong nhà và sân thượng siêu đẹp để trải nghiệm. Bên trong Backyard Coffee được bố trí thêm nhiều vật dụng trang trí như quạt trần, máy tính, đài phát thanh và cả sách càng làm cho không gian quán thêm phần đẹp mắt. Đồ uống tại đây khá đa dạng, khá dễ uống nên là một điểm cộng tuyệt vời. </div>
                <div class="End-content">
                    <div class="Log">YOU MAY ALSO LIKE</div>
                    <div class="post">
                        <div class="post1"><div class="Read">READ MORE</div></div>
                        <div class="post2"><div class="Read">READ MORE</div></div>
                        <div class="post3"><div class="Read">READ MORE</div></div>
                    </div>
                <div class="CMT">
                    <div class="Log">LEAVE A COMMENT</div>
                    <div class="cmt">
                        <input type="text" id="fname" name="fname" value="Your Comment..."><br><br>
                    </div>
                    <div class="DK">SUBCRIBE</div>
                </div>
                </div>
            </div>
            <div class="main-about2">
                <div class="about2-img">
                </div>
                <div class="something"><p>"I love to cook, create delicious recipes with beautiful photos. I also share my life stories and my relationship with food."</p></div>
                <div class="something1"></div>
                <div class="newletter">
                    <div id="text">NEWSLETTER</div>
                    <div id="text1">Subscribe my newsletter for latest recipes and cooking ideas. Let's stay updated!</div>
                    <div id="give">
                        <div id="from">
                            <input type="text" id="fname" name="fname" value="Comment..."><br><br>
                            <input type="text" id="lname" name="lname" value="Email..."><br><br>
                        </div>
                        <div class="DK">SUBCRIBE</div>
                    </div>
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
                        <li><a href=""><i class="fa-solid fa-house"></i> HOME</a></li>
                        <li><a href=""><i class="fa-solid fa-user"></i> ABOUT</a></li>
                        <li><a href=""><i class="fa-sharp fa-solid fa-pen-to-square"></i> BLOG</a></li>
                        <li><a href=""><i class="fa-solid fa-camera-retro"></i> MYLIFE</a></li>
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