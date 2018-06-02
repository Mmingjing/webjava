<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>贵州大学</title>
</head>
 <style>
        .header{
            background-color:white;
            color: black;
            text-align: center;
            padding: 15px;
        }
        .footer{
            background-color: white;
            color: blake;
            text-align:center;
            padding:5px;
        }
  </style>
  
  <body>
     <div class="header">
     <table border="0">
     <tr>
        <td><img src="image/贵大登录.jpg.png";></td>
        <td align="center"><h1>Welcome to Guizhou University!</h1></td>
       </table>

<form id="form1" name="form1" method="post" action="useradd2.jsp" onsubmit="return check(this);">
<div align="center">
  <tr><td>
  <caption>欢迎注册！</caption>
  <p> 用户名：<input name="name" type="text"></p>
 <p> 密码：<input name="password" type="password" maxlength="20"></p>
   
  <p> 
   <input type="submit" >确认注册</a></p></td></div>
 
   
 </form>  
 
       
   

</body>
</html>