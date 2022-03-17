<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有的书</title>
    <style type="text/css">
        .div1{
            position: absolute;
            top:10px;
            left:50px;
            width: 200px;
            height: 30px;
        }
        .a1{
            text-decoration: none;
            font-size: 18px;
            text-align: center;
            color: red;
        }
        .div2{
            position: absolute;
            text-align: center;
            left: 100px;
            top:120px;
            width: 800px;
            height: 600px;
        }
        .div3{
            position: absolute;
            top:80px;
            left:60px;
            width: 100px;
            height: 30px;
        }
        .table1{
            text-align: center;
        }
    </style>
</head>
<body>
<div class="div1">
    <h1>书籍列表</h1>
</div>
<div class="div3">
    <a class="a1" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
    <a class="a2" href=""
</div>
<div class="div2">
    <table border="2px" class="table1">
        <thead>
        <tr>
            <td>书籍编号</td>
            <td>书籍名称</td>
            <td>书籍数量</td>
            <td>书籍详情</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="book" items="${Books}">
            <tr>
                <td>${book.bookID}</td>
                <td>${book.bookName}</td>
                <td>${book.bookCounts}</td>
                <td>${book.detail}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/book/toUpdateBook/${book.bookID}" class="a1">修改</a>
                    &nbsp;  |   &nbsp;
                    <a href="${pageContext.request.contextPath}/book/delete/${book.bookID}" class="a1">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>

</div>
</body>
</html>
