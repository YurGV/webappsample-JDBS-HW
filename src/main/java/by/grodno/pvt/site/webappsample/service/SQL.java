package by.grodno.pvt.site.webappsample.service;

public class SQL {

	public static final String SELECT_ALL = "select * from public.testtable order by id";
	public static final String DELETE_BY_ID = "delete from public.testtable where id = ?";
	public static final String INSERT = "INSERT INTO public.testTable "
			+ "(empl_name, empl_last_name, salary, birthdate,  male) VALUES (?,?,?,?,?)";
	public static final String EDIT = "UPDATE public.testTable SET (empl_name, empl_last_name, salary, birthdate,  male) = (?,?,?,?,?)  WHERE id = ?";

	public static final String SELECT_DEPT = "select * from public.dept order by id";;
	public static final String DELETE_DEPT_ID = "delete from public.dept where id = ?";
	public static final String INSERT_DEPT = "INSERT INTO public.dept ";

}
