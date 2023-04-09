<%@page import="com.springbook.tbl.jumin.JUMINVO"%>
<%@page import="com.springbook.tbl.vaccresv.DateFormater"%>
<%@page import="com.springbook.tbl.vaccresv.impl.VACCRESVDAO"%>
<%@page import="com.springbook.tbl.vaccresv.VACCRESVVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	request.setCharacterEncoding("EUC-KR");
	String searchno = (String)session.getAttribute("searchno");
	
	VACCRESVDAO vaccresvDAO = new VACCRESVDAO();
	VACCRESVVO vo = new VACCRESVVO();
	JUMINVO jv = new JUMINVO();
	DateFormater df = new DateFormater();
	vo.setRESVNO(Integer.parseInt(searchno));
	VACCRESVVO vac = vaccresvDAO.getVaccresv(vo);
	jv.setJUMIN(vac.getJUMIN());
	JUMINVO jname = vaccresvDAO.juminName(jv);
	
	session.invalidate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>VAC_SKED_CHQ</title>
<style type="text/css">
	*{ margin:1;}
	body { background-color: #007fff; }
	h3 { 
		color: white;
		margin-top: 30px;
		margin-bottom: 20px;
		font-size: 24px;	
	}
	
	#topmenu {
		width: 100%;
		margin-left: 0;
		margin-right: 0;
		align-items: right;
		background-color: #9ca6c4;
		padding-top: 10px;
		padding-bottom: 10px;
		padding-left: 3px;
	}
	
	.button {
		cursor: pointer;
		border: none;
		background-color: #9ca6c4;
		color: white;
		font-size: 14px;
	}
	
	#box {
		background-color: #00d2ff;
		box-sizing: border-box;
		margin-top: 5px;
		height: 520px;
		width: 100%;
	}
	#footer {
		font-size: 11px;
		color: white;
	}
	
	#top {
		margin-top: 0px;
		padding-top: 20px;
		font-size: 18px;
		font-weight: bolder;
	}
</style>
	
</head>
<body>
<center>
	<h3>{과정평가형 정보처리산업기사} 백신예약 프로그램 ver 202302</h3>
		<table id="topmenu">
			<tr>
				<td align="left">
					<a href="vac_sked.jsp"><input type="button" class="button" value="백신예약"></a>&nbsp;&nbsp;
					<a href="vac_sked_chq.jsp"><input type="button" class="button" value="백신예약조회"></a>&nbsp;&nbsp;
					<a href="vac_sked_hosp_index.jsp"><input type="button" class="button" value="병원예약현황"></a>&nbsp;&nbsp;
					<a href="vac_sked_index.jsp"><input type="button" class="button" value="백신예약현황"></a>&nbsp;&nbsp;
					<a href="vac_main.jsp"><input type="button" class="button" value="홈으로"></a>
				</td>
			</tr>
		</table>
	<div id="box">
		<h4 id="top">예약번호 <%= searchno %>님의 예약 조회</h4>
		<table  border="2" cellpadding="5" cellspacing="0" width="1000">
			<tr>
				<td align="center">예약번호</td>
				<td align="center">성명</td>
				<td align="center">성별</td>
				<td align="center">병원이름</td>
				<td align="center">예약날짜</td>
				<td align="center">예약시간</td>
				<td align="center">백신종류</td>
				<td align="center">병원지역</td>
			</tr>
			<tr>
				<td align="center"><%= vac.getRESVNO() %></td>
				<td align="center"><%= jname.getNAME() %></td>
				<td align="center"><%= df.gender(vac.getJUMIN()) %></td>
				<td align="center"><%= df.hosp(vac.getHOSPCODE()) %></td>
				<td align="center"><%= df.trans2(vac.getRESVDATE()) %></td>
				<td align="center"><%= df.timetrans(vac.getRESVTIME()) %></td>
				<td align="center"><%= df.vname(vac.getVCODE()) %></td>
				<td align="center"><%= df.hospadd(vac.getHOSPCODE()) %></td>
			</tr>
		</table>
		<br>
		<a href="vac_sked_chq.jsp"><input type="button" value="돌아가기"></a>
	</div>
	<div id="footer">
		<p>Copyright 2023. 저작권자명 All pictures cannot be copied without permission.</p>
	</div>
</center>
</body>
</html>
