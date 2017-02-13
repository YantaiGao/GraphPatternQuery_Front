package cn.edu.dao.gpq;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Mysql Dao������
 * @author gaoyantai
 *
 */
public class DBDao {
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	/**
	 * ��ȡ����
	 * @param server
	 * @param dbname
	 * @param user
	 * @param psd
	 * @return
	 * @throws SQLException 
	 * @throws Exception 
	 */
	public Connection getConn(String server,String dbname,String user,String psd) throws SQLException, Exception {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://" + server + ":3306/" +dbname;
		//��������
		Class.forName(driver);
		conn = DriverManager.getConnection(url,user,psd);
		return conn;
	}
	
	/**
	 * 
	 * @param prepareSql
	 * @param param
	 * @return
	 */
	public ResultSet executeQuery(String prepareSql,String[] param){ 
		try{
			
			ps = conn.prepareStatement(prepareSql);
			
			if(param != null){
				for(int i = 0;i<param.length;i++){
					ps.setString(i+1, param[i]);
				}
			}
			//ִ��sql���
			//pstmt.setFetchSize(Integer.MAX_VALUE);
			rs = ps.executeQuery();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}
	
	/**
	 * �ͷ���Դ
	 */
	public void closeAll(){
		
		if(rs!=null){
			try{
				rs.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(ps != null){
			try{
				ps.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		
		if(conn != null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}	
	}


}
