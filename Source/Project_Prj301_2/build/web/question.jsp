<%-- 
    Document   : question
    Created on : Nov 11, 2022, 9:53:56 AM
    Author     : lannt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${quetion}" var="q" >
            <div> Question: ${q.getId()}  : ${q.getQuestion()} </div>  

            <form action="question" method="post">

                <input type="radio" value="A" name="answer" >a: ${q.getA()}
                <input type="radio" value="B" name="answer" >b: ${q.getB()}
                <input type="radio" value="C" name="answer" >c: ${q.getC()}
                <input type="radio" value="D" name="answer" >d: ${q.getD()}
            </form>
        </c:forEach>
        <br>    <button>next</button>
    </body>
</html>
