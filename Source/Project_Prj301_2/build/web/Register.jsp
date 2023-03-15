<%-- 
    Document   : Register
    Created on : Oct 12, 2022, 10:31:28 AM
    Author     : longn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <style>
            body {
                background-image: url(img/dangnhap/Fpt02.jpg);
                background-position: center; /* Center the image */
                background-repeat: no-repeat; /* Do not repeat the image */
                background-size: cover;
                height: 682px;
            }

            span {
                font-size: 20px;
            }


            form {
                margin-left: 3px;
                background-color: aliceblue;
                display: inline-table;
                padding: 45px 39px;
                border-radius: 6px;
            }

            input.input_text {
                height: 26px;
                width: 290px;
                margin-top: 8px;
                border-radius: 5px;
            }

            .content {
                text-align: center;
            }


            input[type="submit"] {
                padding: 7px 40px;
                background-color: cornsilk;
                border-radius: 4px;


            }

            select {
                background-color: aqua;
                font-size: 23px;
                border-radius: 4px;
                padding: 4px 6px;
            }
        </style>
    </head>
    <body>
        <div class="content">


            <h1>Đăng ký</h1>
            <form action="register" method="post">


                <table>
                    <tr>
                        <td></td>
                        <td><select name="isTecher">
                                <option value="1" >Teacher</option>
                                <option value="0" >Student</option>

                            </select></td>
                    </tr>


                    <tr>
                        <td><span>Tài khoản: </span></td>
                        <td><input class="input_text" type="text" name="acc" required=""></td>
                    </tr>

                    <tr>
                        <td><span>Mật khẩu :  </span></td>
                        <td><input class="input_text"  type="password" name="pass" required="" ></td>

                    </tr>

                    <tr>
                        <td><span>Tên :  </span></td>
                        <td><input class="input_text"  type="text" name="name" required="" ></td>
                    </tr>

                    <tr>
                        <td><span>Giới tính:  </span></td>

                        <td> <select name="gender"> 
                                <option>Nam</option>
                                <option>Nữ</option>

                            </select></td>
                    </tr>

                    <tr>
                        <td><span>Email:  </span></td>
                        <td><input class="input_text"  type="email" name="email" required="" ></td>
                    </tr>

                    <tr>
                        <td><span>Ngày Sinh:  </span></td>
                        <td><input class="input_text"  type="date" name="dob" required="" ></td>
                    </tr>

                    <tr>
                        <td><span>Địa chỉ:  </span></td>
                        <td><input class="input_text"  type="text" name="address" required="" ></td>
                    </tr>
                </table>

                <br><input type="submit" name='submit' value="Đăng ký">
                <div> ${add} </div>
            </form>

        </div>
    </body>
</html>
