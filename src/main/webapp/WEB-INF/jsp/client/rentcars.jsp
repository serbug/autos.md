<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>

            @media (min-width: 992px){.col-md-12 {
                                          width: 100%;
                                          margin-top: 40px;
                                          margin-bottom:  18px;
                                      }}


        </style>
    </head>
    <body>
        <jsp:useBean id="pagedListHolder" scope="request" type="org.springframework.beans.support.PagedListHolder"/>
        <%-- // create link for pages, "~" will be replaced later on with the proper page number --%>
        <c:url value="/rentcars" var="pagedLink">
            <c:param name="action" value="list"/>
            <c:param name="p" value="~"/>
        </c:url>
        <div class="container">
            <div class="col-md-12 car_list">
                <div class = "container-fluid">
                    <div class = "row text-center">


                        <c:forEach items="${pagedListHolder.pageList}" var="auto">
                            <div class="col-md-3">
                                <div class="car_block">
                                    <div class="fader">
                                        <a href="car-${auto.autoId}" style="width: 252; height: 186;">

                                            <!--
                                            <div class="add_fav" href="javascript:void(0);" onclick="add_fav(10392, 11750);" title="Adauga in favorite"></div>
                                            -->

                                            <!--                                            <div class="visible-lg" style="position:absolute;width:252px;height:189px;background:url('http://static.interauto.md/media/winter2017/bg_xmas_cars_3.png');z-index:1;"></div>-->






                                            <img src="userfiles/chirie/${auto.fileName}" alt=" Hyundai Accent" style="width: 252; height: 186;">


                                            <img src="userfiles/chirie/${auto.fileName}" alt=" Hyundai Accent" style="width: 252; height: 186;">

                                        </a>
                                    </div>



                                    <h2 class="car_block_title"> ${auto.marca} ${auto.model}</h2>

                                    <div class="car_other_details">
                                        <div class="car_other_detail">Fabricatie: <strong>${auto.fabricatie}</strong></div>
                                        <!--                                                                                <div class="car_other_detail">Combustibil: <strong>1600 cm<sup>3</sup></strong></div>-->
                                        <div class="car_other_detail">Combustibil: <strong>${auto.combustibil}</strong></div>
                                        <div class="car_other_detail">Cutie: <strong>${auto.cutie}</strong></div>
                                        <div class="car_other_detail">Culoare: <strong>${auto.culoare}</strong></div>
                                    </div>

                                    <div class="car_block_price">${auto.pret} €</div>
                                </div>
                            </div>

                        </c:forEach>

                    </div>
                </div>
                <tg:paging pagedListHolder="${pagedListHolder}" pagedLink="${pagedLink}"/>

            </div>
        </div>
    </body>
</html>
