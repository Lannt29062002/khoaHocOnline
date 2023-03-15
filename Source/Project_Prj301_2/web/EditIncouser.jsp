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
        <title>EditIncouser</title>
    </head>
    <body>
        <h1> Chỉnh sửa Slot </h1>

        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Slot</th>
                    <th>Date Begin</th>
                    <th>Date End</th>
                    <th>Content</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${incouser}" var="ic">
                    <tr>
                        <td>${ic.getCouserid()}</td>
                        <td>${ic.getSlot()}</td>
                        <td>${ic.getDatebegin()}</td>
                        <td>${ic.getDateend()}</td>
                        <td>${ic.getContent()}</td>
                        
                    </tr>

                </c:forEach>

            </tbody>
        </table>
        <br><br>




        <form action="updateslot" method="post">
            Cập nhật slot:
            <table>
                <tr>
                    <td>Couserid: </td>
                    <td> 
                        <select name="id">

                            <c:forEach items="${incouser}" var="c" begin="1" end="1">
                                <option value="${c.getCouserid()}" >${c.getCouserid()} </option>
                            </c:forEach>

                        </select>
                    </td>
                </tr>

                <tr>
                    <td>Slot:</td>
                    <td><select name="Slot">
                            <c:forEach items="${incouser}" var="c">
                                <option value="${c.getSlot()}" >${c.getSlot()} </option>
                            </c:forEach>
                        </select></td>
                </tr>

                <tr>
                    <td>Date begin: </td>
                    <td><input type="date" name="datebegin"></td>
                </tr>

                <tr>
                    <td>Date End: </td>
                    <td> <input type="date" name="datebend"></td>
                </tr>

                <tr>
                    <td>Content: </td>
                    <td> <input type="text" name="content"></td>
                </tr>


            </table>




            <button> send </button>
        </form>
        <br><br>

        <form action="insetslot" method="post">
            <div> Thêm slot: </div>

            <table>
                <tr>
                    <td>Id: </td>
                    <td> <select name="id">

                            <c:forEach items="${incouser}" var="c" begin="1" end="1">
                                <option value="${c.getCouserid()}" >${c.getCouserid()} </option>
                            </c:forEach>

                        </select></td>
                </tr>

                <tr>
                    <td>Slot: </td>
                    <td><input type="number" name="Slot"></td>
                </tr>
                
                <tr>
                    <td>Date begin: </td>
                    <td><input type="date" name="datebegin"></td>
                </tr>

                 <tr>
                    <td>Date End: </td>
                    <td> <input type="date" name="datebend"></td>
                </tr>

                <tr>
                    <td>Content: </td>
                    <td> <input type="text" name="content"></td>
                </tr>


            </table>




            <button> send </button>

        </form>



    </body>
</html>
