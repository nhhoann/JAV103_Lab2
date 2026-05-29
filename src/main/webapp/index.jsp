<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lab 2</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333; }
        ul { list-style-type: none; padding: 0; }
        li { margin: 20px 0; border-left: 4px solid #0066cc; padding-left: 15px; }
        a { text-decoration: none; font-size: 18px; font-weight: bold; color: #0066cc; }
        a:hover { text-decoration: underline; }
        .desc { color: #555; margin-top: 5px; font-size: 14px; }
    </style>
</head>
<body>
    <h1>Lab 2 - JSP/Servlet, EL, JSTL</h1>
    <ul>
        <li>
            <a href="layout.jsp" target="_blank">Bài 1: Truyền tham số giữa layout.jsp và item.jsp</a>
            <div class="desc">Hiển thị sản phẩm với tên và hình ảnh được truyền qua jsp:param.</div>
        </li>
        <li>
            <a href="user" target="_blank">Bài 2: Quản lý User (JavaBean + EL)</a>
            <div class="desc">Thêm user, hiển thị danh sách dạng bảng, sử dụng EL và JSTL.</div>
        </li>
        <li>
            <div class="title-text">Bài 3: Chi tiết sản phẩm (JSTL Core & Functions)</div>
            <div class="desc">Xem chi tiết sản phẩm, giá sau giảm, phân loại mức giá, viết hoa tên.</div>
            <div class="desc">Sản phẩm: 
                <a href="detail?id=1" target="_blank">Túi xách Chanel</a> | 
                <a href="detail?id=2" target="_blank">Túi xách Dior</a> | 
                <a href="detail?id=3" target="_blank">Túi xách YSL</a>
            </div>
        </li>
        <li>
            <a href="products" target="_blank">Bài 4: Danh sách sản phẩm (click ảnh vào chi tiết)</a>
            <div class="desc">Hiển thị lưới sản phẩm, mỗi ảnh là link đến trang chi tiết (bài 3).</div>
        </li>
    </ul>
</body>
</html>