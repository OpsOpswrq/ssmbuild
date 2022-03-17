<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍</title>
    <style type="text/css">
        .div1{
            position: absolute;
            top:10px;
            left:50px;
            width: 200px;
            height: 30px;
        }
        .div2{
            position: absolute;
            text-align: center;
            width: 800px;
            height: 600px;
            top:100px;
        }
        .a1{
            text-decoration: none;
            font-size: 18px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="div1">
    <h1>新增书籍</h1>
</div>
<div class="div2">

    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <label>书籍名称:</label>
        <input type="text" name="bookName" required><br><br><br>
        <label>书籍数量:</label>
        <input type="text" name="bookCounts" required><br><br><br>
        <label>书籍描述:</label>
        <input type="text" name="detail" required><br><br><br>
        <input type="submit" value="添加">
    </form>
    <a href="${pageContext.request.contextPath}/book/allBooks" class="a1">回到原页面</a>
</div>
</body>
</html>
