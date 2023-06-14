<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en"></html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assest/main.css">
    <link rel="stylesheet"href="./assest/about.css">
    <link rel="stylesheet"href="./assest/meal.css">
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
                <div class="about-text">MEAL WITH SPECIAL PEOPLE</div>
                <div class="about-date"> Write by Penci Design/October 24, 2022</div>
                <div class="about-img1"></div>
                <div class="text-about">“Con đường ngắn nhất để tới trái tim là con đường qua dạ dày” – điều này chưa bao giờ bị phủ nhận. Dạo qua một vòng các diễn đàn, mạng xã hội về chủ đề đời sống, không khó bắt gặp những câu chuyện tình yêu mà ở đó, các cặp đôi phải lòng và nên duyên với nhau từ những món ăn ngon.Ẩm thực như một sợi dây kết nối để gần lại nhau hơn. Những bữa cơm chiều sau khi con tan học, vợ chồng tan làm, những bữa cơm sum họp đại gia đình vào những dịp đặc biệt, mọi người cùng nhau quây quần, mọi người quây quần, vui vẻ chuyện trò lại càng là yếu tố gắn kết bền chặt. Trong những bữa ăn như thế, tình yêu được thắp lên và giữ lửa chính nhờ những món ăn ngon.

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
                <div class="text1-about">Tại các nhà hàng lãng mạn hay những nhà hàng dành cho cặp đôi thì hành động này luôn được các quý ông thực hiện. Cử chỉ này sẽ thực hiện ngay sau khi bạn giúp cô ấy cởi áo khoác. Ngay cả khi người yêu của bạn có thể tự làm được thì việc này cũng sẽ tạo thiện cảm rất nhiều. 

                    Hãy kéo ghế ra một khoảng vừa đủ và sau khi cô ấy đã ngồi xuống thì nhẹ nhàng đẩy ghế gần lại bàn ăn. Sau đó, bạn có thể di chuyển về chỗ của mình.</div>
                <div class="text2-about">Sẽ dễ dàng khiến nàng hạnh phúc khi cô ấy nhận ra bạn thật sự để tâm tới buổi hẹn hò của hai người. Những việc như tắt điện thoại hoặc để chế độ rung, không sử dụng quá nhiều điện thoại sẽ gây điểm cộng rất lớn.

                    Bên cạnh đó, buổi hẹn của bạn sẽ trở nên đáng nhớ hơn khi bạn thực sự lắng nghe những gì đối phương nói. “Eye – contact” – giao tiếp bằng mắt là vô cùng quan trọng. Những ánh nhìn, cái gật đầu nhẹ hay mỉm cười sẽ khiến cô ấy cảm thấy mình được tôn trọng và trân trọng rất nhiều. Và hãy nhớ, đừng bao giờ huyên thuyên một mình hay để nàng độc thoại. </div>
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
