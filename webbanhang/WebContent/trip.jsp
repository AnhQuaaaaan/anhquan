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
    <link rel="stylesheet"href="./assest/trip.css">
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
                <div class="about-text">TRIP TO SAPA</div>
                <div class="about-date"> Write by Penci Design/October 20, 2022</div>
                <div class="about-img1"></div>
                <div class="text-about">Nằm trong làn mây trôi bồng bềnh khiến cho thị trấn Sapa như là một thành phố sương mờ, tạo nên một bức tranh sơn thủy hữu tình. Đến với Sapa du khách có thể thư giãn với bầu không khí trong lành, mát mẻ, mang nhiều sắc thái đa dạng.Sa Pa có núi Hàm Rồng ở sát ngay thị trấn, bất kỳ du khách nào cũng có thể lên đó để ngắm toàn cảnh thị trấn, thung lũng Mường Hoa, Sa Pả, Tả Phìn ẩn hiện trong sương khói. Hiện nay, với bàn tay tôn tạo của con người, Hàm Rồng thực sự là một thắng cảnh đầy hoa trái của Sa Pa.  Lên Hàm Rồng, du khách như lạc vào vườn tiên, mây ùa kín thân người và những bông hoa rực rỡ  đầy màu sắc dưới mặt đất.

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
                <div class="text1-about">Ở thị trấn Sapa còn có một ngôi nhà thờ cổ làm bằng đá, và từ đây đi ngược lên phía đông bắc, trên đường đi tới động Tả Phìn lại có một tu viện được xây gần toàn như bằng đá tại một sườn đồi quang đãng, thoáng mát. Đi lên khoảng 3 cấy số ta sẽ nhìn thấy một hang động. Trong hang nhiều nhũ đá tạo nên những hình thù kỳ thú như hình tiên múa, đoàn tiên ngồi, cánh đồng xa, rừng cây lấp lánh.</div>
                <div class="text2-about">Có những cảnh đẹp nên thơ mê hồn, có những đàn bò lang cổ đeo chuông ung dung gặm cỏ, có những rừng thông đẹp lung linh kì ảo dưới ánh nắng mặt trời… Đến Sapa, ta có thể rũ bỏ mọi phiền muộn của cuộc sống, là nơi thời gian ngưng lại để ta có thể ung dung, tự tại thưởng ngoạn đất trời.Sapa đẹp một cách kì diệu và là một bức tranh phong cảnh tuyệt đẹp, do đó nơi đây đã được nhiều khách du lịch tham quan, hòa mình vào thiên nhiên nơi đây. Còn rất nhiều điểm du lịch Sapa đẹp khác đang chờ bạn đến và khám phá đấy…!</div>
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