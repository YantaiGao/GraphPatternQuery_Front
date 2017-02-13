package cn.edu.model.gpq;

/**
 * 查询结果的POJO类
 * @author gaoyantai
 *
 */
public class QueryResModel {
	
	private int id;
	private String node;
	private String ds;
	private int queryNum;
	private String resStr;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNode() {
		return node;
	}
	public void setNode(String node) {
		this.node = node;
	}
	public String getDs() {
		return ds;
	}
	public void setDs(String ds) {
		this.ds = ds;
	}
	public int getQueryNum() {
		return queryNum;
	}
	public void setQueryNum(int queryNum) {
		this.queryNum = queryNum;
	}
	public String getResStr() {
		return resStr;
	}
	public void setResStr(String resStr) {
		this.resStr = resStr;
	}

	public QueryResModel(){
	}
	
	public QueryResModel(String node,String ds,int queryNum,String resStr){
		this.node = node;
		this.ds = ds;
		this.queryNum = queryNum;
		this.resStr = resStr;
	}

}
