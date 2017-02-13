package cn.edu.dao.gpq;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.edu.model.gpq.DataSetModel;

public class DataSetDao extends DBDao {
	
	/**
	 * 获取数据集的详细信息
	 * @param tableName
	 * @param dsName
	 * @return
	 */
	public List<DataSetModel> getDsDetail(String tableName, String dsName) {
		
		List<DataSetModel> arrayList = new ArrayList<DataSetModel>();
		String sql = "select * from " + tableName +" where dsname=\'" + dsName + "\'";
		
		try {
			ResultSet rs = this.executeQuery(sql, null);
			while (rs.next()) {
				DataSetModel model = new DataSetModel();
				model.setDsName(rs.getString("dsname"));
				model.setNodesNum(rs.getInt("nodesnum"));
				model.setEdgesNum(rs.getInt("edgenum"));
				model.setAttrsNum(rs.getInt("attrsnum"));
				arrayList.add(model);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.closeAll();
		}
		return arrayList;
		
	}
	
	public List<DataSetModel> getDsDetail(String tableName) {
		
		List<DataSetModel> arrayList = new ArrayList<DataSetModel>();
		String sql = "select * from " + tableName;
		
		try {
			ResultSet rs = this.executeQuery(sql, null);
			while (rs.next()) {
				DataSetModel model = new DataSetModel();
				model.setDsName(rs.getString("dsname"));
				model.setNodesNum(rs.getInt("nodesnum"));
				model.setEdgesNum(rs.getInt("edgenum"));
				model.setAttrsNum(rs.getInt("attrsnum"));
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
