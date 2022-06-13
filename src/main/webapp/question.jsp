<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>춘천, 놀자!</title>
    <link rel="stylesheet" href="./style/question.css">
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
		int pageNumber = 1; //기본은 1 페이지를 할당
		// 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
		// 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다r
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
            <a id="plus_content" href="./question.jsp">자유 게시판</a><span id="plus_content">></span><a id="plus_content" href="./index.jsp">Main</a>
        </div>
    </nav>

    <article>
        <div id="art_title">자유 게시판</div>
        <ul id="article_wrap">
        
        	<%
				BbsDAO bbsDAO = new BbsDAO(); // 인스턴스 생성
				ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
				for(int i = 0; i < list.size(); i++){
			%>
			
            <li>
                <a class="article_one" href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>">
                    <div class="left_title">
						<%= list.get(i).getBbsTitle() %>  
					</div>
                    <div class="right_one">
                        <div class="right_one_content">
							<%= list.get(i).getUserID() %>
						</div>
                        <div class="right_one_content">
                        	<%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
							+ list.get(i).getBbsDate().substring(14, 16) + "분" %>
							</div>
                        <div class="right_one_content">
                        	<%= list.get(i).getBbsID() %>
                        </div>
                    </div>
                </a>
            </li>
            <%
				}
			%>
        </ul>
        <a id="write" href="./write.jsp">글쓰기</a>
        
        <!-- 페이징 처리 영역 -->
			<%
				if(pageNumber != 1){
			%>
				<a href="question.jsp?pageNumber=<%=pageNumber - 1 %>"
					class="btn btn-success btn-arraw-left">이전</a>
			<%
				}if(bbsDAO.nextPage(pageNumber + 1)){
			%>
				<a href="question.jsp?pageNumber=<%=pageNumber + 1 %>"
					class="btn btn-success btn-arraw-left">다음</a>
			<%
				}
			%>
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
    <script src="./js/slider_bar.js"></script>
    </html>