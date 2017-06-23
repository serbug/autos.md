<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="date" class="java.util.Date"/>

<style>
    #map {
        height: 590px;
        width: 100%;
    }

</style>

<footer>
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-body">

                    <div class="close-button">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" frameborder="0" width="854"></iframe>
                    </div>
                </div>

            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class="wrap-footer">
        <div class="no-gutter">
            <div class="col-md-4">
                <div class="box-text">
                    <div class="footer-heading">
                        <h2>Contacts</h2>
                    </div>
                    <p><i class="fa fa-map-marker"></i>AUTOS.MD Str. Vlaicu Parcalab 52</p>
                    <p><i class="fa fa-phone"></i> 022 22-11-11</p>
                    <p><i class="fa fa-envelope-o"></i> none@gmail.com</p>
                    <p><i class="fa fa-clock-o"></i> 7 Days a week from 9:00 am to 7:00 pm</p>
                    <ul class="list-inline social-link">
                        <li><a href="http://iucosoft.com" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="http://iucosoft.com" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="http://iucosoft.com" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                    <p id="footer-img" style=" display: inline-block; text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue; margin-top: 8%;margin-left: 33%;"> IUCOSOFT &#169; <fmt:formatDate value="${date}" pattern="yyyy"/> - by
                        <a href="http://iucosoft.com" target="_blank"><img src="resources/images/text-logo.png"/></a>  </p>

                </div>
            </div>
            <div class="col-md-8">
                <div class='embed-container maps'>
                    <div id="map"></div>
                    <script async defer
                            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC-i_AGfcGzGCpWXhYzICOfBSlsEo8IAR4&callback=initMap">
                    </script>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</footer>

<!-- Core JavaScript Files -->

<script src="resources/js/jquery.backTop.min.js"></script>
<script>
                                $(document).ready(function () {
                                    $('#backTop').backTop({
                                        'position': 1200,
                                        'speed': 500,
                                        'color': 'orange',
                                    });
                                });
</script>

<!-- Google Map -->
<script>
    $('.maps').click(function () {
        $('.maps iframe').css("pointer-events", "auto");
    });

    $(".maps").mouseleave(function () {
        $('.maps iframe').css("pointer-events", "none");
    });
</script>