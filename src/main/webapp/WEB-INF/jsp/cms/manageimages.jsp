<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

    <head>

        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">

        <style>
            body, #mainWrapper {
                height: 100%;
                background-color:rgb(245, 245, 245);
            }

            body, .form-control{
                font-size:12px!important;
            }

            .floatRight{
                float:right;
                margin-right: 18px;
            }

            .has-error{
                color:red;
            }

            .uploadcontainer{
                background-color: bisque;
                padding: 20px;
            }

            .tablecontainer{
                padding-left: 20px;
            }

            .generic-container {
                width:80%;
                margin-left: 20px;
                margin-top: 20px;
                margin-bottom: 20px;
                padding: 20px;
                background-color: #EAE7E7;
                border: 1px solid #ddd;
                border-radius: 4px;
                box-shadow: 0 0 30px black;
            }

            .custom-width {
                width: 80px !important;
            }
        </style>

    </head>

    <body>
        <div class="generic-container">
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading"><span class="lead">List of Images </span></div>
                <div class="tablecontainer">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>File Name</th>
                                <th>Image</th>
                                <th width="100"></th>
                                <th width="100"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${image}" var="img" varStatus="counter">
                                <tr>
                                    <td>${counter.index + 1}</td>
                                    <td>${img.fileName}</td>
                                    <td><img src="userfiles/${img.fileName}" width="50" height="50"/></td>
                                    <td><a href="<c:url value='/download-image-${auto.autoId}-${img.id}' />" class="btn btn-success custom-width">download</a></td>
                                    <td><a href="<c:url value='/delete-image-${auto.autoId}-${img.id}' />" class="btn btn-danger custom-width">delete</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel panel-default">

                <div class="panel-heading"><span class="lead">Upload New Image</span></div>
                <div class="uploadcontainer">
                    <form:form method="POST" modelAttribute="fileBucket" enctype="multipart/form-data" class="form-horizontal">

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-3 control-lable" for="file">Upload a Image</label>
                                <div class="col-md-7">
                                    <form:input type="file"  path="file" id="file" class="form-control input-sm"/>
                                    <div class="has-error">
                                        <form:errors  path="file" class="help-inline"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-actions floatRight">
                                <input type="submit" value="Upload" class="btn btn-primary btn-sm">
                            </div>
                        </div>

                    </form:form>
                </div>
            </div>
            <div class="well">
                Go to <a href="<c:url value='/cmsauto' /> " class="btn btn-info" role="button">Auto List</a>
            </div>
        </div>
    </body>
</html>