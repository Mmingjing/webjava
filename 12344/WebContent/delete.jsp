<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="bean.Student"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>贵州大学</title>
<style>
        .header{
            background-color:white;
            color: aliceblue;
            text-align: center;
            padding: 30px;
        }
        .nav{
            line-height: inherit;
            background-color:bisque;
            color: black;
            height: 55px;
            width: auto;
            float: left;
            padding: 20px;
        
            
        }
        .nav a{
            float:left;
            display: block;
            padding:25px;
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
        .section{
            background-color:burlygray;
            color:blake;
            width: auto;
            text-align:center;
          
           
        }
        .footer{
            background-color: white;
            color: blake;
            text-align:center;
            padding:5px;
            bottom:0;
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

<table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
	<tr bgcolor="white">
		<td align="center" colspan="5">
			<h2>所有学生信息</h2>
		</td>
	</tr>
	<tr align="center" bgcolor="#e1ffc1" >
		<td><b>姓名</b></td>
		<td><b>班级</b></td>
		<td><b>电话号码</b></td>
		<td><b>QQ号码</b></td>
		<td><b>寝室号</b></td>
	</tr>
	<%
		List<Student> list = (List<Student>)request.getAttribute("list");
		for(Student p : list){
	%>
	<tr align="center" bgcolor="white">
		<td><%=p.getName()%></td>
		<td><%=p.getClassnum()%></td>
		<td><%=p.getPhonenumber()%></td>
		<td><%=p.getQqnumber()%></td>
		<td><%=p.getRoomnum()%></td>
	</tr>
	<%	
		}
	%>
	<tr>
		<td align="center" colspan="5" bgcolor="white">
			<%=request.getAttribute("bar")%>
		</td>
	</tr>
</table>
</body>
</html>