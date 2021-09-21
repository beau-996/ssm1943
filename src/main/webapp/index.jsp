<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>功能入口</title>
</head>
<body>
<div align="center">
    <p>SSM整合例子</p>
    <img src="images/ssm.jpg"/>
    <table >
        <tr>
            <td><a href="addStudent.jsp">注册学生</a></td>

        </tr>
        <tr>
            <td><a href="listStudent.jsp">浏览学生</a></td>

        </tr>
    </table>
</div>


</body>
</html>
