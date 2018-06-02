<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title >xiaoning.com.cn</title>
    
        
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
            
        }.aside a{
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
                 <form action="studentmassage.jsp" method="post"name="myform"align="center">
                 
                                             姓名：<input type="text" name="name"><br>
                                             班级:<input name="classnum" type="text"maxlength="20"><br>
                                             电话号码:<input name="phonenumber" type="text"maxlength="25"> <br>
               QQ号码:<input type="text" maxlength="20"><br>
                                             寝室号：<input type="text" maxlength="20"><br>
              
           <input type="submit" value="提交">
         
                      
                                             
        </form>
        </div>             
           
             
        </body>
</html>