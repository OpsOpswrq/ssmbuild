<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <style type="text/css">
      .a1{
        color:black;
        text-decoration: none;
        font-size: 18px;
        text-align: center;
      }
      .div1{
          text-align: center;
          border-radius: 20px;
        background-color: red;
        width: 200px;
        height: 40px;
        margin: auto;
        position: absolute;
        top: 0px;
        left:0px;
        right:0px;
        bottom:0px;
      }
    </style>
  </head>
  <body>
  <div class="div1">
    <a class="a1" href="${pageContext.request.contextPath}/book/allBooks">去到所有书的页面</a>
  </div>
  </body>
</html>
