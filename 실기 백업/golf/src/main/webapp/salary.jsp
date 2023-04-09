<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salary</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section style= "position: fixed; top: 90px; left: 0px; width: 100%; height: 100%; background-color: lightgray ">
<h2 style= "text-align: center ">강사매출현황</h2>
<form style= "display: flex; align-itmes: center; justify-content: center; text-align: center ">
<table border="1">
    <tr>
        <td style= "width: 120px"> 강사코드 </td>
        <td style= "width: 120px"> 강의명 </td>
        <td style= "width: 120px"> 강사명 </td>
        <td style= "width: 120px"> 총매출 </td>
    </tr>
    
<%
Connection conn = null;
PreparedStatement pstmt = null;

    request.setCharacterEncoding("UTF-8");

    try {
      conn = Util.getConnection();
        String sql = "SELECT cl.teacher_code, class_name, teacher_name, SUM(tuition) salary " +
                     "FROM tbl_teacher_202201 te, tbl_class_202201 cl " +
                     "WHERE te.teacher_code=cl.teacher_code " + 
                     "GROUP BY cl.teacher_code, class_name, teacher_name " + 
                     "ORDER BY cl.teacher_code ";
        pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery(sql);
        while(rs.next()) {
            int salary = rs.getInt(4);
            DecimalFormat transformat = new DecimalFormat("￦ ###,###,###");
            String salary2 = transformat.format(salary);
            %>
            <tr>
                <td> <%=rs.getString(1) %> </td>
                <td> <%=rs.getString(2) %> </td>
                <td style= "text-align: right "> <%=rs.getString(3) %> </td>
                <td style= "text-align: right "> <%=salary2 %> </td>
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