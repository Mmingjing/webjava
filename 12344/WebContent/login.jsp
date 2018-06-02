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

<form id="form1" name="form1" method="post" action="Login" onsubmit="return check(this);">
<div align="center">
 <caption><h5>了解更多资讯，请注册，谢谢！</h5></caption>
  <tr><td>
  <p> 用户名：<input name="name"type="text"></p>
 <p> 密码：<input name="password"type="password"maxlength="20"></p>
   
  <p> <input name="submit"type="submit"value="登陆">
   <a href="useradd.jsp">注册</p></td></div>
 
   
 </form>  
 
       
   

</body>
</html>