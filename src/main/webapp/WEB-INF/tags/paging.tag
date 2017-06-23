<%@ tag import="org.springframework.util.StringUtils" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="pagedListHolder" required="true" type="org.springframework.beans.support.PagedListHolder" %>
<%@ attribute name="pagedLink" required="true" type="java.lang.String" %>
<style>
    #button-font {
        font-size: larger;
    }
    ul.pagination {
        display: inline-block;
        padding: 0;
        margin: 0;
    }

    ul.pagination li {display: inline;}

    ul.pagination li a {
        /*                color: black;
                        float: left;
                        padding: 8px 16px;
                        text-decoration: none;
                        transition: background-color .3s;
                        border: 1px solid #ddd;*/
        color: black;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
        transition: background-color .3s;
        border: 1px solid #ddd;
        margin: 0 4px;
        font-size: 22px;
    }



    ul.pagination li a:hover:not(.active) {background-color: #4CAF50;}
    ul.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover {
        z-index: 3;
        color: white;
        cursor: default;
        background-color: red;
        border: 1px solid red;
    }

</style>


<c:if test="${pagedListHolder.pageCount > 1}">
    <div class="text-center">
        <ul class="pagination">
            <c:if test="${!pagedListHolder.firstPage}">
                <li class="previous"><a href="<%= StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPage() - 1))%>">&laquo;</a></li>
                </c:if>
                <c:if test="${pagedListHolder.firstLinkedPage > 0}">
                <li ><a href="<%= StringUtils.replace(pagedLink, "~", "0")%>">1</a></li>
                </c:if>
                <c:if test="${pagedListHolder.firstLinkedPage > 1}">
                <li> <span class="pagingDots">...</span></li>
                </c:if>
                <c:forEach begin="${pagedListHolder.firstLinkedPage}" end="${pagedListHolder.lastLinkedPage}" var="i">
                    <c:choose>
                        <c:when test="${pagedListHolder.page == i}">
                        <li class="active"><a href="#">${i+1}</a></li>
                        </c:when>
                        <c:otherwise>
                        <li ><a href="<%= StringUtils.replace(pagedLink, "~", String.valueOf(jspContext.getAttribute("i")))%>">${i+1}</a></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:if test="${pagedListHolder.lastLinkedPage < pagedListHolder.pageCount - 2}">
                <li> <span class="pagingDots">...</span></li>
                </c:if>
                <c:if test="${pagedListHolder.lastLinkedPage < pagedListHolder.pageCount - 1}">
                <li ><a href="<%= StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPageCount() - 1))%>">${pagedListHolder.pageCount}</a></li>
                </c:if>
                <c:if test="${!pagedListHolder.lastPage}">
                <li class="next"><a href="<%= StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPage() + 1))%>">&raquo;</a></li>
                </c:if>
        </ul>
    </div>
</c:if>