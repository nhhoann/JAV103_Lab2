<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head><title>Layout Demo</title></head>
<body>
<h2>Danh sách sản phẩm (include với tham số)</h2>
<jsp:include page="item.jsp">
    <jsp:param name="name" value="San pham A" />
    <jsp:param name="hinh" value="sp1.jpg" />
</jsp:include>
<jsp:include page="item.jsp">
    <jsp:param name="name" value="San pham B" />
    <jsp:param name="hinh" value="sp2.jpg" />
</jsp:include>
</body>
</html>