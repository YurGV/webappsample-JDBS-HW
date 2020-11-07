<%@page import="by.grodno.pvt.site.webappsample.service.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<body>
    <center>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
        <%@ include file="fragments/header.jsp"%>
	    <br />
	<c:if test="${requestScope.depts != null}">
		<table  class="table table-bordered table-striped table-sm" >
			<thead class="thead-dark" align=center >
				<tr>
					<th>Num</th>
					<th>DepartName</th>
				</tr>
			</thead>
			<c:forEach var="i" begin="1" end="${fn:length(requestScope.depts)}">
				<c:set var="currDept" scope="request"
					value="${requestScope.depts[i-1]}" />
				<tr>
					<td align=center >${i}</td>
					<td align=center >${requestScope.currDept.DepartName}</td>

					<td align=center >
					    <a class="btn btn-danger"
						    href="http://localhost:8090/webappsample/dept/delete?number=${requestScope.currDept.id}">Delete Department</a>
                    </td>
				</tr>
			    </c:forEach>
		    </table>
		</center>
	</c:if>

	<a class="btn btn-primary btn-lg btn-block"
		href="http://localhost:8090/webappsample/jstl2.jsp">Add Department</a>
        <br />
        <br />
    </body>
</html>
