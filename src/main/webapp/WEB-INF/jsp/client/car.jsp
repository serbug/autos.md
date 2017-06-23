<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="utf-8">


        <link href="resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
        <link href="resources/css/style.css" rel='stylesheet' type='text/css' />
        <link href="resources/css/reset.css" rel='stylesheet' type='text/css' />

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!--        <script src="resources/scripts/jquery-3.1.1.min.js" type="text/javascript"></script>-->
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>



        <!-- LightBOX Master -->

        <link href="resources/css/lightgallery.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
        <script src="resources/js/lightgallery.min.js"></script>
        <script src="resources/js/lg-fullscreen.js"></script>
        <script src="resources/js/lg-thumbnail.min.js"></script>
        <script src="resources/js/lg-video.js"></script>
        <script src="resources/js/lg-autoplay.js"></script>
        <script src="resources/js/lg-zoom.js"></script>
        <script src="resources/js/lg-hash.js"></script>
        <script src="resources/js/lg-pager.js"></script>
        <script src="resources/js/jquery.mousewheel.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#lightgallery').lightGallery({
                    pager: true
                });
            });




        </script>
        <style type="text/css">


            .demo-gallery > ul {
                margin-bottom: 0;
            }
            /*            .demo-gallery > ul > li {
                            float: left;
                            margin-bottom: 15px;
                            margin-right: 20px;
                            width: 200px;
                            height: 20%;
                        }*/
            .demo-gallery > ul > li a {

                border-radius: 3px;
                display: block;
                overflow: hidden;
                position: relative;
                float: left;
            }
            /*            .demo-gallery > ul > li a > img {
                            -webkit-transition: -webkit-transform 0.15s ease 0s;
                            -moz-transition: -moz-transform 0.15s ease 0s;
                            -o-transition: -o-transform 0.15s ease 0s;
                            transition: transform 0.15s ease 0s;
                            -webkit-transform: scale3d(1, 1, 1);
                            transform: scale3d(1, 1, 1);
                            height: 50%;
                            width: 100%;
                        }*/
            .demo-gallery > ul > li a:hover > img {
                -webkit-transform: scale3d(1.1, 1.1, 1.1);
                transform: scale3d(1.1, 1.1, 1.1);
            }
            .demo-gallery > ul > li a:hover .demo-gallery-poster > img {
                opacity: 1;
            }
            .demo-gallery > ul > li a .demo-gallery-poster {
                background-color: rgba(0, 0, 0, 0.1);
                bottom: 0;
                left: 0;
                position: absolute;
                right: 0;
                top: 0;
                -webkit-transition: background-color 0.15s ease 0s;
                -o-transition: background-color 0.15s ease 0s;
                transition: background-color 0.15s ease 0s;
            }
            .demo-gallery > ul > li a .demo-gallery-poster > img {
                left: 50%;
                margin-left: -10px;
                margin-top: -10px;
                opacity: 0;
                position: absolute;
                top: 50%;
                -webkit-transition: opacity 0.3s ease 0s;
                -o-transition: opacity 0.3s ease 0s;
                transition: opacity 0.3s ease 0s;
            }
            .demo-gallery > ul > li a:hover .demo-gallery-poster {
                background-color: rgba(0, 0, 0, 0.5);
            }
            .demo-gallery .justified-gallery > a > img {
                -webkit-transition: -webkit-transform 0.15s ease 0s;
                -moz-transition: -moz-transform 0.15s ease 0s;
                -o-transition: -o-transform 0.15s ease 0s;
                transition: transform 0.15s ease 0s;
                -webkit-transform: scale3d(1, 1, 1);
                transform: scale3d(1, 1, 1);
                height: 100%;
                width: 100%;
            }
            .demo-gallery .justified-gallery > a:hover > img {
                -webkit-transform: scale3d(1.1, 1.1, 1.1);
                transform: scale3d(1.1, 1.1, 1.1);
            }
            .demo-gallery .justified-gallery > a:hover .demo-gallery-poster > img {
                opacity: 1;
            }
            .demo-gallery .justified-gallery > a .demo-gallery-poster {
                background-color: rgba(0, 0, 0, 0.1);
                bottom: 0;
                left: 0;
                position: absolute;
                right: 0;
                top: 0;
                -webkit-transition: background-color 0.15s ease 0s;
                -o-transition: background-color 0.15s ease 0s;
                transition: background-color 0.15s ease 0s;
            }
            .demo-gallery .justified-gallery > a .demo-gallery-poster > img {
                left: 50%;
                margin-left: -10px;
                margin-top: -10px;
                opacity: 0;
                position: absolute;
                top: 50%;
                -webkit-transition: opacity 0.3s ease 0s;
                -o-transition: opacity 0.3s ease 0s;
                transition: opacity 0.3s ease 0s;
            }
            .demo-gallery .justified-gallery > a:hover .demo-gallery-poster {
                background-color: rgba(0, 0, 0, 0.5);
            }
            /*            .demo-gallery .video .demo-gallery-poster img {
                            height: 48px;
                            margin-left: -24px;
                            margin-top: -24px;
                            opacity: 0.8;
                            width: 48px;
                        }*/
            /*            .demo-gallery.dark > ul > li a {
                            border: 3px solid #04070a;
                        }*/

            .thumbnail{
                border:0;
                background: transparent;
            }
            .auto .photo{
                width:100%;
                height:180px;
                overflow:hidden;
            }
            .auto .photo img{height:100%;}
            .auto .title{
                padding:12px 5px;
                background:#5f5f5f;
                color:#fff;
                font-size:13px;
                text-align:center;
            }
            .auto.no-border .title{text-transform: uppercase;font-size: 21px;text-align:center;}
            .auto .title span{
                border-left: 75px solid #2c2c2e;
                border-right: 20px solid transparent;
                border-top: 40px solid #2c2c2e;
                float: left;
                position: relative;
                display: block;
                top: -10px;
                left: -5px;
            }
            .auto .title span .views{
                position: absolute;
                z-index: 1;
                top: -28px;
                left: -70px;
                color: #7f7f7f;
                line-height: 15px;
            }

            .thumbnail a{position:relative;
                         width:100%;
                         height:100%;display:block;height:110px;overflow:hidden;}
            .pagination{margin:10px;}
            .pagination>.active>a, .pagination>.active>span, .pagination>.active>a:hover, .pagination>.active>span:hover, .pagination>.active>a:focus, .pagination>.active>span:focus {
                z-index: 2;
                color: #fff;
                background-color: #5f5f5f;
                border-color: #5f5f5f;
                cursor: default;
            }
            .pagination>li>a, .pagination>li>span{color:#2c2c2e;}
            .auto{
                background: #ffffff;
                padding: 3px;
                border: 1px solid #dfdfdf;
                color: #000;
                margin-bottom:30px;
            }
            .auto.no-border{padding:0;border:0;text-transform: uppercase;font-size: 16px;text-align:left;margin-bottom:20px;}
            .auto .info{
                position:relative;
                padding:15px 5px;
                font-size: 11px;
                font-weight: bold;
                color:#4E4D4D;
                height:125px;
            }
            .auto .info .details{
                position: relative;
                display: inline-block;
                padding: 10px;
                float:right;

                margin: 5px 0;
                background: #5f5f5f;
                color: #fff;
                font-weight: normal;
                border-radius: 5px;
            }
            .auto .info .details:hover{
                background:#2c2c2e;
            }
            .auto .prices{
                border-top: 1px solid #5f5f5f;
                border-bottom: 1px solid #5f5f5f;
                color: #2c2c2e;
                padding:10px 0;
                font-weight:bold;

            }
            .auto .prices .credit{
                background:#f12a27;
                color:#fff;
                border-radius: 5px 5px 5px 5px;
                -moz-border-radius: 5px 5px 5px 5px;
                -webkit-border-radius: 5px 5px 5px 5px;
                font-size: 16px;
                text-align: center;
            }
            .auto .prices span{font-size:12px;font-weight:normal;margin-right:3px;position:relative;}
            .panel-default>.panel-heading {
                position:relative;
                background: #f02a2b;
                color: #fff;
                font-size: 15px;
                text-transform: uppercase;
                border: 0;height:40px;
                padding-left:60px;
            }
            .panel-default>.panel-heading span {
                border-left: 10px solid #2c2a2b;
                border-right: 10px solid transparent;
                border-top: 40px solid #2c2a2b;
                position: absolute;
                top:0;
                left:0;
                display: inline-block;
                float: left;
            }
            .panel-body label {
                color: #555;
                position: relative;
                display: block;
                margin-bottom: 0px;
                font-size: 15px;
                font-weight: normal;
                font-weight: bold;
            }
            .detail-price {
                position: relative;
                border-bottom: 2px solid #aaa;
                border-top: 2px solid #aaa;
                color: #337ab7;
                padding: 9px 0;
                font-size: 32px;
                text-align: center;
            }
            @media (min-width: 992px){.col-md-12 {
                                          width: 100%;
                                          margin-bottom: 30px;
                                          margin-top: 30px;
                                      }}

            .panel-body label span {
                font-weight: normal;
            }
            .panel-body label .color {
                color: #f55;
                font-size: 20px;
                position: relative;
                margin-right: 10px;
            }

        </style>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-12">



                    <div class="col-md-9 car_list">

                        <div class="container-fluid">
                            <div class="col-md-6">

                                <div class="demo-gallery">
                                    <ul id="lightgallery">
                                        <c:forEach items="${imageList}" var="img">

                                            <li   data-src="userfiles/${img.fileName}"
                                                  data-sub-html="<h4>Autos.md</h4><p>Best auto!</p>" >
                                                <div class="col-xs-6 col-md-4">
                                                    <a href="" class="thumbnail">
                                                        <img  src="userfiles/${img.fileName}" style="width: 120px;" >
                                                        <div class="demo-gallery-poster">
                                                            <img src="http://sachinchoolur.github.io/lightGallery/static/img/zoom.png" >
                                                        </div>
                                                    </a>
                                                </div>
                                            </li>

                                        </c:forEach>
                                    </ul>
                                </div>
                                <!--                                <div style="position:relative;">
                                                                     id="big_image"
                                                                    <a href="#1" onclick="return false;" class="magnific-glass" style="position:relative;" id="href_big_image"><img id="big_image" class="big_image" style="position:relative;" src="http://images.interauto.md/cars/7501/medium_car_7501hz19ulpaez9yx2gqtxaq9n82.jpg" alt=""></a>
                                                                </div>



                                                                <br>

                                                                <ul class="car_details_thumbs">
                                                                    <li><a onmouseover="select_image(0, 'http://images.interauto.md/cars/7501/medium_car_7501rqlyfyazj1mnabd9goqp8pd7.jpg', 'http://images.interauto.md/cars/7501/car_7501rqlyfyazj1mnabd9goqp8pd7.jpg');" id="image_nr_0" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501rqlyfyazj1mnabd9goqp8pd7.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501rqlyfyazj1mnabd9goqp8pd7.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(1, 'http://images.interauto.md/cars/7501/medium_car_7501hz19ulpaez9yx2gqtxaq9n82.jpg', 'http://images.interauto.md/cars/7501/car_7501hz19ulpaez9yx2gqtxaq9n82.jpg');" id="image_nr_1" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501hz19ulpaez9yx2gqtxaq9n82.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501hz19ulpaez9yx2gqtxaq9n82.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(2, 'http://images.interauto.md/cars/7501/medium_car_7501as8z7um9q5qmhd77tgfka4zc.jpg', 'http://images.interauto.md/cars/7501/car_7501as8z7um9q5qmhd77tgfka4zc.jpg');" id="image_nr_2" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501as8z7um9q5qmhd77tgfka4zc.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501as8z7um9q5qmhd77tgfka4zc.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(3, 'http://images.interauto.md/cars/7501/medium_car_7501vyfth1hk8g9h1m8sque3bkxr.jpg', 'http://images.interauto.md/cars/7501/car_7501vyfth1hk8g9h1m8sque3bkxr.jpg');" id="image_nr_3" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501vyfth1hk8g9h1m8sque3bkxr.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501vyfth1hk8g9h1m8sque3bkxr.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(4, 'http://images.interauto.md/cars/7501/medium_car_7501doigz86f7rnaiqsnij3gdqt2.jpg', 'http://images.interauto.md/cars/7501/car_7501doigz86f7rnaiqsnij3gdqt2.jpg');" id="image_nr_4" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501doigz86f7rnaiqsnij3gdqt2.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501doigz86f7rnaiqsnij3gdqt2.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(5, 'http://images.interauto.md/cars/7501/medium_car_7501i2oez5xl751u2o5y5n97v3mt.jpg', 'http://images.interauto.md/cars/7501/car_7501i2oez5xl751u2o5y5n97v3mt.jpg');" id="image_nr_5" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501i2oez5xl751u2o5y5n97v3mt.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501i2oez5xl751u2o5y5n97v3mt.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(6, 'http://images.interauto.md/cars/7501/medium_car_7501azyfvh4bcoj4q94p7tf9hhqe.jpg', 'http://images.interauto.md/cars/7501/car_7501azyfvh4bcoj4q94p7tf9hhqe.jpg');" id="image_nr_6" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501azyfvh4bcoj4q94p7tf9hhqe.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501azyfvh4bcoj4q94p7tf9hhqe.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(7, 'http://images.interauto.md/cars/7501/medium_car_7501vrc2rt949medqucdt1qy8ca8.jpg', 'http://images.interauto.md/cars/7501/car_7501vrc2rt949medqucdt1qy8ca8.jpg');" id="image_nr_7" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501vrc2rt949medqucdt1qy8ca8.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501vrc2rt949medqucdt1qy8ca8.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(8, 'http://images.interauto.md/cars/7501/medium_car_750176sxx8aqe5c2x27hch8k8axj.jpg', 'http://images.interauto.md/cars/7501/car_750176sxx8aqe5c2x27hch8k8axj.jpg');" id="image_nr_8" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_750176sxx8aqe5c2x27hch8k8axj.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_750176sxx8aqe5c2x27hch8k8axj.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(9, 'http://images.interauto.md/cars/7501/medium_car_75018q5du1atu7yx3dohz516ml49.jpg', 'http://images.interauto.md/cars/7501/car_75018q5du1atu7yx3dohz516ml49.jpg');" id="image_nr_9" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_75018q5du1atu7yx3dohz516ml49.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_75018q5du1atu7yx3dohz516ml49.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(10, 'http://images.interauto.md/cars/7501/medium_car_750124ixok8yo6h6epmyfpr67p6k.jpg', 'http://images.interauto.md/cars/7501/car_750124ixok8yo6h6epmyfpr67p6k.jpg');" id="image_nr_10" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_750124ixok8yo6h6epmyfpr67p6k.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_750124ixok8yo6h6epmyfpr67p6k.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(11, 'http://images.interauto.md/cars/7501/medium_car_7501zrrbzlu6ahm3pb1x9q4fxonn.jpg', 'http://images.interauto.md/cars/7501/car_7501zrrbzlu6ahm3pb1x9q4fxonn.jpg');" id="image_nr_11" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501zrrbzlu6ahm3pb1x9q4fxonn.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501zrrbzlu6ahm3pb1x9q4fxonn.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(12, 'http://images.interauto.md/cars/7501/medium_car_7501kcvl37lfmceobyin4tqjjzz3.jpg', 'http://images.interauto.md/cars/7501/car_7501kcvl37lfmceobyin4tqjjzz3.jpg');" id="image_nr_12" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501kcvl37lfmceobyin4tqjjzz3.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501kcvl37lfmceobyin4tqjjzz3.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(13, 'http://images.interauto.md/cars/7501/medium_car_750156h1uaqk7rez4fekmajcs2cz.jpg', 'http://images.interauto.md/cars/7501/car_750156h1uaqk7rez4fekmajcs2cz.jpg');" id="image_nr_13" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_750156h1uaqk7rez4fekmajcs2cz.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_750156h1uaqk7rez4fekmajcs2cz.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(14, 'http://images.interauto.md/cars/7501/medium_car_750171jx3vajg5jjuisnur4dq2je.jpg', 'http://images.interauto.md/cars/7501/car_750171jx3vajg5jjuisnur4dq2je.jpg');" id="image_nr_14" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_750171jx3vajg5jjuisnur4dq2je.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_750171jx3vajg5jjuisnur4dq2je.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(15, 'http://images.interauto.md/cars/7501/medium_car_7501j11s9yt6vfyqne6zbl6451mu.jpg', 'http://images.interauto.md/cars/7501/car_7501j11s9yt6vfyqne6zbl6451mu.jpg');" id="image_nr_15" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_7501j11s9yt6vfyqne6zbl6451mu.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_7501j11s9yt6vfyqne6zbl6451mu.jpg" style="width:60px;"></a></li>
                                                                    <li><a onmouseover="select_image(16, 'http://images.interauto.md/cars/7501/medium_car_750137cdcl9nc3avtje6drs53dy4.jpg', 'http://images.interauto.md/cars/7501/car_750137cdcl9nc3avtje6drs53dy4.jpg');" id="image_nr_16" class="fancybox" rel="group" href="http://images.interauto.md/cars/7501/car_750137cdcl9nc3avtje6drs53dy4.jpg"><img src="http://images.interauto.md/cars/7501/thumb_car_750137cdcl9nc3avtje6drs53dy4.jpg" style="width:60px;"></a></li>
                                                                </ul>-->

                                <div class="clear"></div>


                            </div>
                            <div class="col-md-6">

                                <div class="auto no-border">
                                    <div class="title">
                                        ${auto.marca} ${auto.model}</div>
                                </div>
                                <div id="accordion" class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading"><span></span>
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" class="">Caracteristici</a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in" aria-expanded="true">
                                            <div class="panel-body">
                                                <label><span class="color">-</span> Fabricatie: <span class="onecar-info"><strong>${auto.fabricatie}</strong></span></label>
                                                <label><span class="color">-</span> Combustibil: <span class="onecar-info"><strong>${auto.combustibil}</strong></span></label>
                                                <label><span class="color">-</span> Cutie: <span class="onecar-info"><strong>${auto.cutie}</strong></span></label>
                                                <label><span class="color">-</span> Culoare: <span class="onecar-info"><strong>${auto.culoare}</strong></span></label>
                                                <label><span class="color">-</span> Cilindree: <span class="onecar-info"><strong>${auto.cilindree} cm <sup>3</sup></strong></span></label>
                                                <label><span class="color">-</span> Caroserie: <span class="onecar-info"><strong>${auto.caroserie}</strong></span></label>
                                                <label><span class="color">-</span> Putere: <span class="onecar-info"><strong>${auto.putere} CP</strong></span></label>
                                                <label><span class="color">-</span> Tractiune: <span class="onecar-info"><strong>${auto.tractiune}</strong></span></label>
                                                <label><span class="color">-</span> Rulaj: <span><strong class="onecar-info">${auto.rulaj} km</strong></span></label>
                                                <label><span class="color">-</span> Numarul de locuri: <span class="onecar-info"><strong>${auto.nrLocuri}</strong></span></label>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading"><span></span>
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">Securitate</a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                            <div class="panel-body">
                                                <label><span class="color">-</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading"><span></span>
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed" aria-expanded="false">Comfort</a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                            <div class="panel-body">
                                                <label><span class="color">-</span>
                                                </label>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="" style="padding: 0 10px;">
                                    <div class="detail-price row">
                                        ${auto.pret} €

                                        <!--                                            <div class="col-xs-7 credit text-right">
                                                                                        <span>prima rată</span>
                                                                                        1200 EUR                </div>-->
                                        <div class="clr"></div>

                                    </div>

                                </div>


                                <div class="clearfix"></div>

                            </div>

                            <div class="clear"></div>



                        </div>

                        <div class="clearfix"></div>
                        <div class="top30"></div>


                    </div>
                </div>
            </div>
        </div>

    </body>
</html>