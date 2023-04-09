<%@page import="com.springbook.tbl.vaccresv.impl.VACCRESVDAO"%>
<%@page import="com.springbook.tbl.vaccresv.VACCRESVVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("EUC-KR");

	String searchno = request.getParameter("searchno");
	session.setAttribute("searchno", searchno);
	VACCRESVVO vo = new VACCRESVVO();
	vo.setRESVNO(Integer.parseInt(searchno));
	
	VACCRESVDAO vaccresvDAO = new VACCRESVDAO();
	VACCRESVVO vac = vaccresvDAO.getVaccresv(vo);
	
	if(vac != null) {
		response.sendRedirect("vac_sked_chq_t.jsp");
	} else {
		response.sendRedirect("vac_sked_chq_f.jsp");
	}
%>