package com.springbook.tbl.hosp;

public class HOSPVO {
	private String HOSPCODE;
	private String HOSPNAME;
	private String HOSPTEL;
	private String HOSPADDR;
	
	public String getHOSPCODE() {
		return HOSPCODE;
	}
	public void setHOSPCODE(String hOSPCODE) {
		HOSPCODE = hOSPCODE;
	}
	public String getHOSPNAME() {
		return HOSPNAME;
	}
	public void setHOSPNAME(String hOSPNAME) {
		HOSPNAME = hOSPNAME;
	}
	public String getHOSPTEL() {
		return HOSPTEL;
	}
	public void setHOSPTEL(String hOSPTEL) {
		HOSPTEL = hOSPTEL;
	}
	public String getHOSPADDR() {
		return HOSPADDR;
	}
	public void setHOSPADDR(String hOSPADDR) {
		HOSPADDR = hOSPADDR;
	}
	
	@Override
	public String toString() {
		return "HOSPVO [HOSPCODE=" + HOSPCODE + ", HOSPNAME=" + HOSPNAME + ", HOSPTEL=" + HOSPTEL + ", HOSPADDR="
				+ HOSPADDR + "]";
	}
}
