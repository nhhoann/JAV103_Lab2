<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head><title>Chi tiết sản phẩm</title></head>
<body>
<h2>${item.name}</h2>
<img src="images/${item.image}" width="200" />
<p>Giá gốc: ${item.price} USD</p>
<p>Giảm giá: ${item.discount}%</p>
<c:set var="newPrice" value="${item.price * (1 - item.discount/100)}" />
<p>Giá mới: ${newPrice} USD</p>
<p>Ngày nhập: ${item.importDate}</p>
<p>Mức giá:
    <c:choose>
        <c:when test="${newPrice < 10}">Giá thấp</c:when>
        <c:when test="${newPrice > 100}">Giá cao</c:when>
        <c:otherwise>Bình thường</c:otherwise>
    </c:choose>
</p>
<p>Tên viết hoa: ${fn:toUpperCase(item.name)}</p>
</body>
</html>