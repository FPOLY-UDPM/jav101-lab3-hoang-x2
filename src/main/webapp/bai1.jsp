<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         isELIgnored="false" %>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Bài 1</title>
</head>

<body>

<h2>ĐỔ DỮ LIỆU VÀO SELECT BOX</h2>

<select name="country">

    <c:forEach var="ct" items="${countries}">

        <option value="${ct.id}">
                ${ct.name}
        </option>

    </c:forEach>

</select>

</body>
</html>