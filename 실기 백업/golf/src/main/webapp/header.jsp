<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style>
a { 
text-decoration-line: none; 
color: white;
}
</style>
</head>


<body>
<header style= "position: fixed; top: 0px; left: 0px; width: 100%; height: 60px; line-height: 60px; text-align: center; background-color: blue; color: white; font-size: 20px ">
<b>골프연습장 회원관리 ver 1.0</b>
</header>

<nav style= "position: fixed; top: 60px; left: 0px; width: 100%; height: 30px; line-height: 30px; background-color: mediumpurple; padding-left: 20px ">
<a href="tlist.jsp" >강사조회</a>&nbsp; &nbsp;
<a href="insert.jsp">수강신청</a>&nbsp; &nbsp;
<a href="mlist.jsp">회원정보조회</a>&nbsp; &nbsp;
<a href="salary.jsp">강사매출현황</a>&nbsp; &nbsp;
<a href="index.jsp">홈으로</a>
</nav>
</body>
</html>