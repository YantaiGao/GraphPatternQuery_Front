package cn.edu.dao.gpq;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.edu.model.gpq.QueryEdgeModel;

public class QueryEdgeDao extends DBDao{
	
	/**
	 * 获取查询边的基本信息
	 * @param tableName
	 * @param ds
	 * @param queryNum
	 * @return
	 */
	public List<QueryEdgeModel> getQueryEdge(String tableName, String ds, int queryNum) {
		
		List<QueryEdgeModel> arrayList = new ArrayList<QueryEdgeModel>();
//		String sql = "select * from ? where ds=? and querynum=" + queryNum;
		String sql = "select * from " + tableName +" where ds=\'" + ds +"\' and querynum="+queryNum;
		
		try {
			
//			String[] param = new String[2];
//			param[0] = tableName;
//			param[1] = ds;
//			ResultSet rs = this.executeQuery(sql, param);
			
			ResultSet rs = this.executeQuery(sql, null);
			
			
			while (rs.next()) {
				QueryEdgeModel qe = new QueryEdgeModel();
				qe.setPe(rs.getString("pe"));
				qe.setLen(rs.getInt("len"));
				qe.setDs(rs.getString("ds"));
				qe.setQueryNum(rs.getInt("querynum"));
				arrayList.add(qe);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.closeAll();
		}
		return arrayList;
	}
	
}
