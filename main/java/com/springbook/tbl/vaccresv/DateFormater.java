package com.springbook.tbl.vaccresv;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateFormater {
	
	public Date trans(String date) {
		SimpleDateFormat beforeSDF = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat afterSDF = new SimpleDateFormat("yyyy-MM-dd");
		
		java.util.Date utilDate = null;
		
		try {
			utilDate = beforeSDF.parse(date);
		} catch(ParseException e) {
			e.printStackTrace();
		}
		
		String transDate = afterSDF.format(utilDate);
		
		Date d = Date.valueOf(transDate);
		return d;
	}
	
	public String hosp(String HOSPCODE) {
		String h = null;
		switch(HOSPCODE) {
		case "H001": h = "����_����";
					break;
		case "H002": h = "����_����";
					break;
		case "H003": h = "�뱸_����";
					break;
		case "H004": h = "����_����";
					break;
		}
		return h;
	}
	
	public String vname(String VCODE) {
		String v = null;
		switch(VCODE) {
		case "V001": v = "A_���";
					break;
		case "V002": v = "B_���";
					break;
		case "V003": v = "C_���";
					break;
		}
		return v;
	}
	
	public String hospadd(String HOSPCODE) {
		String h = null;
		switch(HOSPCODE) {
		case "H001": h = "����";
					break;
		case "H002": h = "����";
					break;
		case "H003": h = "�뱸";
					break;
		case "H004": h = "����";
					break;
		}
		return h;
	}
	
	public String gender(String JUMIN) {
		String g = null;
		if(JUMIN.substring(7, 8).equals("1")) {
			g = "��";
		} else {
			g = "��";
		}
		return g;
	}
	
	public String trans2(Date RESVDATE) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy��MM��dd��");
		
		String d = sdf.format(RESVDATE);
		
		return d;
	}
	
	public String timetrans(int RESVTIME) {
		String d = null;
		int m = RESVTIME%100;
		int h = RESVTIME/100;
		String mm = Integer.toString(m);
		String hh = null;
		if(h>=10) {
			hh = Integer.toString(h);
		} else if(h<10) {
			hh = "0"+Integer.toString(h);
		}
		
		d = hh + ":" + mm;
		return d;
	}
}
