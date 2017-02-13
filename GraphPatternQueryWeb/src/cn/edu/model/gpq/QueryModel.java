package cn.edu.model.gpq;

/**
 * 查询节点的POJO类
 * @author gaoyantai
 *
 */
public class QueryModel {
	
	private int id;
	private String node;
	private String ds;
	private int queryNum;
	private String constraint;
	
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
	public String getConstraint() {
		return constraint;
	}
	public void setConstraint(String constraint) {
		this.constraint = constraint;
	}
	
	public QueryModel(){
	}
	
	public QueryModel(String node,String ds,int queryNum,String constraint){
		this.node = node;
		this.ds = ds;
		this.queryNum = queryNum;
		this.constraint = constraint;
	}
	
}
