<%-- 
    Document   : ForgotPass
    Created on : Oct 17, 2022, 9:24:10 AM
    Author     : longn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ForgotPass</title>
        
        <style>
            body {
                background-image: url(img/dangnhap/FPT-01-ariel-view-1407125626.jpg);
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
        <form action="login" method="GET">
            
            <h1>Quên mật khẩu</h1>
                <table>
                    <tr>
                        <td><span>Tài khoản: </span></td>
                        <td><input class="input_text" type="text" name="acc" value="${account}"></td>
                    </tr>
                    
                    <tr>
                        <td><span>Ngày Sinh:  </span></td>
                        <td><input class="input_text"  type="text" name="dob" value="${dob}"></td>
                        
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td><input type="submit" name="Login" value="Gửi"></td>
                    </tr>
                    
                </table>
                <div>${error}</div>
                
                
                
            </form>
        </div>
    </body>
</html>
