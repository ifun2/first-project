package com.springbook.tbl.vaccresv.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.tbl.jumin.JUMINVO;
import com.springbook.tbl.vaccresv.VACCRESVVO;

@Repository("vaccresvDAO")
public class VACCRESVDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String VACCRESV_INSERT = "insert into TBL_VACCRESV_202108(RESVNO, JUMIN, HOSPCODE, RESVDATE, RESVTIME, VCODE)"
			+ " values((select nvl(max(RESVNO), 20210000)+1 from TBL_VACCRESV_202108),?,?,?,?,?)";
	private final String VACCRESV_GET = "select * from TBL_VACCRESV_202108 where RESVNO=?";
	private final String NAME_GET = "select NAME from TBL_JUMIN_202108 where JUMIN=?";
	private final String VACCRESV_COUNT = "select count(*) from TBL_VACCRESV_202108";
	private final String H001_COUNT = "select count(*) from TBL_VACCRESV_202108 where HOSPCODE='H001'";
	private final String H002_COUNT = "select count(*) from TBL_VACCRESV_202108 where HOSPCODE='H002'";
	private final String H003_COUNT = "select count(*) from TBL_VACCRESV_202108 where HOSPCODE='H003'";
	private final String H004_COUNT = "select count(*) from TBL_VACCRESV_202108 where HOSPCODE='H004'";
	private final String V001_COUNT = "select count(*) from TBL_VACCRESV_202108 where VCODE='V001'";
	private final String V002_COUNT = "select count(*) from TBL_VACCRESV_202108 where VCODE='V002'";
	private final String V003_COUNT = "select count(*) from TBL_VACCRESV_202108 where VCODE='V003'";
	
	public void insertVaccresv(VACCRESVVO vo) {
		try {
		conn = JDBCUtil.getConnection();
		stmt = conn.prepareStatement(VACCRESV_INSERT);
		stmt.setString(1, vo.getJUMIN());
		stmt.setString(2, vo.getHOSPCODE());
		stmt.setDate(3, vo.getRESVDATE());
		stmt.setInt(4, vo.getRESVTIME());
		stmt.setString(5, vo.getVCODE());
		stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	public VACCRESVVO getVaccresv(VACCRESVVO vo) {
		VACCRESVVO vaccresv = null;
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(VACCRESV_GET);
			stmt.setInt(1, vo.getRESVNO());
			rs = stmt.executeQuery();
			if(rs.next()) {
				vaccresv = new VACCRESVVO();
				vaccresv.setRESVNO(rs.getInt("RESVNO"));
				vaccresv.setJUMIN(rs.getString("JUMIN"));
				vaccresv.setHOSPCODE(rs.getString("HOSPCODE"));
				vaccresv.setRESVDATE(rs.getDate("RESVDATE"));
				vaccresv.setRESVTIME(rs.getInt("RESVTIME"));
				vaccresv.setVCODE(rs.getString("VCODE"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vaccresv;
	}
	
	public JUMINVO juminName(JUMINVO vo) {
		JUMINVO j = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(NAME_GET);
			stmt.setString(1, vo.getJUMIN());
			rs = stmt.executeQuery();
			if(rs.next()) {
				j = new JUMINVO();
				j.setNAME(rs.getString("NAME"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return j;
	}
	
	public int getListCount() {
        int count =0;  
        try{
            conn = JDBCUtil.getConnection();
        	stmt = conn.prepareStatement(VACCRESV_COUNT);
            rs = stmt.executeQuery();
            
            if(rs.next()){
                count = rs.getInt(1);
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
           JDBCUtil.close(rs, stmt, conn);
        }
        return count;
    }
	
	public int gethospCount() {
		int count = 0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(H001_COUNT);
			rs = stmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return count;
	}
	
	public int gethospCount1() {
		int count = 0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(H002_COUNT);
			rs = stmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return count;
	}
	
	public int gethospCount2() {
		int count = 0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(H003_COUNT);
			rs = stmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return count;
	}
	
	public int gethospCount3() {
		int count = 0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(H004_COUNT);
			rs = stmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return count;
	}
	
	public int getvacCount1() {
		int count = 0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(V001_COUNT);
			rs = stmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return count;
	}
	
	public int getvacCount2() {
		int count = 0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(V002_COUNT);
			rs = stmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return count;
	}
	
	public int getvacCount3() {
		int count = 0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(V003_COUNT);
			rs = stmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return count;
	}
}

