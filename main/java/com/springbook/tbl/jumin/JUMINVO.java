package com.springbook.tbl.jumin;

public class JUMINVO {
	private String JUMIN;
	private String NAME;
	private String PHONE;
	private String ADDRESS;
	
	public String getJUMIN() {
		return JUMIN;
	}
	public void setJUMIN(String jUMIN) {
		JUMIN = jUMIN;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getPHONE() {
		return PHONE;
	}
	public void setPHONE(String pHONE) {
		PHONE = pHONE;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	
	@Override
	public String toString() {
		return "JUMINVO [JUMIN=" + JUMIN + ", NAME=" + NAME + ", PHONE=" + PHONE + ", ADDRESS=" + ADDRESS + "]";
	}
}
