<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>춘천, 놀자!</title>
    <link rel="stylesheet" href="./style/introduce.css">
    <link rel="stylesheet" href="./style/header.css">
    <link rel="stylesheet" href="./style/nav.css">
    <link rel="stylesheet" href="./style/footer.css">
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
        <a id="title" href="./index.jsp">
            <img id='title_img' src="./img/header_img.png" alt="">
            <div id="title_name">춘천, 놀자!</div>
        </a>
        
        <ul id="nav">
            <li class="nav_li">
                <a href="./introduce.jsp">웹페이지 소개</a>
            </li>
            <li class="nav_li">                
                <a href="./place.jsp">관광지 소개</a>
            </li>
            <li class="nav_li">
                <a href="./question.jsp">자유 게시판</a>
            </li>
            <%
            	if(userID == null){
            %>
            <li id="login" class="nav_li">
                <a href="./login.jsp">로그인</a>
            </li>
            <%
            	}else{
            %>
            <li id="logout" class="nav_li">
                <a href="./logout.jsp">로그아웃</a>
            </li>
            <%
            	}
            %>
        </ul>
        
        <div class="header">
            <div class="menu_btn">
                <a href="#">
                    <img id="menu_img" src="./img/muen_bar.png">
                </a>
            </div>
        </div>
        <div class="menu_bg"></div>
        <div class="sidebar_menu">
            <div class="close_btn">
                <a href="#">
                    <img id="cancel" src="./img/cancel.png">
                </a>
            </div>
            <ul class="menu_wrap">
                <a href="./introduce.jsp"><li id="menu_first">웹페이지 소개</li></a>
                <a href="./place.jsp"><li id="menu_second">관광지 소개</li></a>
                <a href="./question.jsp"><li>자유 게시판</li></a>
                <%
            		if(userID == null){
	            %>
	            <a href="./login.jsp"><li>로그인</li></a>
	            <%
	            	}else{
	            %>
	            <a href="./logout.jsp"><li id="menu_third">로그아웃</li></a>
	            <%
	            	}
	            %>
            </ul>
        </div>
            
    </header>
    
    <nav>
        <div id="plus_wrap">
            <a id="plus_content" href="./introduce.jsp">웹사이트 소개</a><span id="plus_content">></span><a id="plus_content" href="./index.jsp">Main</a>
        </div>
    </nav>

    <article>
        <div id="article_title">
            웹 페이지 소개
        </div>
        <div id="article">
            <div id="article_main">
                <div id="article_main_title">Services</div>
                <div id="article_main_contetn">웹 페이지의 목적</div>
            </div>
            <div id="article_wrap">
                <div class="content_wrap">
                    <img class='article_img' src="./img/intell.jpg" alt="">
                    <div class="content_title">집단 지성</div>
                    <div class="content">
                        웹 사용자들이 자유롭게 의견을 나눌 수 있는 공간을 만들어 소통하며 많은 정보를 공유할 수 있게끔 함.
                    </div>
                </div>
                <div class="content_wrap">
                    <img class='article_img' src="./img/content.jpg" alt="">
                    <div class="content_title">콘텐츠 수용</div>
                    <div class="content">
                        웹 사용자들의 관광지 등 웹 콘텐츠 요청 시 적극 수용하여 콘텐츠에 반영함.
                    </div>
                </div>
                <div class="content_wrap">
                    <img class='article_img' src="./img/fill.jpg" alt="">
                    <div class="content_title">만족도 충족</div>
                    <div class="content">
                        문화재, 휴양지, 카페 등 휴식을 취할 수 있는 공간을 공유하여 많은 사람들의 힐링을 도와 만족도를 충족시킨다. 
                    </div>
                </div>
            </div>
        </div>
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
<script src="./js/slider_bar.js"></script>
</html>