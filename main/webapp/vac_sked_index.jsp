<%@page import="com.springbook.tbl.vaccresv.impl.VACCRESVDAO"%>
<%@page import="com.springbook.tbl.vaccresv.VACCRESVVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
 <%
 	VACCRESVVO vo = new VACCRESVVO();

 	VACCRESVDAO vaccresvDAO = new VACCRESVDAO();
 	
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>VAC_SKED_INDEX</title>
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
	<h3>{�������� ����ó��������} ��ſ��� ���α׷� ver 202302</h3>
		<table id="topmenu">
			<tr>
				<td align="left">
					<a href="vac_sked.jsp"><input type="button" class="button" value="��ſ���"></a>&nbsp;&nbsp;
					<a href="vac_sked_chq.jsp"><input type="button" class="button" value="��ſ�����ȸ"></a>&nbsp;&nbsp;
					<a href="vac_sked_hosp_index.jsp"><input type="button" class="button" value="����������Ȳ"></a>&nbsp;&nbsp;
					<a href="vac_sked_index.jsp"><input type="button" class="button" value="��ſ�����Ȳ"></a>&nbsp;&nbsp;
					<a href="vac_main.jsp"><input type="button" class="button" value="Ȩ����"></a>
				</td>
			</tr>
		</table>
	<div id="box">
		<h4 id="top">��ſ�����Ȳ</h4>
		<table border="2" cellpadding="5" cellspacing="0" width="400">
			<tr>
				<th>����ڵ�</th>
				<th>��Ÿ�</th>
				<th>��������Ǽ�</th>
			</tr>
			<tr>
				<td align="center">V001</td>
				<td align="center">A_���</td>
				<td align="center"><%= vaccresvDAO.getvacCount1() %></td>
			</tr>
			<tr>
				<td align="center">V002</td>
				<td align="center">B_���</td>
				<td align="center"><%= vaccresvDAO.getvacCount2() %></td>
			</tr>
			<tr>
				<td align="center">V003</td>
				<td align="center">C_���</td>
				<td align="center"><%= vaccresvDAO.getvacCount3() %></td>
			</tr>
			<tr>
				<th colspan="2" align="center">����</th>
				<th align="center"><%= vaccresvDAO.getListCount() %></th>
			</tr>
		</table>
	</div>
	<div id="footer">
		<p>Copyright 2023. ���۱��ڸ� All pictures cannot be copied without permission.</p>
	</div>
</center>
</body>
</html>
