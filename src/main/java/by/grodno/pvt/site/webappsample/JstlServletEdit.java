package by.grodno.pvt.site.webappsample;

import by.grodno.pvt.site.webappsample.service.User;
import by.grodno.pvt.site.webappsample.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class JstlServletEdit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String parameter = req.getParameter("number");

		try {
			User user = new User(null,
					req.getParameter("firstName"),
					req.getParameter("lastName"),
					new SimpleDateFormat("yyy-MM-dd")
							.parse(req.getParameter("birthdate")),
					Boolean.valueOf(req.getParameter("male")));
			user.setSalary(Double.valueOf(req.getParameter("salary")));
			UserService.getService().edit(Integer.valueOf(parameter),user);

		} catch (ParseException e) {
			e.printStackTrace();
		}

		resp.sendRedirect("/webappsample/jstl1");
	}
}



















	/* @Override         ----------------------------      так работает -----------------------------------
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String parameter = req.getParameter("number");

		UserService.getService().edit(Integer.valueOf(parameter));

		resp.sendRedirect("/webappsample/jstl1");
	}

	 */