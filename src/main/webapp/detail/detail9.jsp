<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>춘천, 놀자!</title>
    <link rel="stylesheet" href="../style/detail.css">
    <link rel="stylesheet" href="../style/header.css">
    <link rel="stylesheet" href="../style/nav.css">
    <link rel="stylesheet" href="../style/footer.css">
    <link rel="shortcut icon" type="image/x-icon" href="./img/header_img.png">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
    <%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>

    <header class="shrink">
        <a id="title" href="../index.jsp">
            <img id='title_img' src="../img/header_img.png" alt="">
            <div id="title_name">춘천, 놀자!</div>
        </a>
        
        <ul id="nav">
            <li class="nav_li">
                <a href="../introduce.jsp">웹페이지 소개</a>
            </li>
            <li class="nav_li">                
                <a href="../place.jsp">관광지 소개</a>
            </li>
            <li class="nav_li">
                <a href="../question.jsp">자유 게시판</a>
            </li>
            <%
            	if(userID == null){
            %>
            <li id="login" class="nav_li">
                <a href="../login.jsp">로그인</a>
            </li>
            <%
            	}else{
            %>
            <li id="logout" class="nav_li">
                <a href="../logout.jsp">로그아웃</a>
            </li>
            <%
            	}
            %>
        </ul>
        
        <div class="header">
            <div class="menu_btn">
                <a href="#">
                    <img id="menu_img" src="../img/muen_bar.png">
                </a>
            </div>
        </div>
        <div class="menu_bg"></div>
        <div class="sidebar_menu">
            <div class="close_btn">
                <a href="#">
                    <img id="cancel" src="../img/cancel.png">
                </a>
            </div>
            <ul class="menu_wrap">
                <a href="../introduce.jsp"><li id="menu_first">웹페이지 소개</li></a>
                <a href="../place.jsp"><li id="menu_second">관광지 소개</li></a>
                <a href="../question.jsp"><li>자유 게시판</li></a>
                <%
            		if(userID == null){
	            %>
	            <a href="../login.jsp"><li>로그인</li></a>
	            <%
	            	}else{
	            %>
	            <a href="../logout.jsp"><li id="menu_third">로그아웃</li></a>
	            <%
	            	}
	            %>
            </ul>
        </div>
            
    </header>
    
    <nav>
        <div id="plus_wrap">
            <a id="plus_content" href="./detail9.jsp">세부 정보</a><span id="plus_content">></span><a id="plus_content" href="../place.jsp">관광지 소개</a><span id="plus_content">></span><a id="plus_content" href="../index.jsp">Main</a>
        </div>
    </nav>

    <article>
        <div id="map_wrap">
            <img id="img" src="../img/place_img/skywalk.jpg" alt="">
            <iframe id="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3148.587078671761!2d127.72122401527943!3d37.89333827973805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3562e609e6b18db9%3A0xecd7cf3bf41a1924!2z7IaM7JaR6rCV7Iqk7Lm07J207JuM7YGs!5e0!3m2!1sko!2skr!4v1655122137408!5m2!1sko!2skr" 
			allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div id="intro">
            <ul id="ul_img">
                <li id="name">소양강 스카이워크</li>
                <li id="address">강원도 춘천시 영서로 2675</li>
                <li id="num">033-240-1695</li>
            </ul>
        </ul>
    </article>

    <footer>
        <div id="footer_content">
            <p id="footer_title">INFORMATION</p>
            <div id="footer_in">
                Developer : Kim Do Hyun<br>
                E-mail : rlaehgusqp@naver.com<br>
                GitHub : <a href="https://github.com/doggang">https://github.com/doggang</a><br> 
                Web Server - FrontEnd
            </div>
        </div>
    </footer>
</body>
<script src="../js/slider_bar.js"></script>
</html>