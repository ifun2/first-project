package com.springbook.tbl.vaccresv;

import java.sql.Date;

public class VACCRESVVO {
	private int RESVNO;
	private String JUMIN;
	private String HOSPCODE;
	private Date RESVDATE;
	private int RESVTIME;
	private String VCODE;
	private int HOSPCOUNT;
	private int searchNO;
	
	public int getRESVNO() {
		return RESVNO;
	}
	public void setRESVNO(int resvno) {
		RESVNO = resvno;
	}
	public String getJUMIN() {
		return JUMIN;
	}
	public void setJUMIN(String jumin) {
		JUMIN = jumin;
	}
	public String getHOSPCODE() {
		return HOSPCODE;
	}
	public void setHOSPCODE(String hospcode) {
		HOSPCODE = hospcode;
	}
	public Date getRESVDATE() {
		return RESVDATE;
	}
	public void setRESVDATE(Date resvdate) {
		RESVDATE = resvdate;
	}
	public int getRESVTIME() {
		return RESVTIME;
	}
	public void setRESVTIME(int resvtime) {
		RESVTIME = resvtime;
	}
	public String getVCODE() {
		return VCODE;
	}
	public void setVCODE(String vcode) {
		VCODE = vcode;
	}
	
	public int getHOSPCOUNT() {
		return HOSPCOUNT;
	}
	public void setHOSPCOUNT(int hospcount) {
		HOSPCOUNT = hospcount;
	}
	public int getSearchNO() {
		return searchNO;
	}
	public void setSearchNO(int searchNO) {
		this.searchNO = searchNO;
	}

	@Override
	public String toString() {
		return "VACCRESVVO [RESVNO=" + RESVNO + ", JUMIN=" + JUMIN + ", HOSPCODE=" + HOSPCODE + ", RESVDATE=" + RESVDATE
				+ ", RESVTIME=" + RESVTIME + ", VCODE=" + VCODE + "]";
	}
}
