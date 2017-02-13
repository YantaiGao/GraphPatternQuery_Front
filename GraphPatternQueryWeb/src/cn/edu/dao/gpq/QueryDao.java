package cn.edu.dao.gpq;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.edu.model.gpq.QueryModel;

public class QueryDao extends DBDao{
	
	/**
	 * 获取指定的查询节点
	 * @param tableName
	 * @param ds
	 * @param queryNum
	 * @return
	 */
	public List<QueryModel> getQuery(String tableName, String ds, int queryNum) {
		
		List<QueryModel> arrayList = new ArrayList<QueryModel>();
//		String sql = "select * from ? where ds=? and querynum=" + queryNum;
		String sql = "select * from " + tableName +" where ds=\'" + ds +"\' and querynum="+queryNum;
		
		try {
//			String[] param = new String[2];
//			param[0] = tableName;
//			param[1] = ds;
//			ResultSet rs = this.executeQuery(sql, param);
			ResultSet rs = this.executeQuery(sql, null);
			while (rs.next()) {
				QueryModel model = new QueryModel();
				model.setNode(rs.getString("node"));
				model.setDs(rs.getString("ds"));
				model.setQueryNum(rs.getInt("querynum"));
				model.setConstraint(rs.getString("constraint"));
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
