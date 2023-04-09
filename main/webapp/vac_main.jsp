<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>VAC_MAIN</title>
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
	</div>
	<div id="footer">
		<p>Copyright 2023. 저작권자명 All pictures cannot be copied without permission.</p>
	</div>
</center>
</body>
</html>
