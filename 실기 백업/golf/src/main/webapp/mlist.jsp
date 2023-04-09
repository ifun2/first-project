<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="DBPKG.Util"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mlist</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section style= "position: fixed; top: 90px; left: 0px; width: 100%; height: 100%; background-color: lightgray ">
<h2 style= "text-align: center ">회원정보조회</h2>
<form style= "display: flex; align-items: center; justify-content: center; text-align: center ">
    <table border="1">
        <tr>
            <td style="width: 100px;"> 수강월 </td>
            <td style="width: 90px;"> 회원번호 </td>
            <td style="width: 90px;"> 회원명 </td>
            <td style="width: 100px;"> 강의명 </td>
            <td style="width: 100px;"> 강의장소 </td>
            <td style="width: 100px;"> 수강료 </td>
            <td style="width: 50px;"> 등급 </td>
        </tr>
<%     
Connection conn = null;
PreparedStatement pstmt = null;

  request.setCharacterEncoding("UTF-8");

  try {
      conn = Util.getConnection();
      String sql = "SELECT regist_month, cl.c_no, c_name, class_name, class_area, tuition, grade " +
    	      "FROM tbl_teacher_202201 te, tbl_member_202201 me, tbl_class_202201 cl " +
    	      "WHERE te.teacher_code=cl.teacher_code AND me.c_no=cl.c_no";
      pstmt = conn.prepareStatement(sql);
      ResultSet rs = pstmt.executeQuery(sql);
      
      while(rs.next()) {
    	  String regist_month = rs.getString(1); //202203
          String month = regist_month.substring(0,4) + "년" + regist_month.substring(4,6) + "월"; // 2022년03월
          int tuition = rs.getInt(6);
          DecimalFormat transformat = new DecimalFormat("￦ ###,###,###");
          String price = transformat.format(tuition);
%>
        <tr> 
          <td> <%=month %></td>
          <td> <%=rs.getString(2) %></td>
          <td> <%=rs.getString(3) %></td>
          <td> <%=rs.getString(4) %></td>
          <td> <%=rs.getString(5) %></td>
          <td> <%=price %></td>
          <td> <%=rs.getString(7) %></td>
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