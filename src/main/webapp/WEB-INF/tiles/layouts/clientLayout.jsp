<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>

    <head>
        <tiles:importAttribute name="title" />
        <title><spring:message code="${title}"></spring:message></title>
        </head>

        <body>
            <header >
            <tiles:insertAttribute name="header"/>
        </header>



        <section>
            <tiles:insertAttribute name="body"/>
        </section>

        <footer >
            <tiles:insertAttribute name="footer"/>
        </footer>
    </body>


</html>