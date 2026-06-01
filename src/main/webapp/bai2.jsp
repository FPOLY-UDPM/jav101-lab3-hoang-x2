<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         isELIgnored="false" %>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Bài 2</title>

    <style>

        table{
            border-collapse: collapse;
            width: 400px;
        }

        th, td{
            border: 1px solid black;
            padding: 8px;
        }

    </style>

</head>

<body>

<h2>ĐỔ DỮ LIỆU VÀO BẢNG</h2>

<table>

    <thead>
    <tr>
        <th>No.</th>
        <th>Id</th>
        <th>Name</th>
    </tr>
    </thead>

    <tbody>

    <c:forEach var="ct"
               items="${countries}"
               varStatus="vs">

        <tr>
            <td>${vs.count}</td>
            <td>${ct.id}</td>
            <td>${ct.name}</td>
        </tr>

    </c:forEach>

    </tbody>

</table>

</body>
</html>