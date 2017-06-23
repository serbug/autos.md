<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
    <head>
        <title>AutoDetails</title>

        <style type="text/css">
            .tg {
                border-collapse: collapse;
                border-spacing: 0;
                border-color: #ccc;
            }

            .tg td {
                font-family: Arial, sans-serif;
                font-size: 14px;
                padding: 10px 5px;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
                border-color: #ccc;
                color: #333;
                background-color: #fff;
            }

            .tg th {
                font-family: Arial, sans-serif;
                font-size: 14px;
                font-weight: normal;
                padding: 10px 5px;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
                border-color: #ccc;
                color: #333;
                background-color: #f0f0f0;
            }

            .tg .tg-4eph {
                background-color: #f9f9f9
            }
        </style>

    </head>
    <body>
        <h1>Auto Details</h1>

        <table class="tg">
            <tr>
                <th width="80">AutoId</th>
                <th width="120">Marca</th>
                <th width="120">Model</th>
                <th width="120">Pret</th>

                <th width="300">Imagine</th>
            </tr>
            <tr>
                <td > ${auto.autoId}</td>
                <td>${auto.marca}</td>
                <td>${auto.model}</td>
                <td>${auto.pret}</td>
                <td>  <c:choose>
                        <c:when test="${auto.type=='Noi'}">
                            <img src="userfiles/noi/${auto.fileName}" width="50" height="50"/>

                        </c:when>
                        <c:when test="${auto.type=='Usate'}">
                            <img src="userfiles/usate/${auto.fileName}" width="50" height="50"/>

                        </c:when>
                        <c:otherwise>
                            <img src="userfiles/chirie/${auto.fileName}" width="50" height="50"/>

                        </c:otherwise>
                    </c:choose>
                    <c:forEach items="${imageList}" var="img" varStatus="counter">
                        <img src="userfiles/${img.fileName}" width="50" height="50"/>

                    </c:forEach></td>

            </tr>
        </table>
    </body>
</html>