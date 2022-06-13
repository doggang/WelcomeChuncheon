<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>춘천, 놀자!</title>
    <link rel="stylesheet" href="./style/qnadetail.css">
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
		
		// bbsID를 초기화 시키고
		// 'bbsID'라는 데이터가 넘어온 것이 존재한다면 캐스팅을 하여 변수에 담는다
		int bbsID = 0;
		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		
		// 만약 넘어온 데이터가 없다면
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='bbs.jsp'");
			script.println("</script");
		}
		
		// 유효한 글이라면 구체적인 정보를 'bbs'라는 인스턴스에 담는다
		Bbs bbs = new BbsDAO().getBbs(bbsID);
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
            <a id="plus_content" href="./index.jsp">상세 글</a>
            <span id="plus_content">></span>
            <a id="plus_content" href="./question.jsp">자유 게시판</a>
            <span id="plus_content">></span>
            <a id="plus_content" href="./index.jsp">Main</a>
        </div>
    </nav>

    <article>
			<table id="article_wrap">
				<thead>
					<tr>
						<th id="content_title" colspan="2">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="class_sub">글 제목</td>
						<td colspan="2">
							<%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %>
						</td>
					</tr>
					<tr>
						<td class="class_sub">작성자</td>
						<td colspan="2">
							<%= bbs.getUserID() %>
						</td>
					</tr>
					<tr>
						<td class="class_sub">작성일자</td>
						<td colspan="2">
							<%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분" %>
						</td>
					</tr>
					<tr>
						<td class="class_sub">내용</td>
						<td id="content_con" colspan="2"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
				</tbody>
			</table>
        
        
        <!-- 해당 글의 작성자가 본인이라면 수정과 삭제가 가능하도록 코드 추가 -->
			<%
				if(userID != null && userID.equals(bbs.getUserID())){
			%>
					<a id="del" href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>
			<%
				}
			%>
			
			
        <a id='back' href="./question.jsp">뒤로가기</a>
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