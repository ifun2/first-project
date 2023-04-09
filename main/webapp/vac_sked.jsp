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
			alert("�ֹι�ȣ�� �Է����ּ���.");
			return false;
		} 
		if(form.resvdate.value=="") {
			alert("���೯¥�� �Է����ּ���.");
			return false;
		} 
		if(form.resvtime.value=="") {
			alert("����ð��� �Է����ּ���.");
			return false;
		}
		form.submit();
	}
</script>
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
		<h4 id="top">��� ����</h4>
		<form name="book" action="vac_sked_proc.jsp" method="post">
		<table id="booking" border="2" cellpadding="5" cellspacing="0" width="700">
			<tr>
				<td align="center">�����ȣ</td>
				<td><input type="text" name="resvno" readonly="readonly" value="  �ڵ� ����" size="10"></td>
			</tr>
			<tr>
				<td align="center">�ֹι�ȣ</td>
				<td><input type="text" name="jumin" size="30">    ��)123456-1111111</td>
			</tr>
			<tr>
				<td align="center">��ż���</td>
				<td>
					<input type="radio" id="V001" value="V001" name="vcode" checked="checked">
					<label for="V001">A_���</label>
					<input type="radio" id="V002" value="V002" name="vcode">
					<label for="V002">B_���</label>
					<input type="radio" id="V003" value="V003" name="vcode">
					<label for="V003">C_���</label>
				</td>
			</tr>
			<tr>
				<td align="center">��������</td>
				<td>
					<select name="hospcode">
						<option value="H001">����_����</option>
						<option value="H002">����_����</option>
						<option value="H003">�뱸_����</option>
						<option value="H004">����_����</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="center">���೯¥</td>
				<td><input type="text" name="resvdate" size="30">   ��)20210101</td>
			</tr>
			<tr>
				<td align="center">����ð�</td>
				<td><input type="text" name="resvtime" size="30">   ��)0930, 1130</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="���" onclick="return checking()"/>
					<input type="reset" value="���"/>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<div id="footer">
		<p>Copyright 2023. ���۱��ڸ� All pictures cannot be copied without permission.</p>
	</div>
</center>
</body>
</html>