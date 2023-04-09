
<%@page import="com.springbook.tbl.vaccresv.DateFormater"%>
<%@page import="com.springbook.tbl.vaccresv.impl.VACCRESVDAO"%>
<%@page import="com.springbook.tbl.vaccresv.VACCRESVVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("EUC-KR");
	
	String jumin = request.getParameter("jumin");
	String vcode = request.getParameter("vcode");
	String hospcode = request.getParameter("hospcode");
	String resvdate = request.getParameter("resvdate");
	String resvtime = request.getParameter("resvtime");	 
	
	VACCRESVVO vo = new VACCRESVVO();
	DateFormater df = new DateFormater();
	vo.setJUMIN(jumin);
	vo.setHOSPCODE(hospcode);
	vo.setRESVDATE(df.trans(resvdate));
	vo.setRESVTIME(Integer.parseInt(resvtime));
	vo.setVCODE(vcode);
	
	VACCRESVDAO vaccresvDAO = new VACCRESVDAO();
	vaccresvDAO.insertVaccresv(vo);
	
	response.sendRedirect("vac_sked.jsp");
%>