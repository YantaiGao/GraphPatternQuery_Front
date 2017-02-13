package cn.edu.model.gpq;
/**
 * 
 * 数据集POJO类
 * @author gaoyantai
 *
 */
public class DataSetModel {
	
	private int id;
	private String dsName;
	private int nodesNum;
	private int edgesNum;
	private int attrsNum;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDsName() {
		return dsName;
	}
	public void setDsName(String dsName) {
		this.dsName = dsName;
	}
	public int getNodesNum() {
		return nodesNum;
	}
	public void setNodesNum(int nodesNum) {
		this.nodesNum = nodesNum;
	}
	public int getEdgesNum() {
		return edgesNum;
	}
	public void setEdgesNum(int edgesNum) {
		this.edgesNum = edgesNum;
	}
	public int getAttrsNum() {
		return attrsNum;
	}
	public void setAttrsNum(int attrsNum) {
		this.attrsNum = attrsNum;
	}
	
	public DataSetModel(){
		
	}
	
	public DataSetModel(String dsName, int nodesNum, int edgesNum, int attrsNum){
		this.dsName = dsName;
		this.nodesNum = nodesNum;
		this.edgesNum = edgesNum;
		this.attrsNum = attrsNum;
	}

}
