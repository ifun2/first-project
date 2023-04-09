<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>VAC_BOOK</title>
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
		var form = document.book;
		if(form.jumin.value=="") {
			alert("주민번호를 입력해주세요.");
			return false;
		} 
		if(form.resvdate.value=="") {
			alert("예약날짜를 입력해주세요.");
			return false;
		} 
		if(form.resvtime.value=="") {
			alert("예약시간을 입력해주세요.");
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
		<h4 id="top">백신 예약</h4>
		<form name="book" action="vac_sked_proc.jsp" method="post">
		<table id="booking" border="2" cellpadding="5" cellspacing="0" width="700">
			<tr>
				<td align="center">예약번호</td>
				<td><input type="text" name="resvno" readonly="readonly" value="  자동 생성" size="10"></td>
			</tr>
			<tr>
				<td align="center">주민번호</td>
				<td><input type="text" name="jumin" size="30">    예)123456-1111111</td>
			</tr>
			<tr>
				<td align="center">백신선택</td>
				<td>
					<input type="radio" id="V001" value="V001" name="vcode" checked="checked">
					<label for="V001">A_백신</label>
					<input type="radio" id="V002" value="V002" name="vcode">
					<label for="V002">B_백신</label>
					<input type="radio" id="V003" value="V003" name="vcode">
					<label for="V003">C_백신</label>
				</td>
			</tr>
			<tr>
				<td align="center">병원선택</td>
				<td>
					<select name="hospcode">
						<option value="H001">서울_병원</option>
						<option value="H002">대전_병원</option>
						<option value="H003">대구_병원</option>
						<option value="H004">광주_병원</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="center">예약날짜</td>
				<td><input type="text" name="resvdate" size="30">   예)20210101</td>
			</tr>
			<tr>
				<td align="center">예약시간</td>
				<td><input type="text" name="resvtime" size="30">   예)0930, 1130</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록" onclick="return checking()"/>
					<input type="reset" value="취소"/>
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