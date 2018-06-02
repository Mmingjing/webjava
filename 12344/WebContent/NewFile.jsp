<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title >
    xiaoning.com.cn</title>
    
        <head>
    <style>
        .header{
            background-color:black;
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
        .section{
            background-color:white;
            color:blake;
            line-height:80px;
            width: auto;
            text-align: center;
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
            <table width="inherit"></table>
                <h1>
                Guizhou University</h1>
                </table>
        </center>
            <div class="nav">
              <table width="1320"height="inherit"border="0"align="center">
                <tr>
                  <td align="center"valign="middle"><a herf="#">成绩查询</a></td>
                    <td align="center"valign="middle"><a herf="#">课程查询</a></td> 
                    <td align="center"valign="middle"><a herf="#">考试查询</a></td>
                    <td align="center"valign="middle"><a herf="#">个人信息</a></td>
                    <td align="center"valign="middle"><a herf="#">查询</a></td>
                </table>
            <div class="aside">
                <b>
                <a herf="#">所开课程</a><br>
                <a herf="#">授课老师</a><br>
                <a herf="#">课程安排</a><br>
                <a herf="#">开放实验课程</a><br>
                <a herf="#">实验安排</a><br>
                </b>
                </div>
            <div class="section">
                 <form action="next.jsp" method="post"name="myform">
                     课程：
                     <select selected="selected"class="ordername">
                     <option value="0">Web程序设计</option>
                     <option value="1">面向对象程序设计</option>
                    <option value="2">信息系统分析与设计</option>
                    <option value="3">体育</option>
                </select>
         专业： 
                     <select selected="selected"class="ordername">
                     <option value="0">信息管理与信息系统</option>
                     <option value="1">通信工程</option>
                     <opton value="2">物联网</opton>
                     </select>
                     班级:<input name="classname"type="text"maxlength="20">
                     学生人数:<input name=""type="number"maxlength="3"><br>
                     节次:<input type="number"maxlength="2">
                     起始周：
                     <select selected="selected"name="ordername">
                     <option value="0">第一周</option>
                     <option value="1">第二周</option></select>
                     结束周:<select selected="selected"name="ordername">
                     <option value="0">第16周</option>
                     <option value="1">other week</option></select><br>
                     <input type="submit"value="submit">
                     <input type="button"value="reset">
                     
                     
                     
                </form>
                     
           
             <div class="footer">
                <p>made by xiaoming.gragon.com</p>
                 
                
                
                
                
                
                </div>
    
        </body>
</html>