<%-- 
    Document   : index
    Created on : Nov 4, 2022, 9:10:53 AM
    Author     : lannt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Trang chủ</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="./assets/img/iconForWed/download.png" type="image/x-icon" />
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="themify-icons/themify-icons.css">
        <style>

            h1 {
                margin-top: 50px;
            }

            input.input_text {
                height: 38px;
                width: 290px;
                margin-top: 8px;
                border-radius: 5px;
            }

            form {
                margin: 0px 57px;
            }

            a.buttom {
                padding: 7px 40px;
                background-color: cornsilk;
                border-radius: 4px;
                text-decoration: none;
                color: black;
            }

            input.slider_button {
                padding: 7px 40px;
                background-color: orange;
                border-radius: 4px;
                margin-top: 8px;
            }


        </style>
    </head>

    <body>
        <div id="main">

            <div id="header">

                <ul id="nav">
                    <li><a href="#">Trang chủ</a></li>
                    <li><a href="#gioithieu">Giới thiệu</a></li>
                    <li><a href="http://localhost:9999/Project_Prj301_2/Home.jsp">KHóa học</a></li>
                    <li><a href="#ketnoi">Kết nối</a></li>
                    <li>
                        <a href="#more">
                            Xem Thêm
                            <i class="icontnearmore ti-angle-down"></i>

                        </a>
                        <ul id="subnav">
                            <li><a href="#Mechandise">Giải Thưởng</a></li>
                            <li><a href="#Extras">Thi đấu</a></li>
                            <li><a href="#Media">Địa chỉ</a></li>
                        </ul>
                    </li>

                </ul>
                <!-- end nav -->
                <!-- begin sreach -->
                <div class="search-btn">
                    <i class="search-icon ti-search"></i>

                </div>

                <div id="mobile-menu" class=" menu-mobile-btn">
                    <i class="menu-icon ti-menu"></i>
                </div>
                <!-- end sreach -->

            </div>

            <div id="slider" style="display: flex;">
                <div class="text-content">

                </div>



                <div class="slider_box">
                    <form action="login" method="POST" >
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
                                <td><input class="slider_button"   type="submit" name="Login" value="Đăng nhập"></td>
                            </tr>

                            <tr>
                                <td></td>
                                <td><br><a class="buttom" href="Register.jsp">Tạo một tài khoản</a></td>

                            </tr>

                            <tr>
                                <td></td>
                                <td><br><a class="buttom"  href="ForgotPass.jsp">Quên mật khẩu</a></td>

                            </tr>

                        </table>
                        <div>${error}</div>
                    </form>
                </div>


                <div class="text-content">

                </div>
            </div>



            <div id="content">
                <!-- About section -->
                <div id="gioithieu" class=" conten-section">
                    <h2 class="section-heading">Giới thiệu</h2>
                    <p class="section-sub-heading">Lập trình là kỹ năng cần thiết cho tương lai</p>
                    <p class="about-text">Coursera ( coursera.org) –  Cung cấp các khóa học miễn phí, hướng dẫn và tài nguyên mã hóa 
                        được giảng dạy bởi các chuyên gia tại các trường đại học hàng đầu cùng với các ngôn ngữ lập trình như Python,
                        Java, HTML, CSS,… Đây là trang web về lĩnh vực công nghệ thông tin được đông đảo sự quan tâm của người dùng 
                        trên toàn thế giới.</p>
                    <div class=" row member-list">
                        <div class=" col col-third text-center ">
                            <p class="member-name">Phát triển tư duy sáng tạo</p>
                            <img src="img/GioiThieu/4ab5dce2-e732-4d45-8e10-fdb697438fc6.png" alt="Name" class="member-img">
                        </div>
                        <div class=" col col-third text-center ">
                            <p class="member-name">Tìm hiểu thế giới công nghệ</p>
                            <img src="img/GioiThieu/luat-cong-nghe-so.jpg" alt="Name" class="member-img">
                        </div>
                        <div class=" col col-third text-center ">
                            <p class="member-name">Nhận nhiều cơ hội việc làm hơn</p>
                            <img src="img/GioiThieu/1953523.jpg" alt="Name" class="member-img">
                        </div>
                    </div>
                </div>

                <!-- contact section -->
                <div class="blacknha">


                    <div style=""id="ketnoi" class="contact-section">
                        <h2 class="section-heading">Kết nối</h2>
                        <p class="section-sub-heading">Mọi ý kiến của bạn xin vui lòng gửi tại đây!</p>

                        <div class="row contact-content">
                            <div class="col col-half contact-info">
                                <p><i class="ti-location-pin"></i> Khu Công nghệ cao Hòa Lạc – Km29 Đại lộ Thăng Long, H. Thạch
                                    Thất, TP. Hà Nội</p>
                                <p><i class="ti-mobile"></i> Phone: 024 7300 1866</p>
                                <p><i class="ti-email"></i> Email: daihocfpt@fpt.edu.vn</p>
                            </div>
                            <div class="col col-half contact-form">
                                <form target="_blank" action="https://formsubmit.co/lannthe160821@fpt.edu.vn" method="POST">
                                    <div class="row">
                                        <div class="col col-half">
                                            <input type="text" name="" placeholder="Name" id="1" required class="form-control">

                                        </div>

                                        <div class="col col-half">
                                            <input type="email" name="" placeholder="Emal" id="2" required class="form-control">

                                        </div>
                                    </div>

                                    <div class="row mt-8px">

                                        <div class="col col-full">
                                            <input type="text" name="" placeholder="Message" id="3" required
                                                   class="form-control">
                                        </div>

                                    </div>
                                    <input class="form-submit-btn" type="submit" value="SEND">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="map-section">
                    <div style="text-align: center">
                        <img style="width: 80%" class="mapnhe" src="img/GioiThieu/Screenshot 2022-10-29 010328.png" alt="Map nhe">
                    </div>
                </div>

            </div>



            <div id="footer">
                <div class="sosials-list">
                    <a href="#"><i class="ti-facebook"></i></a>
                    <a href="#"><i class="ti-instagram"></i></a>
                    <a href="#"><i class="ti-themify-favicon"></i></a>
                    <a href="#"><i class="ti-pinterest-alt"></i></a>
                    <a href="#"><i class="ti-twitter-alt"></i></a>
                    <a href="#"><i class="ti-linkedin"></i></a>
                </div>

                <div>
                    <p class="end">Được cung cấp bởi
                        <a href="https://www.facebook.com/profile.php?id=100004235656723"  target="_blank" class="linkW3">Nguyễn Thành Lân</a>
                    </p>
                </div>

            </div>

        </div>

    </body>
</html>
