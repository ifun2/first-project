<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<script type="text/javascript">
	function checking() {
		var form = document.search;
		if(form.searchno.value==""){
			alert("예약번호를 입력해주세요.");
			return false;
		}
		form.submit();
	}
</script>
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
		<h4 id="top">백신예약조회</h4>
		<form name="search" action="vac_sked_chq_proc.jsp" method="post">
		<table  border="2" cellpadding="5" cellspacing="0" width="700">
			<tr>
				<td align="center">예약번호</td>
				<td><input type="text" name="searchno" size="50">    예)20210000</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="조회하기" onclick="return checking()">
					<a href="vac_main.jsp"><input type="button" value="홈으로"></a>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<div id="footer">
		<p>Copyright 2023. 저작권자명 All pictures cannot be copied without permission.</p>
	</div>
</center>
</body>
</html>
