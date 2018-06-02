<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="bean.studentmassage"%>

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
            padding: 20px;
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
            padding:20px;
        }
        .footer{
            background-color: white;
            color: blake;
            text-align:center;
            
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
            <div class="aside">
                <b>
                <a href="line1.jsp">学校概况</a><br>
                <a href="line2.jsp">重点学科</a><br>
                <a href="line3.jsp">重点实验室</a><br>
                <a href="line4.jsp">图书馆</a><br>
                </b>
                </div>
<div class="section">
<body>
	<table align="center" width="700" border="1" height="180" bordercolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="7">
				<h2>个人信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1" >
			<td><b>姓名</b></td>
			<td><b>班级</b></td>
			<td><b>电话号码</b></td>
			<td><b>QQ号码</b></td>
			<td><b>寝室号</b></td>
			<td><b>修改电话号码</b></td>
			<td><b>删除</b></td>
			
		</tr>
		
		
			<%request.setCharacterEncoding("UTF-8");
				// 获取图书信息集合
					List<studentmassage> list = (List<studentmassage>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历图书集合中的数据
						for(studentmassage Studentmassage : list){
			%>
				<tr align="center" bgcolor="white">
					<td><%=Studentmassage.getName()%> </td>
					<td><%=Studentmassage.getClassnum()%></td>
					<td><%=Studentmassage.getPhonenumber()%></td>
					<td><%=Studentmassage.getQqnumber()%></td>
					<td><%=Studentmassage.getRoomnum()%></td>
					<td>
					<form action="updateservlet" method="post" onsubmit="return check(this);">
							<input type="hidden" name="name" value="<%=Studentmassage.getName()%>">
                            <input type="text" name="phonenumber"size="14">
							<input type="submit" value="修  改">
						</form></td>
						<td>
						<form action="DeleteServlet" method="post" onsubmit="return check(this);">
							<input type="hidden" name="name" value="<%=Studentmassage.getName()%>">
                            <input type="hidden" name="classnum" value="<%=Studentmassage.getClassnum()%>">
							<input type="submit" value="删  除">
						</form></td>
<%
					}
					}
			%>
	</table>
	</div>
</body>
</html>