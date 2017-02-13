package cn.edu.dao.gpq;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.edu.model.gpq.QueryResModel;

public class QueryResDao extends DBDao{
	
	/**
	 * 获取查询结果的相关信息
	 * @param tableName
	 * @param ds
	 * @param queryNum
	 * @return
	 */
	public List<QueryResModel> getQueryRes(String tableName, String ds, int queryNum) {
		
		List<QueryResModel> arrayList = new ArrayList<QueryResModel>();
		//注意：对于sql语句中的字符型，应该加‘’
		//String sql = "select * from ? where ds=? and querynum=" + queryNum;
		//String sql = "select * from ? where ds=?";
		String sql = "select * from " + tableName +" where ds=\'" + ds +"\' and querynum="+queryNum;
		
		try {
			String[] param = new String[2];
			param[0] = tableName;
			param[1] = ds;
			//ResultSet rs = this.executeQuery(sql, param);
			ResultSet rs = this.executeQuery(sql, null);
			while (rs.next()) {
				QueryResModel model = new QueryResModel();
				model.setNode(rs.getString("node"));
				model.setDs(rs.getString("ds"));
				model.setQueryNum(rs.getInt("querynum"));
				model.setResStr(rs.getString("resStr"));
				arrayList.add(model);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.closeAll();
		}
		return arrayList;
		
	}
	
}
