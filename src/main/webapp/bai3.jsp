<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         isELIgnored="false" %>

<%@ taglib prefix="fmt"
           uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Bài 3</title>
</head>

<body>

<h2>ĐỊNH DẠNG THỜI GIAN VÀ SỐ</h2>

<ul>

    <li>
        Name:
        ${item.name}
    </li>

    <li>
        Price:

        <fmt:formatNumber
                value="${item.price}"
                pattern="#,###.00"/>
    </li>

    <li>
        Date:

        <fmt:formatDate
                value="${item.date}"
                pattern="MMM dd, yyyy"/>
    </li>

</ul>

</body>
</html>