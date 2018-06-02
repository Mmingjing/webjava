<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>贵州大学</title>
</head>
<style>
        .header{
            background-color:white;
            color: aliceblue;
            text-align: center;
            padding: 15px;
        }
        .nav{
            line-height: inherit;
            background-color:bisque;
            color: black;
            height: 40px;
            width: auto;
            float: left;
            padding: 15px;
        
            
        }
        .nav a{
            float:left;
            display: block;
            padding:15px;
            color: black;
            
        }
        .nav a:hover{
            background-color: burlywood;
        }
        .aside{
            line-height: inherit;
            background-color:white;
            color: blake;
            height: auto;
            width: auto;
            float: left;
            padding: 25px;
        }
        .aside a{
            float:left;
            display: block;
            padding:15px;
            color: black;
            
        }
        .aside a:hover{
            background-color: burlywood;}
            
        .section{
            background-color:white;
            color:blake;
            line-height:40px;
            width: auto;
            text-align:center;
            padding:30px;
        }
        .footer{
            background-color: white;
            color: blake;
            text-align:center;
            align:center;
            padding:5px;
        }
        
    </style>
        
    
  
    <body>
        <center>
            <div class="header">
            <table>
                <td>
                <img src="image/贵大登录.jpg.png"/>
                </td>
                </table>
                </div>
        </center>
            <div class="nav">
              <table width="1320"height="inherit"border="0"align="center">
                <tr>
                  <td align="center"valign="middle"><a href="index.jsp">首页</a></td>
                    <td align="center"valign="middle"><a href="row2.jsp">课程选择</a></td> 
                    <td align="center"valign="middle"><a href="row3.jsp">个人信息</a></td>
                    <td align="center"valign="middle"><a href="delete.jsp">修改个人信息</a></td>
                    <td align="center"valign="middle"><a href="row5.jsp">其他</a></td>
               </table>
               </div>
            <div class="aside">
                <b>
                 <a href="line1.jsp">学校概况</a><br>
                <a href="line2.jsp">重点学科</a><br>
                <a href="line3.jsp">重点实验室</a><br>
                <a href="line4.jsp">图书馆</a><br>
               
                </b>
                </div>
                <div class="section">

<%request.setCharacterEncoding("utf-8"); 
System.out.println(request.getParameter("name"));
%>

<jsp:useBean id="Studentmassage" class="bean.studentmassage"></jsp:useBean>
	<jsp:setProperty property="*" name="Studentmassage"/>
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
			// 添加图书信息的SQL语句
			String sql = "insert into studentmassage(name,classnum,phonenumber,qqnumber,roomnum) values(?,?,?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1,Studentmassage.getName());
			ps.setString(2,Studentmassage.getClassnum());
			ps.setString(3,Studentmassage.getPhonenumber());
			ps.setString(4,Studentmassage.getQqnumber());
			ps.setString(5,Studentmassage.getRoomnum());
			System.out.println("name："+Studentmassage.getName());
			System.out.println("name："+Studentmassage.getClassnum());
			System.out.println("name："+Studentmassage.getPhonenumber());
			System.out.println("name："+Studentmassage.getQqnumber());
			System.out.println("name："+Studentmassage.getRoomnum());
			// 对SQL语句中的第2个参数赋值
			
			
			// 执行更新操作，返回所影响的行数
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
			out.print("增加失败！");
			e.printStackTrace();
		}
	%>
	<br><td align="center"type="submit">
	<a href="Findservlet">返回</a></td>
</div>
</body>
</html>
