<%@ page pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>


<nav id="navig">
    <ul id="mainmenupage">
        <li><a href="home.html"><spring:message code="title.menu.home"/></a></li>
        <li><a href="#"><spring:message code="title.menu.auto"/></a>
            <ul id="submenumain">
                <li><a href="auto">Auto Noi</a></li>
                <li><a href="#">Auto de vanzare</a></li>

            </ul>
        </li>
        <li><a href="#">SERVICII</a>
            <ul id="submenumain">
                <li><a href="serviciiLaSchimb.html">La schimb</a></li>
                <li><a href="serviciiLeasing.html">Leasing</a></li>
                <li><a href="asigurare.html">Asigurare</a></li>
            </ul>
        </li>
        <li><a href="#">CHIRIE</a>
            <ul id="submenumain">
                <li><a href="#">Auto pentru nunti</a></li>

            </ul>
        </li>
        <li><a href="contact.html"><spring:message code="title.menu.contact"/></a></li>
    </ul>
</nav>