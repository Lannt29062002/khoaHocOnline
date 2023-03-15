<%-- 
    Document   : Home
    Created on : Oct 26, 2022, 3:22:13 PM
    Author     : lannt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>

        <link rel="icon" href="./assets/img/iconForWed/download.png" type="image/x-icon" />
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="themify-icons/themify-icons.css">
        <style>

            #content .tour-section {
                background: #000;
                margin-top: -46px;
            }

            #content .teckets-list {
                background-color: #fff;
                margin: 40px 14px 68px 14px;
            }
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            /* commom */
            .clear {
                clear: both;
            }

            html {
                font-family: Arial, Helvetica, sans-serif;
            }

            .text-white {
                color: #fff !important;
            }

            .row {
                margin-left: -8px;
                margin-right: -8px;
            }

            .row::after {
                content: "";
                display: block;
                clear: both;
            }

            .mt-8px {
                margin-top: 8px !important;
            }

            .col {
                float: left;
                padding-left: 8px;
                padding-right: 8px;
            }

            .col-full {
                width: 100%;
            }

            .col-half {
                width: 50%;
            }

            .col-third {
                width: 24.3333%;
                margin-bottom: 16px;
                margin-left: 80px;
                padding: 0px 0px;
                border: 3px solid black;
                border-radius: 5px;
            }

            .text-center {
                text-align: center;
            }


            .text-center {
                text-align: center;
            }
            .teckets-list li {
                list-style-type: none;
                border: 1px solid #333;
                font-size: 15px;
                padding: 11px 16px;
            }

            .teckets-list .Sold-out {
                color: #fff;
                background-color: #f44336;
                margin-left: 16px;
                padding: 3px 4px;
            }

            .teckets-list .quantity {
                float: right;
                width: 24px;
                height: 24px;
                background-color: #000;
                color: #fff;
                text-align: center;
                line-height: 24px;
                border-radius: 50%;
                margin-top: -2px;
            }

            .places-list {
                margin-top: 32px;
                margin-bottom: 48px;
            }

            .place-item {
                width: 33.33333%;
            }

            .place-img {
                width: 100%;
                height: 157px;
                display: block;
            }

            .place-img:hover {
                opacity: 0.6;
            }

            .place-body {
                padding: 16px;
                font-size: 15px;
                background-color: #fff;
            }

            .place-heading {
                font-weight: 550;
                font-size: 15px;


            }

            .place-time {
                margin-top: 16px;
                color: #757575;
            }

            .place-desc {
                margin-top: 16px;
                line-height: 1.4;
            }

            .place-buy-btn {

                background-color: black;
                color: white;
                padding: 7px 15px;
                text-decoration: none;
                display: inline-block;
                margin-top: 15px;

            }

            .place-buy-btn:hover {
                color: #000;
                background-color: #ccc;
            }
            .header_right a {
                color: white;
                text-decoration: none;
                margin-left: 50px;
                background-color: orange;
                padding: 10px 18px;
                border-radius: 8px;
            }

            #header {
                height: 46px;
                max-width: 100%;
                display: flex;
                background-color: black;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                z-index: 1;
            }
            .header_left{
                flex-basis: 80%;
            }

            .header_right{
                flex-basis: 20%;
                margin-top: 14px;
            }

            a.button_edit {
                color: white;
                background-color: orange;
                text-decoration: none;
                font-size: 20px;
                border-radius: 5px;
                padding: 7px 10px;
                border: 2px solid black;
            }

        </style>
    </head>
    <body>



        <div id="header">
            <Div class="header_left">
                <ul id="nav">
                    <li><a href="http://localhost:9999/Project_Prj301_2/#">Trang chủ</a></li>
                    <li><a href="http://localhost:9999/Project_Prj301_2/#gioithieu">Giới thiệu</a></li>
                    <li><a href="http://localhost:9999/Project_Prj301_2/Home.jsp">KHóa học</a></li>
                    <li><a href="http://localhost:9999/Project_Prj301_2/#ketnoi">Kết nối</a></li>
                    <li>
                        <a href="#more">
                            Xem Thêm
                            <i class="icontnearmore ti-angle-down"></i>

                        </a>
                        <ul id="subnav">
                            <li><a href="#Mechandise">Mechandise</a></li>
                            <li><a href="#Extras">Extras</a></li>
                            <li><a href="#Media">Media</a></li>
                        </ul>
                    </li>

                </ul>
            </Div>
            <!-- end nav -->

            <Div class="header_right">



                <c:if test="${sessionScope.acc == null}">
                    <a href="Login.jsp">Đăng nhập</a>
                </c:if>

                <c:if  test="${sessionScope.acc != null}">
                    <span style="color: white">Xin chào:  ${Accountname}</span>
                    <a href="logout">Đăng xuất</a>
                </c:if>
            </Div>
        </Div>
        <div id="khoahoc" class="tour-section" >
            <div class="conten-section">
                <h2 class="section-heading text-white">các khóa học</h2>
                <p class="section-sub-heading text-white">Đăng ký để học ngay hôm nay!</p>
                <ul class="teckets-list">
                    <li>SPRING2022 <span class="Sold-out">Hết hạn</span></li>
                    <li>SUMMER2022 <span class="Sold-out">Hết hạn</span></li>
                    <li>FALL2022 <span class="quantity">6</span></li>
                </ul>

            </div>   
        </div>



        <div class="row places-list" style="display: flex; flex-wrap: wrap; background-color: aliceblue;
             padding: 29px 0px;">
            <c:forEach items="${couser}" var="c">

                <div class="col col-third" >
                    <img src="img/couser_img/${c. getCouserimg()}"
                         alt="New York" class="place-img">
                    <div class="place-body">
                        <h3 class="place-heading">${c.getCousername()}</h3>
                        <p class="place-time">${c.getCouserid()}</p>
                        <p class="place-desc">${c.getCouserdes()}</p>
                        <a  href="incouser?id=${c.getCouserid()}" target="target" class="place-buy-btn js-buy-ticket" >Học Ngay</a>
                    </div>
                </div>
            </c:forEach>
        </div>        
        
    

        <c:if  test="${sessionScope.acc == 'admin'}">
            <div style="text-align: center"> <a href="http://localhost:9999/Project_Prj301_2/edit" target="_blank" class="button_edit">Chỉnh sửa khóa học</a></div>
        </c:if>




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


    </body>
</html>
