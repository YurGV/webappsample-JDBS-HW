package by.grodno.pvt.site.webappsample.service;

import org.apache.log4j.Logger;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DeptService {

	private static DeptService deptService;

	public static final Logger LOGGER = Logger.getLogger(DeptService.class);

	private DeptService() {
	}

	public static DeptService getService() {
		if (deptService == null) {
			deptService = new DeptService();
		}
		return deptService;
	}

	public List<Dept> getDept() {
		List<Dept> result = new ArrayList<Dept>();
		try (Connection conn = DBUtils.getConnetion(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(SQL.SELECT_DEPT);

			while (rs.next()) {
				Dept dept = mapRawToDept(rs);
				result.add(dept);
			}
			rs.close();
		} catch (Exception e) {
			LOGGER.error("Something went wrong...", e);
		}
		return result;
	}

	private Dept mapRawToDept(ResultSet rs) throws SQLException {
		Integer id = rs.getInt(1);
		String dName = rs.getString(2);

		Dept dept = new Dept(id, dName);
		return dept;
	};

	public void deleteDept(Integer number) {
		try (Connection conn = DBUtils.getConnetion();
				PreparedStatement stmt = conn.prepareStatement(SQL.DELETE_DEPT_ID)) {
			stmt.setInt(1, number);
			stmt.execute();
		} catch (Exception e) {
			LOGGER.error("Something went wrong...", e);
		}
	};

	public void addDept(Dept dept) {
		try (Connection conn = DBUtils.getConnetion();
				PreparedStatement stmt = conn.prepareStatement(SQL.INSERT_DEPT, Statement.RETURN_GENERATED_KEYS)) {

			stmt.setString(1, dept.getDept_name());

			stmt.executeUpdate();

			ResultSet generatedKeys = stmt.getGeneratedKeys();
			generatedKeys.next();
			LOGGER.info("Dept created with id: " + generatedKeys.getLong(1));

		} catch (Exception e) {
			LOGGER.error("Something went wrong...", e);
		}
	}

}
