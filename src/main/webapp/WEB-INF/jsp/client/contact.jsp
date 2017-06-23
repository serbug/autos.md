<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <title>CONTACT PAGE</title>

        <style>
            .errors{
                color: red;
            }
        </style>
    </head>
    <body>

        <!-- /////////////////////////////////////////Navigation -->


        <!-- Header -->


        <!-- /Back To Top -->

        <!-- /////////////////////////////////////////Content -->
        <div id="page-content" class="archive-page">

            <!-- ////////////Content Box -->
            <section class="box-content box-bg-white">
                <div class="box-form">
                    <div class="heading">
                        <h2><spring:message code="contact.message.title"/></h2>
                    </div>
                    <form:form action="send" method="POST" modelAttribute="mail" id="ff">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <spring:message code="contact.message.name" var="names"/>
                                    <form:input type="text" class="form-control input-lg" path="name" id="name" placeholder="${names}" required="required" />
                                    <form:errors path="name" cssClass="errors"/>
                                </div>
                                <div class="form-group">
                                    <spring:message code="contact.message.email" var="emails"/>
                                    <form:input type="email" class="form-control input-lg" path="email" id="email" placeholder="${emails}" required="required" />
                                    <form:errors path="email" cssClass="errors"/>
                                </div>
                                <div class="form-group">
                                    <spring:message code="contact.message.phone" var="phones"/>
                                    <form:input type="number" class="form-control input-lg" path="phone" id="phone" placeholder="${phones}" required="required" />
                                    <form:errors path="phone" cssClass="errors"/>
                                </div>
                                <div class="form-group">
                                    <spring:message code="contact.message.subject" var="subjects"/>
                                    <form:input type="text" class="form-control input-lg" path="subject" id="name" placeholder="${subjects}" required="required" />

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <spring:message code="contact.message.message" var="messages"/>
                                    <form:textarea path="message" id="message" class="form-control" rows="4" cols="25" required="required" placeholder="${messages}"/>
                                    <form:errors path="message" cssClass="errors"/>
                                </div>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-2 btn-sm" value="Send" >send</button><p class="text-success">${succes}</p> <p class="text-warning">${error}${errores}</p>
                    </div>


                </form:form>

            </section>

        </div>


        <!-- Footer -->


    </body>
</html>







