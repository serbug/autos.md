<%@ include file="/WEB-INF/jsp/includes.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="title.home.page"/></title>
        <style>
            @media screen and (min-width: 1200px) {
                .w-container {
                    max-width: 1170px;
                }
            }


            @media (min-width: 768px){.modal-dialog {
                                          width: 1177px;
                                          margin: 30px auto;
                                      }}
            #launch-text{
                text-align: center;
                font-size: large;
                color: #1b6d85;
            }

        </style>

    </head>
    <body>




        <!-- /////////////////////////////////////////Content -->
        <div id="page-content" class="index-page">

            <!-- ////////////Content Box 01 -->
            <section class="box-content box-1 box-bg-black">
                <div class="no-gutter">
                    <div class="col-sm-6 fix-right">
                        <div class="box-image">
                            <img class="media__image " src="resources/images/4.jpg">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="box-text">
                            <div class="heading">
                                <h2>welcome</h2>
                                <span>RENT THE CAR <br>OF YOUR DREAMS</span>
                            </div>
                            <p>We specialize in exotic and luxury car rental. Whether you are looking for a Mercedes, a luxury SUVs, Jaguar convertible, Range Rover, BMW, Porsche, Cadillac, Bentley, Corvette, Hummer, Viper, or a conversion van, 15 passenger vans, a new hybrid or sport convertible car to rent, you have come to the right place. We carry only the newest models of exotic cars available and keep our rental cars in new condition all with very low mileage.</p>
                        </div>

                        <div id="home-img" style=" margin-top:40px; " >
                            <div class="col-sm-3"> <a href="#"><img src="resources/images/spam_promo_ro.gif"></a></div>
                            <div class="col-sm-3">  <a href="serviciiLeasing.html"><img src="resources/images/spam_services_ro.gif"></a></div>
                            <div class="col-sm-3">  <a href="serviciiLeasing.html"><img src="resources/images/home_gif.gif"></a></div>
                        </div>

                    </div>
                </div>
                <div class="clear"></div>
            </section>

            <!-- ////////////Content Box 02 -->
            <section class="box-content box-2 box-bg-white">
                <div class="no-gutter">
                    <div class="col-sm-6">
                        <div class="box-image">
                            <img class="media__image " src="resources/images/14.jpg">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="box-text">
                            <div class="heading">
                                <h2>About</h2>
                                <span>RENT THE CAR <br>OF YOUR DREAMS</span>
                            </div>
                            <p>"Atunci cand conduci o masina noua te simti ca si cum ai fi intr-un portofel burdusit cu bani , cu bancnotele plesnindu-te peste urechi in timp ce zboara pe fereastra."
                                Grey Livingston</p>
                        </div>
                        <div class="page">

                            <button type="button" class="modalButton btn btn-warning  btn-xl" data-toggle="modal" data-src="https://vid.me/e/QDNc?autoplay=1&amp;loop=1&amp;stats=1"  data-width="854" data-height="480" data-target="#myModal" data-video-fullscreen=""><i class="fa fa-play"></i></button><p id="launch-text">Launch Video</p>

                        </div>

                    </div>
                </div>
                <div class="clear"></div>
            </section>

            <!-- ////////////Content Box 03 -->
            <section class="box-content box-3">
                <div class="no-gutter">
                    <div class="col-lg-4 col-sm-6">
                        <a href="rentcars.html" class="portfolio-box">
                            <img src="resources/images/5.jpg" class="img-responsive" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        RENT CARS
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a href="newcars.html" class="portfolio-box">
                            <img src="resources/images/6.jpg" class="img-responsive" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        NEW CARS
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a href="usedcars.html" class="portfolio-box">
                            <img src="resources/images/7.jpg" class="img-responsive" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        USED CARS
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a href="asigurare.html" class="portfolio-box">
                            <img src="resources/images/8.jpg" class="img-responsive" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        ASIGURARE
                                    </div>
                                    <div class="project-name">
                                        Cele mai avantajoase asigurari auto!
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a href="serviciiLaSchimb.html" class="portfolio-box">
                            <img src="resources/images/9.jpg" class="img-responsive" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        TREADE-IN
                                    </div>
                                    <div class="project-name">
                                        Schimba masina veche pe una noua!
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a href="serviciiLeasing.html" class="portfolio-box">
                            <img src="resources/images/10.jpg" class="img-responsive" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        LEASING
                                    </div>
                                    <div class="project-name">
                                        Noi oferim cele mai atractive solutii financiare!
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="clear"></div>
            </section>

        </div>

    </body>
</html>


