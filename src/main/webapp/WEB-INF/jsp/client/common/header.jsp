<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Proiect final Spring MVC/Hibernate/Bootstrap" />
        <meta name="author" content="www.iucosoft.com" />




        <!--        Bootstrap Core CSS-->
        <link rel="stylesheet" href="resources/css/bootstrap.min.css" />

        <!--        Optional theme-->
        <!--        <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css" />-->



        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/flag-icon-css-master/css/flag-icon.min.css" rel="stylesheet" type="text/css" />

        <!-- Custom Theme files -->
        <link href="resources/css/style.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/reset.css" rel="stylesheet" type="text/css" />

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="resources/scripts/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="resources/scripts/googleMap.js" type="text/javascript"></script>
        <script src="resources/scripts/modalScript.js" type="text/javascript"></script>

        <style>
            ul.nav.navbar-nav.navbar-center{
                background-color: red;
            }
            ul.nav.navbar-nav.navbar-right{
                background-color: red;
                text-transform: uppercase;
            }
            @media (min-width: 768px){.navbar-nav>li {
                                          float: left;
                                          padding: 5px;
                                      }
                                      .navbar-nav>li:hover{
                                          background-color: #000;                                      }
            }
        </style>

    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1">

                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand  img-brand" href="home.html">
                            <img src="resources/images/logo.png"  alt="" >

                        </a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <ul class="nav navbar-nav ">
                            <li>
                                <a class="page-scroll" href="home.html"><spring:message code="title.menu.home"/></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button"  aria-expanded="true"><spring:message code="title.menu.auto"/><span class="caret"></span></a>
                                <ul class="dropdown-menu " role="menu">
                                    <li><a href="newcars"><spring:message code="title.menu.autonoi"/></a></li>
                                    <li><a href="usedcars"><spring:message code="title.menu.autousate"/></a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggl page-scroll" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><spring:message code="title.menu.service"/><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="serviciiLaSchimb.html"><spring:message code="title.menu.laschimb"/></a></li>
                                    <li><a href="serviciiLeasing.html"><spring:message code="title.menu.leasing"/></a></li>
                                    <li><a href="asigurare.html"><spring:message code="title.menu.asigurare"/></a></li>
                                </ul>
                            </li>
                            <%--<li>--%>
                            <%--<a class="page-scroll" href="#">About</a>--%>
                            <%--</li>--%>
                            <li class="dropdown nav-li">
                                <a href="#" class="dropdown-toggle page-scroll" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><spring:message code="title.menu.chirie"/><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="rentcars"><spring:message code="title.menu.autochirie"/></a></li>
                                </ul>
                            </li>

                            <li>
                                <a class="page-scroll" href="contact.html"><spring:message code="title.menu.contact"/></a>
                            </li>
                            <li class="dropdown lang">
                                <a href="?language=en"  class="dropdown-toggle page-scroll" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${pageContext.response.locale}<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="?language=en"><span class="flag-icon flag-icon-us"></span> EN</a></li>
                                    <li><a href="?language=it"><span class="flag-icon flag-icon-it"></span> IT</a></li>
                                    <li><a href="?language=ro"><span class="flag-icon flag-icon-ro"></span> RO</a></li>
                                    <li><a href="?language=ru"><span class="flag-icon flag-icon-ru"></span> RU</a></li>
                                </ul>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
        </div>
        <header>
            <!-- Carousel -->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active left">
                        <img src="resources/images/1.jpg" alt="First slide">
                        <!-- Static Header -->
                        <div class="header-text">
                            <div class="col-md-12 text-center">
                                <h2>Publicitate</h2>
                                <br>
                                <h3 >"Cel mai sigur dispozitiv de siguranta al unei masini este o oglinda retrovizoare cu un politist in ea."
                                    Dudley Moore</h3>
                                <br>
                            </div>
                        </div><!-- /header-text -->
                    </div>
                    <div class="item next left">
                        <img src="resources/images/2.jpg" alt="Second slide">
                        <!-- Static Header -->
                        <div class="header-text">
                            <div class="col-md-12 text-center">
                                <h2>Welcome to Autos.md</h2>
                                <br>
                                <h3 >"Rabdarea este ceva ce admiri la soferul din spatele tau si te enerveaza la cel din fata ta."
                                    Mac McCleary</h3>
                                <br>
                            </div>
                        </div><!-- /header-text -->
                    </div>
                    <div class="item">
                        <img src="resources/images/3.jpg" alt="Third slide">
                        <!-- Static Header -->
                        <div class="header-text">
                            <div class="col-md-12 text-center">
                                <h2>Publicitate</h2>
                                <br>
                                <h3 >"Masina a devenit sanctuarul secular al individului, templul inchinat lui insusi."
                                    Edward McDonagh</h3>
                                <br>
                            </div>
                        </div><!-- /header-text -->
                    </div>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div><!-- /carousel -->
        </header>
        <a id="backTop" class="orange" style="right: 40px; bottom: 40px; position: fixed; display: none;">Back To Top</a>
        <!-- /Back To Top -->
    </body>
</html>

