package bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/Findservlet")
public class Findservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			// �������ݿ�������ע�ᵽ����������
			Class.forName("com.mysql.jdbc.Driver");
			// ���ݿ������ַ���
			String url = "jdbc:mysql://localhost:3306/test";
			// ���ݿ��û���
			String username = "root";
			// ���ݿ�����
			String password = "123456";
			// ����Connection����
			Connection conn = DriverManager.getConnection(url,username,password);
			// ��ȡStatement
			Statement stmt = conn.createStatement();
			// ���ͼ����Ϣ��SQL���
			String sql = "select * from studentmassage";
			// ִ�в�ѯ
			ResultSet rs = stmt.executeQuery(sql);
			// ʵ����List����
			List<studentmassage> list = new ArrayList<studentmassage>();
			// �жϹ������ƶ������ж��Ƿ���Ч
			while(rs.next()){
				// ʵ����student����
				studentmassage Studentmassage = new studentmassage();
				// ��id���Ը�ֵ
				Studentmassage.setName(rs.getString("name"));
				// ��name���Ը�ֵ
				Studentmassage.setClassnum(rs.getString("classnum"));
				// ��price���Ը�ֵ
				Studentmassage.setPhonenumber(rs.getString("phonenumber"));
				// ��bookCount���Ը�ֵ
				Studentmassage.setQqnumber(rs.getString("qqnumber"));
				// ��author���Ը�ֵ
				Studentmassage.setRoomnum(rs.getString("roomnum"));
				// ��������ӵ�������
				list.add(Studentmassage);
			}
			// ��ͼ�鼯�Ϸ��õ�request֮��
			request.setAttribute("list", list);
			rs.close();		// �ر�ResultSet
			stmt.close();	// �ر�Statement
			conn.close();	// �ر�Connection
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("studentmassage_list.jsp").forward(request, response);
	}
}
