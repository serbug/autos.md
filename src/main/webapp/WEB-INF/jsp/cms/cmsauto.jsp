<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Auto Management</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <script src="resources/scripts/jquery-3.1.1.min.js" type="text/javascript"></script>

        <c:url var="findMarcaModelsURL" value="/models" />
        <c:url var="findMarcasURL" value="/marcas" />

        <script type="text/javascript">
            $(document).ready(function () {
                $('#marca').change(
                        function (        ) {
                            $.getJSON('${findMarcaModelsURL}', {
                                marcaName: $(this).val(),
                                ajax: 'true'
                            }, function (data) {
                                var html = '<option value="">Model</option>';
                                var len = data.length;
                                for (var i = 0; i < len; i++) {
                                    html += '<option value="' + data[i].name + '">'
                                            + data[i].name + '</option>';
                                }
                                html += '</option>';

                                $('#model').html(html);
                            });
                        });
            });
        </script>

        <script type="text/javascript">
            $(document).ready(
                    function (        ) {
                        $.getJSON('${findMarcasURL}', {
                            ajax: 'true'
                        }, function (data) {
                            var html = '<option value="">Marca</option>';
                            var len = data.length;
                            for (var i = 0; i < len; i++) {
                                html += '<option value="' + data[i].name + '">'
                                        + data[i].name + '</option>';
                            }
                            html += '</option>';

                            $('#marca').html(html);
                        });
                    });
        </script>

        <!--        <script type="text/javascript">
                    $(document).ready(function () {
                        $("#model").change(onSelectChange);
                    });

                    function onSelectChange() {
                        var selected = $("#model option:selected");
                        var output = "";
                        if (selected.val() != 0) {
                            output = "You selected Model " + selected.text();
                        }
                        $("#output").html(output);
                    }
                </script>-->



    </head>
    <body>

        <header>
            <%@include file="../cms/cmscommon/header.jsp" %>
        </header>


        <div class="container" style="margin-top: 77px;">
            <div class="row">


                <sec:authorize access="hasRole('Admin')">


                    <spring:message code="user.logged"/>: <sec:authentication property="name" /> <sec:authentication
                        property="authorities"/>
                    <br/><br/>



                    <c:url var="addAction" value="/save"/>
                    <form:form   action="${addAction}" commandName="auto" method="post"  enctype="multipart/form-data" >
                        <div class="row">

                            <c:if test="${!empty auto.marca}">
                                <div class="form-group  col-xs-6 col-sm-3">


                                    <form:input path="autoId"  readonly="true" disabled="true" id="inputSuccess" class="form-control" placeholder="Input ID"/><form:hidden path="autoId"/>

                                </div>
                            </c:if>
                            <div class="form-group  col-xs-6 col-sm-3">



                                <form:select  id="marca" path="marca" class="form-control"  />


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:select  id="model" path="model" class="form-control"  >
                                    <form:option value="">Model</form:option>
                                </form:select>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">

                                <form:select path="fabricatie" class="form-control">
                                    <form:option value="" label="FABRICATIE"/>
                                    <form:options  items="${fabricatiaAuto}"/>
                                </form:select>

                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">
                                <form:select path="combustibil"  class="form-control">
                                    <form:option value="" label="COMBUSTIBIL"/>
                                    <form:options  items="${combustibilAuto}" />
                                </form:select>
                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:select path="culoare"  class="form-control"  >
                                    <form:option value="" label="CULOARE"/>
                                    <form:options items="${culoareAuto}" />
                                </form:select>

                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:select path="cutie"  class="form-control" >
                                    <form:option value="" label="CUTIE"/>
                                    <form:options  items="${cutieAuto}" />
                                </form:select>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:input path="cilindree"  class="form-control" placeholder="Input cilindree"/>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:select path="caroserie"  class="form-control" >
                                    <form:option value="" label="CAROSERIE"/>
                                    <form:options  items="${caroserieAuto}" />
                                </form:select>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:input path="putere"  class="form-control" placeholder="Input PUTERE"/>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">

                                <form:select path="tractiune"  class="form-control">
                                    <form:option value="" label="TRACTIUNE"/>
                                    <form:options  items="${tractiuneAuto}"  />
                                </form:select>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:input path="rulaj"  class="form-control" placeholder="Input RULAJ"/>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:input path="nrLocuri"  class="form-control" placeholder="Input nrLocuri"/>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:input path="pret"  class="form-control" placeholder="Input PRICE"/>


                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">


                                <form:select path="type" class="form-control" >
                                    <form:option value="" label="TYPE"/>
                                    <form:options items="${typeAuto}" />
                                </form:select>
                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">

                                <form:select path="dotari" multiple="true">

                                    <form:options items="${autoDotari}"/>
                                </form:select>
                            </div>
                            <div class="form-group  col-xs-6 col-sm-3">

                                <input  type="file" name="file"  path="content" />
                            </div>

                            <div class="form-group  col-xs-6 col-sm-3">

                                <c:if test="${edit}">
                                    <a href="<c:url value='/add-image-${auto.autoId}' /> " class="btn btn-info"  role="button">Upload Image</a>
                                </c:if>
                            </div>

                        </div><br/>
                        <div class="btn-group" role="group" >

                            <c:if test="${!empty auto.marca}">
                                <input class="btn btn-danger  btn-primary btn-lg" type="submit" name="action" value="Edit"/>

                            </c:if>
                            <c:if test="${empty auto.marca}">
                                <input class="btn btn-danger  btn-primary btn-lg"  type="submit" name="action" value="Add New Car"/>
                            </c:if>

                        </div>

                    </form:form>
                    <div id="output">

                    </div>



                    <h1 style="text-align: center;font-size: large;"><spring:message code="auto.title"/></h1>


                    <jsp:useBean id="pagedListHolder" scope="request" type="org.springframework.beans.support.PagedListHolder"/>
                    <%-- // create link for pages, "~" will be replaced later on with the proper page number --%>
                    <c:url value="/cmsauto" var="pagedLink">
                        <c:param name="action" value="list"/>
                        <c:param name="p" value="~"/>
                    </c:url>
                    <table class="table table-sm table-inverse"  cellspacing="0" width="100%" >

                        <thead>
                            <tr>
                                <th><spring:message code="auto.autoId"/></th>
                                <th><spring:message code="auto.marca"/></th>
                                <th><spring:message code="auto.model"/></th>
                                <th>FABRICATIE</th>
                                <th>COMBUSTIBIL</th>
                                <th>CULOARE</th>
                                <th>CUTIE</th>
                                <th><spring:message code="auto.pret"/></th>
                                <th>TYPE</th>
                                <th>CILINDREE</th>
                                <th>CAROSERIE</th>
                                <th>PUTERE</th>
                                <th>TRACTIUNE</th>
                                <th>RULAJ</th>
                                <th>NrLocuri</th>
                                <th>IMAGE</th>
                                <th>EDIT</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${pagedListHolder.pageList}" var="auto" >
                                <tr>

                                    <td scope="row"> ${auto.autoId}</td>
                                    <td><a href="cmsmainpage-${auto.autoId}" target="_blank">${auto.marca}</a></td>
                                    <td>${auto.model}</td>
                                    <td>${auto.fabricatie}</td>
                                    <td>${auto.combustibil}</td>
                                    <td>${auto.culoare}</td>
                                    <td>${auto.cutie}</td>
                                    <td>${auto.pret}</td>
                                    <td>${auto.type}</td>
                                    <td>${auto.cilindree} cm<sup>3</sup></td>
                                    <td>${auto.caroserie}</td>
                                    <td>${auto.putere} CP</td>
                                    <td>${auto.tractiune}</td>
                                    <td>${auto.rulaj} KM</td>
                                    <td>${auto.nrLocuri}</td>
                                    <c:choose>
                                        <c:when test="${auto.type=='Noi'}">
                                            <td> <img src="userfiles/noi/${auto.fileName}" width="50" height="50"/></td>

                                        </c:when>
                                        <c:when test="${auto.type=='Usate'}">
                                            <td> <img src="userfiles/usate/${auto.fileName}" width="50" height="50"/></td>

                                        </c:when>
                                        <c:otherwise>
                                            <td> <img src="userfiles/chirie/${auto.fileName}" width="50" height="50"/></td>

                                        </c:otherwise>
                                    </c:choose>


                                    <td><a href="edit-${auto.autoId}" class="btn btn-success button-font" id="button-font" role="button">Edit</a></td>
                                    <td><a href="<c:url value='/remove/${auto.autoId}'/>" class="btn btn-info button-font" id="button-font" role="button">Delete</a></td>

                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>

                    <tg:paging pagedListHolder="${pagedListHolder}" pagedLink="${pagedLink}"/>

                </div>
            </div>
        </sec:authorize>

    </body>
</html>
