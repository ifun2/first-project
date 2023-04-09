<%@page import="java.text.*"%>
<%@page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mlist</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; line-height: 100%; 
background-color: lightgray ">
<h2 style="text-align: center ">회원정보조회</h2><br>
<form style="display: flex; align-items: center; justify-content: center; text-align: center ">
<table border="1">
    <tr>
        <td>수강월</td>
        <td>회원번호</td>   
        <td>회원명</td>
        <td>강의명</td>
        <td>강의장소</td>
        <td>수강료</td>
        <td>등급</td>
    </tr>
<%
request.setCharacterEncoding("UTF-8");

try {
     String sql = "SELECT regist_month, me.c_no, c_name, class_name, class_area, tuition, grade " + 
                  "FROM TBL_TEACHER_202201 te, TBL_MEMBER_202201 me, TBL_CLASS_202201 cl " + 
                  "WHERE me.c_no = cl.c_no AND te.teacher_code = cl.teacher_code ";
                  
     PreparedStatement pstmt = con.prepareStatement(sql);
     ResultSet rs = pstmt.executeQuery();
     while(rs.next()) {
       String regist_month = rs.getString(1);
       String month = regist_month.substring(0,4) + "년" + regist_month.substring(4,6) + "월";

       int class_price = rs.getInt(6);
       DecimalFormat transformat = new DecimalFormat("￦, ###,###,###");
       String price = transformat.format(class_price);
%>
       <tr>
          <td style="width: 150px"><%=month%></td>
          <td style="width: 150px"><%=rs.getString(2)%></td>
          <td style="width: 150px"><%=rs.getString(3)%></td>
          <td style="width: 150px"><%=rs.getString(4)%></td>
          <td style="width: 150px"><%=rs.getString(5)%></td>
          <td style="width: 150px"><%=price%></td>
          <td style="width: 150px"><%=rs.getString(7)%></td>
       </tr>    
<%       
     }
}

catch(Exception e) {
 e.printStackTrace(); 
}

%>    
   
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>    
</body>
</html>