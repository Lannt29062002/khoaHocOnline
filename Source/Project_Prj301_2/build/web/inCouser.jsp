<%-- 
    Document   : inCouser
    Created on : Nov 5, 2022, 2:42:16 PM
    Author     : lannt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="./assets/img/iconForWed/download.png" type="image/x-icon" />
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="themify-icons/themify-icons.css">
        <title>Couser</title>
        <style>

            .content_box {
                margin-top: 60px;
                width: 100%;
                margin-left: 30px;
                background-color: azure;
                border: 3px solid;
                border-radius: 5px;
                padding: 15px 28px;
                display: inline-block;
                flex-basis: 60%;
            }

            span.date_box {
                margin-left: 16px;
                font-weight: bold;
            }

            span.slot_box {
                background-color: antiquewhite;
                color: crimson;
                font-size: 22px;
                padding: 2px 9px;
                border-radius: 8px;
            }

            .content_right {
                background-color: cornsilk;
                color: black;
                margin-top: 115px;
                margin-left: 48px;
                flex-basis: 30%;
                height: 503px;
                border: 2px solid black;
                border-radius: 6px;
                padding: 37px 17px;
                position: fixed;
                right: 11px;
                margin-right: 100px;
            }

            .content {
                flex-basis: 60%;
            }

            .content_right1 {
                text-align: center;
            }

            img.content_rig {
                width: 195px;
                height: 233px;
            }

            .content_right span {
                font-weight: bold;
                margin: 9px 4px;
            }



            .content_right1 {
                margin: 8px 30px;
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
                    <a href="logout">Đăng xuất</a>
                </c:if>
            </Div>
        </Div>

        <div class="content_center" style="display: flex" >
            <div class="content" >
                <c:forEach items="${incouser}" var="e">
                    <div class="content_box">
                        <div>
                            <span class="slot_box"> Slot ${e.getSlot()}: </span>
                            <span class="date_box"> ${e.getDatebegin()} - ${e.getDateend()} (GMT+07)</span>
                        </div>

                        <div>
                            <p> ${e.getContent()} </p>
                           
                        </div>
                            
                            <div>
                                <a href="deleteslot?code=${e.getCouserid()}&id=${e.getSlot()}">Add</a>
                                <a href="updateslot?code=${e.getCouserid()}&id=${e.getSlot()}">Update</a>
                                <a href="deleteslot?code=${e.getCouserid()}&id=${e.getSlot()}">Delete</a></div>
                    </div>
                </c:forEach>


            </div>

            <div class="content_right">


                <c:forEach items="${author}" var="e" begin="1" end="1">
                    <div class="content_right1"> Cousera id: <span> ${e.getCouserid()}  </span> </div>
                    <div class="content_right1">Start Date:<span> ${e.getStartdate()}</span></div>
                    <div class="content_right1"> Author:</div>
                    <div class="content_right1"> <img class="content_rig" src="img/avartar/${e.getAuimg()}" alt="alt"/> </div>
                    <div class="content_right1"> Name: <span>${e.getAuname()}</span></div>
                    <div class="content_right1"> Email: <span>${e.getAuemail()}</span> </div>        
                    <div class="content_right1"> <a href="editslot?id=${e.getCouserid()}"> Edit Couser </a> </div>
                </c:forEach> 
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
    </body>
</html>
