<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="cn.edu.model.gpq.DataSetModel" %>
<%@ page import="cn.edu.dao.gpq.DataSetDao" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 -->
<!DOCTYPE html>  
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    
    <title>图查询主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	
  </head>
  
  <body>
  
  <div class="container">
	  <div class="jumbotron">
	    <h1>图模式匹配 Graph Pattern Query</h1>
	    <p>大数据图查询解决方案</p> 
	  </div>
  </div>
  
  <div class="container">
	  <div class="row">
		<div class="col-center-block" >
			<ul class="nav nav-pills">
				<!-- <li class="active"><a href="indexPage.jsp">Home</a></li> --> 
				<li class="active"><a href="#">Home</a></li>  
				<!-- 
				<li ><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube数据集</a></li>
				 -->
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">YouTube数据集<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YoutubeQuery1</a></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery2.jsp">YoutubeQuery2</a></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery3.jsp">YoutubeQuery3</a></li>
						<li class="divider"></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery4.jsp">YoutubeQuery4</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Patent数据集<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/GraphPatternQueryWeb/Patent/PatentQuery1.jsp">PatentQuery1</a></li>
						<li><a href="/GraphPatternQueryWeb/Patent/PatentQuery2.jsp">PatentQuery2</a></li>
						<li><a href="/GraphPatternQueryWeb/Patent/PatentQuery3.jsp">PatentQuery3</a></li>
						<li class="divider"></li>
						<li><a href="/GraphPatternQueryWeb/Patent/PatentQuery4.jsp">PatentQuery4</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">DBLP数据集<b class="caret bottom-up"></b></a>
					<ul class="dropdown-menu bottom-up pull-right">
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery1.jsp">PatentQuery1</a></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery2.jsp">PatentQuery2</a></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery3.jsp">PatentQuery3</a></li>
						<li class="divider"></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery4.jsp">PatentQuery4</a></li>
					</ul>
				</li>
				<!-- 
				<li><a href="#">Patent数据集</a></li> 
				<li><a href="#">DBLP数据集</a></li> 
				--> 
				<li><a href="/GraphPatternQueryWeb/about.jsp">About</a></li>
			</ul>
		</div>
	  </div>
  </div>

  <!-- %!，定义全局变量 -->
  <%!
 	String server = "localhost";
	String dbname = "front_res";
	String tableName = "dataset";
	String uname = "root";
	String psd = "root";
   %>

  <!-- 以下是模式图节点属性约束-->
  <div class="container">
    <div class="col-xs-12" style="height: 87%">
    
      <br/><br/><br/>
      
      <h3 class="text-center"><strong>数据集详情</strong></h3>
      	
	  <table class="table table-bordered table-hover">
	  	<!-- <caption><strong>数据集详情</strong></caption> -->
			<thead>
		   		<tr>
		   			<th>数据集名</th>
		   			<th>节点数</th>
		   			<th>边数</th>
		   			<th>属性个数</th>
		   		</tr>
	  		</thead>
	     <tbody>
	  	 <%
	            DataSetDao dsDao = new DataSetDao();
	            
	            dsDao.getConn(server, dbname, uname, psd);
	            
	            List<DataSetModel> list =dsDao.getDsDetail(tableName);    
	            for(DataSetModel model:list)
	            {%>
		           <tr>
		               <td><%=model.getDsName() %></td>
		               <td><%=model.getNodesNum() %></td>
		               <td><%=model.getEdgesNum() %></td>
		               <td><%=model.getAttrsNum() %></td>
		           </tr>
	            <%}
	      %>
	      </tbody>	
	  </table>
	  
	  <br/><br/><br/>
	  
    </div>
  </div>
  
  <div class="container">
  	 <div class="w-1000 copyright">
  	 	<p class="text-center">
      	Copyright &copy; 2017   &nbsp;     All Rights Reserved. Gaoyantai@gmail.com &nbsp;
      	<span class="glyphicon glyphicon-envelope"></span>
      	</p>
     </div>
  </div>
  </body>
</html>
