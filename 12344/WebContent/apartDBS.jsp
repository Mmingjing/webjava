<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<%request.setCharacterEncoding("utf-8");%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guizhou University</title>
</head>
<body>
	
	<jsp:useBean id="stu1" class="bean.stu1"></jsp:useBean>
	<jsp:setProperty property="*" name="stu1"/>
	<%
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/test";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "123456";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 添加学生信息的SQL语句
			String sql = "insert into student(name,num,sex) values(?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1, stu1.getname());
			System.out.println("name："+stu1.getname());
			// 对SQL语句中的第2个参数赋值
			ps.setInt(2, stu1.getnum());
			// 对SQL语句中的第3个参数赋值
			ps.setString(3,stu1.getsex());
			// 对SQL语句中的第4个参数赋值
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("成功添加了 " + row + "条数据！");
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("学生信息添加失败！");
			e.printStackTrace();
		}
	%>
	<br>
	<a href="index.jsp">返回</a>
</body>
</html>
