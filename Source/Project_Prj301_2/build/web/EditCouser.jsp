<%-- 
    Document   : Search
    Created on : Nov 3, 2022, 9:13:35 PM
    Author     : lannt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EditCouser</title>
    </head>
    <body>
        <h1> Chỉnh sửa khóa học </h1>

        <table border="1">
            <thead>
                <tr>
                    <th>Couser Id</th>
                    <th>Couser Name</th>
                    <th>Couser describe</th>
                    <th>Couser Img</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${couser}" var="e">
                    <tr>
                        <td>${e.getCouserid()}</td>
                        <td>${e.getCousername()}</td>
                        <td>${e.getCouserdes()}</td>
                        <td>${e.getCouserimg()}</td>
                        
                    </tr>

                </c:forEach>

            </tbody>
        </table>
        <br><br>

        <form action="edit" method="post">
            <div> Xóa khóa học </div>
            Enter couserID:   
            <select name="coserID">
                <c:forEach items="${couser}" var="c">
                    <option value="${c.getCouserid()}" > ${c.getCouserid()} </option>
                    
                    
                        <a href="deleteslot?id=${c.getCouserid()}">${c.getCouserid()}</a>
                </c:forEach>

            </select>
            <button> send </button>
        </form>
        <br><br>
        <form action="update" method="post">
            <br><br>
            <table>
                <tr>
                    <td>Couserid: </td>
                    <td> <select name="Couserid">
                            <c:forEach items="${couser}" var="c">
                                <option value="${c.getCouserid()}" > ${c.getCouserid()} </option>

                            </c:forEach>

                        </select>


                    </td>
                </tr>

                <tr>
                    <td>CouserName:</td>
                    <td><input type="text" name="Cousername"></td>
                </tr>

                <tr>
                    <td>CouserDes:</td>
                    <td><input type="text" name="Couserdes"></td>
                </tr>

                <tr>
                    <td>CouserImg:</td>
                    <td> <input type="text" name="Couserimg"></td>
                </tr>

            </table>




            <button> send </button>
        </form>
        <br><br>

        <form action="insert" method="post">
            <div> Thêm khóa học </div>

            <table>
                <tr>
                    <td>Couserid: </td>
                    <td> <input type="text" name="Couserid"></td>
                </tr>

                <tr>
                    <td>CouserName:</td>
                    <td><input type="text" name="Cousername"></td>
                </tr>

                <tr>
                    <td>CouserDes:</td>
                    <td><input type="text" name="Couserdes"></td>
                </tr>

                <tr>
                    <td>CouserImg:</td>
                    <td> <input type="text" name="Couserimg"></td>
                </tr>

            </table>




            <button> send </button>

        </form>



    </body>
</html>
