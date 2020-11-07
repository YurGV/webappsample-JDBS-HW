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
	<c:if test="${requestScope.users != null}">
		<table  class="table table-bordered table-striped table-sm" >
			<thead class="thead-dark" align=center >
				<tr>
					<th>Num</th>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Birthdate</th>
					<th>Sex</th>
					<th>Salary</th>
					<th>Actions</th>
				</tr>
			</thead>
			<c:forEach var="i" begin="1" end="${fn:length(requestScope.users)}">
				<c:set var="currUser" scope="request"
					value="${requestScope.users[i-1]}" />
				<tr>
					<td align=center >${i}</td>
					<td align=center >${requestScope.currUser.firstName}</td>
					<td align=center >${requestScope.currUser.lastName}</td>
					<td align=center>
						<%
							Date userBirth = ((User) request.getAttribute("currUser")).getBirthdate();
									if (userBirth != null) {
										out.println(new SimpleDateFormat("yyyy-MM-dd").format(userBirth));
									}
						%>
					</td>
					<td align=center><c:choose>
							<c:when test="${requestScope.currUser.male}">Male</c:when>
							<c:otherwise>Female</c:otherwise>
						</c:choose></td>
					<td align=center>${requestScope.currUser.salary}</td>
					<td align=center >
					    <a class="btn btn-danger"
						    href="http://localhost:8090/webappsample/user/delete?number=${requestScope.currUser.id}">Delete user</a>
						<a class="btn btn-warning"
                    		href="http://localhost:8090/webappsample/Edit.jsp?number=${requestScope.currUser.id}">Edit user</a>
                    </td>
				</tr>
			    </c:forEach>
		    </table>
		</center>
	</c:if>

	<a class="btn btn-primary btn-lg btn-block"
		href="http://localhost:8090/webappsample/jstl2.jsp">Add user</a>

        <br />
        <br />

    </body>
</html>
