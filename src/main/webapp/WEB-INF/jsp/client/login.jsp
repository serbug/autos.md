<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
    <link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet" type="text/css"/>

    <body>
        <div class="container">
            <div id="home">
                <a href="home.html">HOME</a>
            </div>


            <button onclick="document.getElementById('id01').style.display = 'block'" class="login-button">Login</button>

            <div id="id01" class="modal">

                <form class="modal-content animate" action="j_spring_security_check" method="post">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                        <img src="resources/images/java.jpg" alt="Avatar" class="avatar">
                    </div>

                    <div class="container">
                        <label><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="j_username" required>

                        <label><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="j_password" required >

                        <button type="submit">Login</button>
                        <input type="checkbox" checked="checked"> Remember me
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                        <span>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</span>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </div>
        </div>
        <script>
            // Get the modal
            var modal = document.getElementById('id01');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>

    </body>
</html>


<!--








<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet" type="text/css"/>

        <title>Login</title>
        <script>

            $(".user").focusin(function () {
                $(".inputUserIcon").css("color", "#e74c3c");
            }).focusout(function () {
                $(".inputUserIcon").css("color", "white");
            });

            $(".pass").focusin(function () {
                $(".inputPassIcon").css("color", "#e74c3c");
            }).focusout(function () {
                $(".inputPassIcon").css("color", "white");
            });
        </script>
    </head>
    <body>
        <div id="home">
            <a href="home.html">HOME</a>
        </div>
        <form action="j_spring_security_check" method="post">
            <h2><span class="entypo-login"></span> Login</h2>
            <button class="submit"><span class="entypo-lock"></span></button>
            <span class="entypo-user inputUserIcon"></span>
            <input type="text" class="user" name="j_username" placeholder="username"/>
            <span class="entypo-key inputPassIcon"></span>
            <input type="password" class="pass" name="j_password" placeholder="password"/>
            <font color="red">
            <span>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</span>
            </font>
        </form>
    </body>
</html>
-->
