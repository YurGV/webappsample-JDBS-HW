<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

   <body>
      <%@ include file="fragments/header.jsp"%>

        String id = req.getParameter("number"); ---->  i don't know how to write ID here :(

      <form action = "user/edit" method = "POST">

          <br />
         new First Name: <input type = "text" name = "firstName"/>
         <br />
         new Last Name: <input type = "text" name = "lastName" />
         <br />
         new BirthDate: <input type = "text" name = "birthdate" />
         <br />
         <input type="radio" id="male" name="male" value="true">
			<label for="male">Male</label><br>
		 <input type="radio" id="female" name="male" value="false">
			<label for="female">Female</label><br>
         new Salary: <input type = "text" name = "salary" />
         <br />
         <input type = "submit" value = "Update" />
      </form>
      <!--POST localhost:8090/webappsample/user/edit?firstName=asd&lastName=qwe&birthdate=1234-12-12&male=true&id=number -->
   </body>
</html>

