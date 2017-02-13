package cn.edu.model.gpq;

/**
 * ²éÑ¯±ßµÄPOJOÀà
 * @author gaoyantai
 *
 */
public class QueryEdgeModel {
	
	private int id;
	private String pe;
	private int len;
	private String ds;
	private int queryNum;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPe() {
		return pe;
	}
	public void setPe(String pe) {
		this.pe = pe;
	}
	public int getLen() {
		return len;
	}
	public void setLen(int len) {
		this.len = len;
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
	
}
