package cn.edu.test.gpq;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import cn.edu.dao.gpq.QueryResDao;
import cn.edu.model.gpq.QueryResModel;

public class TestDao {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		List<QueryResModel> resList =  new ArrayList<QueryResModel>();
		
		String server = "localhost";
		String dbname = "front_res";
		String tableName = "queryres";
		String ds = "Yt";
		int queryNum = 1;
		QueryResDao resDao = new QueryResDao();
		try {
			resDao.getConn(server, dbname, "root", "1106");
			resList = resDao.getQueryRes(tableName, ds, queryNum);
		
			if (resList!=null) {
				
				Iterator<QueryResModel> it = resList.iterator();
				
				while (it.hasNext()) {
					QueryResModel model = it.next();
					
					System.out.println(model.getNode() + "\t" + model.getResStr());
			
				}
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

}
