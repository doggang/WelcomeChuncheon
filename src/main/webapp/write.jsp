<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>춘천, 놀자!</title>
    <link rel="stylesheet" href="./style/write.css">
    <link rel="stylesheet" href="./style/header.css">
    <link rel="stylesheet" href="./style/nav.css">
    <link rel="stylesheet" href="./style/footer.css">
    <link rel="shortcut icon" type="image/x-icon" href="./img/header_img.png">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
	<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
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
            <a id="plus_content" href="#">Main > 자유 게시판 > Write</a>
        </div>
    </nav>

    <article>
        <form id='write_form' action="./writeAction.jsp">
            <input id="write_title" type="text" name="bbsTitle" placeholder="제목을 입력하세요.">
            <textarea name="bbsContent" id="write_text"></textarea>
            <div id="write_wrap">
                <a id='write_cancel' href="./question.jsp">취소</a>
                <input id="write_submit" type="submit" name="bbsContent" value="글쓰기">
            </div>
        </form>
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