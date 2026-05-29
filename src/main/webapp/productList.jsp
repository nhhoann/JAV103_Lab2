<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Danh sách sản phẩm</title></head>
<body>
<h2>Sản phẩm của cửa hàng</h2>
<div style="display: flex; gap: 20px; flex-wrap: wrap;">
    <c:forEach var="p" items="${productList}" varStatus="status">
        <div style="border:1px solid #ccc; padding:10px; width:200px;">
            <a href="detail?id=${status.index + 1}">
                <img src="images/${p.image}" width="150" />
            </a>
            <h3>${p.name}</h3>
            <p>Giá: ${p.price} USD</p>
        </div>
    </c:forEach>
</div>
</body>
</html>