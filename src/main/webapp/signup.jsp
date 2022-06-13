<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 | 춘천, 놀자!</title>
    <link rel="shortcut icon" type="image/x-icon" href="img/header_img.png">
    <link rel="stylesheet" href="./style/signup_style.css">
    <link rel="stylesheet" href="./style/hidden.css">
    <link rel="stylesheet" href="./style/indexHeader.css">
    <link rel="shortcut icon" type="image/x-icon" href="./img/header_img.png">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>

<body>
    <header>
        <a id="title" href="./index.jsp">
            <img id='title_img' src="./img/header_img.png" alt="">
            <div id="title_name">춘천, 놀자!</div>
        </a>
    </header>
    <section id="sec1">
        <div id="box1" class="box">

            <form id="login_form" action="signupAction.jsp" name="loginForm" method="POST">
                <p id="form_title">회원가입</p>
                <div id="admin_email_wrap" class="input_div">
                    <input id="email_div" class="login_div" type="text" name="userID" placeholder="Id">
                </div>
                <p id="id_check" class="hidden"></p>
                <p id="login_id_null_notice" class="hidden">아이디를 입력해주세요.</p>
                <div class="input_div"><input id="password_div" class="login_div" type="password" name="userPW"
                        placeholder="Password"></div>
                <p id="login_pass_null_notice" class="hidden">비밀번호를 입력해주세요.</p>
                <div class="input_div"><input id="password_verify_div" class="login_div" type="password"
                         placeholder="Password verify"></div>
                <p id="login_passver_null_notice" class="hidden">비밀번호를 같게 입력해주세요.</p>


                <div class="input_div"><input id="name" class="login_div" type="text"
                        name="userName" placeholder="Name"></div>
                <p id="login_name_null_notice" class="hidden">이름을 입력해주세요.</p>

                <input id="login_btn" type="submit" value="Sign Up">
            </form>
            <a id="btn1" href="./login.jsp">login</a>
        </div>
    </section>
</body>
<script src="./js/signup.js"></script>
<script src="./js/index_header.js"></script>
<script src="./js/slider_bar.js"></script>

</html>