<%-- 
    Document   : Login
    Created on : Sep 30, 2022, 9:43:30 AM
    Author     : longn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <style>
            body {
                background-image: url(img/dangnhap/danhapnhap1.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                width: 100%;
                height: 100%;
                text-align: center;
                align-items: center;
            }
            .login_box{
                background: rgba(255, 255, 255, 0.8);
                border-radius: 7px;
                display: inline-block;
                margin-top: 69px;
                box-shadow: 7px 13px 10px #aaaaaa;
                padding: 57px 93px;
            }

            .login_box a {
                text-decoration: none;
                margin-left: 23px;
                font-size: 18px;
                background-color: orange;
                color: white;
                padding: 4px 9px;
                border-radius: 3px;
            }
            .login_box span {


            }

            .login_box .input_text {
                width: 233px;
                height: 26px;
                margin-bottom: 9px;

            }

            .login_box input[type="submit"] {
                margin: 25px 9px;
                padding: 5px 28px;
                background-color: orange;
                color: white;
                border-radius:5px; 
            }

        </style>
    </head>
    <body>
        <div class="login_box">
            <form action="login" method="POST" style="margin:auto">
                <h1>Đăng nhập</h1>
                <table>
                    <tr>
                        <td><span>Tài khoản: </span></td>
                        <td><input class="input_text" type="text" name="acc" value="${account}"></td>
                    </tr>
                    
                    <tr>
                        <td><span>Mật khẩu :  </span></td>
                        <td><input class="input_text"  type="password" name="pass" value="${pass}"></td>
                        
                    </tr>
                    
                     <tr>
                        <td></td>
                        <td>${newpass}</td>
                        
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Đăng nhập"></td>
                    </tr>
                    
                </table>
                <div> <br> ${error}</div>
                
                <div class="login_link"> 
                 <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:9999/Project_Prj301_2/LoginGoogleHandler&response_type=code
		   &client_id=355587530648-klhlh27sdd8m3re5vsupjdl3jujpetto.apps.googleusercontent.com&approval_prompt=force">Login With Google</a>
                 </div>
                    <br> <a href="Register.jsp">Tạo một tài khoản</a>
                <a href="ForgotPass.jsp">Quên mật khẩu</a>
                
                
            </form>

        </div>
    </body>
</html>
