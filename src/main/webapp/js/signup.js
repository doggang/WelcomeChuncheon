//signup 빈칸이 있는지 확인하는 함수(끝 건들 ㄴㄴ)
const signUpEmail = document.getElementById('email_div');
const signUpPass = document.getElementById('password_div');
const signUpPassVer = document.getElementById('password_verify_div');
const signUpName = document.getElementById('name');
const loginForm = document.getElementById('login_form');

const idNullChkText = document.getElementById('login_id_null_notice');
const passNullChkText = document.getElementById('login_pass_null_notice');
const passverNullChkText = document.getElementById('login_passver_null_notice');
const nameNullChkText = document.getElementById('login_name_null_notice');
const signUpBox = document.getElementById('box1');
const signUpBoxHeight = document.getElementById('box1').style.height;


//password 특수문자 정규식

function check_passwd(e)  {
    var check1 = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$~!%*#?&])[A-Za-z\d$@$~!%*#?&]{8,20}$/.test(signUpPass.value);  
    if(!check1){
        e.preventDefault();			
        alert("비밀번호는 영문,숫자,특수문자(~!@$%^&* 만 허용)를\n조합하여 8~20자 이상으로 구성하세요.");
    }

    if(/(\w)\1\1/.test(signUpPass.value)){
        e.preventDefault();			
        alert('같은 문자를 3번 이상 사용하실 수 없습니다.');
    }				
    
    var cnt = 0;
    var cnt2 = 0;
    var tmp = "";
    var tmp2 = "";
    var tmp3 = "";
    for (var i = 0; i < signUpPass.value.length; i++) {
        tmp = signUpPass.value.charAt(i);
        tmp2 = signUpPass.value.charAt(i + 1);
        tmp3 = signUpPass.value.charAt(i + 2);

        if (tmp.charCodeAt(0) - tmp2.charCodeAt(0) == 1
                && tmp2.charCodeAt(0) - tmp3.charCodeAt(0) == 1) {
            cnt = cnt + 1;
        }
        if (tmp.charCodeAt(0) - tmp2.charCodeAt(0) == -1
                && tmp2.charCodeAt(0) - tmp3.charCodeAt(0) == -1) {
            cnt2 = cnt2 + 1;
        }
    }
}
loginForm.addEventListener('submit',check_passwd);