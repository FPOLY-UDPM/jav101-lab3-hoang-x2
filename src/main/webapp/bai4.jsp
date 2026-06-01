<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         isELIgnored="false" %>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn"
           uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Bài 4</title>
</head>

<body>

<h2>XỬ LÝ CHUỖI</h2>

<ul>

    <li>
        Title:
        ${fn:toUpperCase(item.title)}
    </li>

    <li>

        Content:

        <c:choose>

            <c:when test="${fn:length(item.content) > 100}">

                ${fn:substring(item.content, 0, 100)}...

            </c:when>

            <c:otherwise>

                ${item.content}

            </c:otherwise>

        </c:choose>

    </li>

</ul>

</body>
</html>