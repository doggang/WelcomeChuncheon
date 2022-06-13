<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="euc-kr">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 | 춘천, 놀자!</title>
    <link rel="shortcut icon" type="image/x-icon" href="./img/header_img.png">
    <link rel="stylesheet" href="./style/login_style.css">
    <link rel="stylesheet" href="./style/hidden.css">
    <link rel="stylesheet" href="./style/indexHeader.css">
</head>
<body>
    <header>
        <a id="title" href="./index.jsp">
            <img id='title_img' src="./img/header_img.png"	 alt="">
            <div id="title_name">춘천, 놀자!</div>
        </a>	
    </header>

        <section id="sec1">
            <div id="box1" class="box">
                <form id="login_form" name="loginForm" action="./loginAction.jsp" method="POST">
                    <p id="login_title">로그인</p>
                    <input type="hidden" />
                    <div><input id="email_div" class="login_div" type="text" name="userID" placeholder="Id"></div>
                    <p id="login_id_null_notice" class="hidden">아이디를 입력해주세요.</p>
                    <div><input id="password_div" class="login_div" type="password" name="userPW" placeholder="Password"></div>
                    <p id="login_pass_null_notice" class="hidden">비밀번호를 입력해주세요.</p>
                    <p id="none_notice"></p>
                    <button id="login_bnt" type="submit">
                        <div id="login_btn_content">Login</div>
                        </button>
                </form>
                <a id="btn1" href="./signup.jsp">Join with us!</a>
            </div>
        </section>
</body>
<script src="./js/login.js"></script>
<script src="./js/index_header.js"></script>
<script src="./js/slider_bar.js"></script>
</html>