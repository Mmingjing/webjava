<%@ page language="java" contentTpe="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String course=request.getParameter("course");
   String major=request.getParameter("major");
   String grade=request.getParameter("class_grade");
   String num=request.getParameter("students_num");
   String course_time=request.getParameter("jieci");
   String swk=request.getParameter("start_week");
   String ewk=request.getParameter("end_week");
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="NewFile.jsp"></jsp:include>
</head>
 <body>
 
 <div class="section">
   课程:<%=course %><br>
  专业:<%=major %><br>
 班级：<%=grade %><br>
学生 人数：<%=num%><br>
节次：<%=course_time %><br>
起始周:<%=swk %><br>
结束周：<%=ewk %><br>

 </div>
 
 
 </body>