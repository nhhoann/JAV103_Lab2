<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<p style="color:blue;">${message}</p>
<form action="user" method="post">
    Username: <input type="text" name="username" value="${form.username}" /><br/>
    Password: <input type="password" name="password" value="${form.password}" /><br/>
    Remember: <input type="checkbox" name="remember" ${form.remember ? "checked" : ""} /><br/>
    <input type="submit" value="Add User" />
</form>