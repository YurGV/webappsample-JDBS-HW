<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
   <body>
      <%@ include file="fragments/header.jsp"%>
      <form action = "user" method = "POST">
         First Name: <input type = "text" name = "departmentName">
         <br />
         <input type = "submit" value = "Submit" />
      </form>
      <!--POST localhost:8090/webappsample/dept?firstName=asd&lastName=qwe&birthdate=1234-12-12&male=true -->
   </body>
</html>

