package ex8_search_form;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import ex8.Emp;

/*
 * DAO(Data Access Object) 클래스
 * - 데이터 베이스와 연동하여 레코드의 추가, 수정, 삭제 작업이 이루어지는 클래스 입니다.
 * */
public class DAO {

	public ArrayList<Emp> selectForm(int field, String search) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Emp> list = new ArrayList<Emp>();

		String select_sql = "";
		switch (field) {
		case 0 -> select_sql = "select * from emp where empno like ?";
		case 1 -> select_sql = "select * from emp where ename like ?";
		case 2 -> select_sql = "select * from emp where job like ?";
		case 3 -> select_sql = "select * from emp where mgr like ?";
		case 4 -> select_sql = "select * from emp where hiredate like ?";
		case 5 -> select_sql = "select * from emp where sal like ?";
		case 6 -> select_sql = "select * from emp where comm like ?";
		case 7 -> select_sql = "select * from emp where deptno like ?";
		default -> select_sql = "select * from emp";
		}

		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();

			pstmt = conn.prepareStatement(select_sql);
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();

			while (rs.next()) { // 더 이상 읽을 데이터가 없을 때까지 반복
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				int mgr = rs.getInt("mgr");
				Date hiredate = rs.getDate("hiredate");
				int sal = rs.getInt("sal");
				int comm = rs.getInt("comm");
				int deptno = rs.getInt("deptno");

				// SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
				// String hiredateStr = s.format(hiredate);

				Emp emp = new Emp();
				emp.setEmpno(empno);
				emp.setEname(ename);
				emp.setJob(job);
				emp.setMgr(mgr);
				emp.setHiredate(hiredate);
				emp.setSal(sal);
				emp.setComm(comm);
				emp.setDeptno(deptno);
				list.add(emp);
			}

		} catch (Exception se) {
			se.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}

			if (conn != null)
				try {
					conn.close(); // DB 연결을 끊는다.
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
		} // finally

		return list;
		// return null;

	} // selectAll() end
} // class end
