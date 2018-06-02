


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	private String urlURL = "jdbc:mysql://127.0.0.1:3306/test";
	
	private String rootROOT = "root";
	private String passwordPASSWORD = "123456";
	private String comMsql = "com.mysql.jdbc.Driver";
	private PreparedStatement prt = null;
	private Connection con = null;
	private ResultSet cc = null;

	public BaseDao() {
		try {
			Class.forName(comMsql);
			con = DriverManager.getConnection(urlURL, rootROOT, passwordPASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	

	/**
	 * ����|��|ɾ��
	 * 
	 * @param sqlcmd
	 * @return ����blooeanֵ
	 * @throws Exception
	 */
	public boolean excutBysql(String sqlcmd) {
		boolean duicun = false;
		try {
			prt = con.prepareStatement(sqlcmd);
			duicun = prt.executeUpdate() > 0 ? true : false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return duicun;
	}

	/**
	 * �鿴����
	 * 
	 * @param Sqlcmd
	 * @return ����һ��ResultSet���� ����
	 * @throws Exception
	 */
	public ResultSet queryBYsql(String Sqlcmd) {

		try {
			prt = con.prepareStatement(Sqlcmd);
			cc = prt.executeQuery();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return cc;

	}

	/**
	 * �ͷ���Դ
	 */
	public void closeShiFang() {
		try {
			if (prt != null)
				prt.close();
			if (con != null)
				con.close();
			if (cc != null)
				cc.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
