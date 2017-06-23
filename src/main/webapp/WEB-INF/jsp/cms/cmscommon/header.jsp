<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Proiect final Spring MVC/Hibernate/Bootstrap" />
        <meta name="author" content="www.iucosoft.com" />




        <!-- Bootstrap Core CSS -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">

        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/flag-icon-css-master/css/flag-icon.min.css" rel="stylesheet" type="text/css" />

        <!-- Custom Theme files -->
        <link href="resources/css/cmsstyle.css" rel='stylesheet' type='text/css' />
        <link href="resources/css/reset.css" rel='stylesheet' type='text/css' />

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="resources/scripts/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="resources/scripts/googleMap.js" type="text/javascript"></script>

        <style>
            ul.nav.navbar-nav.navbar-center{
                background-color: red;
            }
            ul.nav.navbar-nav.navbar-right{
                background-color: red;
                text-transform: uppercase;
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
                        <a class="navbar-brand " href="home.html">
                            <img src="resources/images/logo.png"  alt="" >

                        </a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <ul class="nav navbar-nav ">
                            <li>
                                <a class="page-scroll" href="home.html"><spring:message code="title.menu.home"/></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button"  aria-expanded="true">Auto<span class="caret"></span></a>
                                <ul class="dropdown-menu " role="menu">
                                    <li><a href="auto">Auto Noi</a></li>
                                    <li><a href="#">Auto de vanzare</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggl page-scroll" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">TEXT<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="serviciiLaSchimb.html">La schimb</a></li>
                                    <li><a href="serviciiLeasing.html">Leasing</a></li>
                                    <li><a href="asigurare.html">Asigurare</a></li>
                                </ul>
                            </li>

                            <li>
                                <a class="page-scroll" href="#">Portfolio</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="logout"><spring:message code="user.logout"/></a>
                            </li>
                            <li class="dropdown">
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

        <a id="backTop" class="orange" style="right: 40px; bottom: 40px; position: fixed; display: none;">Back To Top</a>
        <!-- /Back To Top -->
    </body>
</html>

