<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="cn.edu.model.gpq.QueryModel" %>
<%@ page import="cn.edu.model.gpq.QueryEdgeModel" %>
<%@ page import="cn.edu.model.gpq.QueryResModel" %>
<%@ page import="cn.edu.dao.gpq.QueryDao" %>
<%@ page import="cn.edu.dao.gpq.QueryEdgeDao" %>
<%@ page import="cn.edu.dao.gpq.QueryResDao" %>
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
    
    <title>PatentQuery2</title>
    
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

	<!--../不对，直接lib开始才对，为什么呢 
	<link href="../lib/css/bootstrap.min.css" rel="stylesheet">
	<script src="../lib/js/jquery-3.1.1.min.js"></script>
	<script src="../lib/js/bootstrap.min.js"></script>
	-->
  </head>
  
  <body>
  
  <div class="container">
	  <div class="jumbotron">
	    <h1>图模式匹配 Graph Pattern Query</h1>
	    <p>大数据图查询解决方案</p> 
	  </div>
  </div>
  <!-- 
  <div class="container">
	  <div class="row">
		<div class="span8">
			<ul class="nav nav-pills">
				<li ><a href="indexPage.jsp">Home</a></li>   
				<li class="active"><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube数据集</a></li>
				<li><a href="#">Patent数据集</a></li> 
				<li><a href="#">DBLP数据集</a></li> 
				<li><a href="#">About</a></li> 
			</ul>
		</div>
	  </div>
  </div>
   -->
  <div class="container">
	  <div class="row">
		<div class="col-center-block" >
			<ul class="nav nav-pills">
				<!-- 注意：active属性只能加在li标签上 -->
				<!-- <li class="active"><a href="indexPage.jsp">Home</a></li> --> 
				<li><a href="#">Home</a></li>  
				<!-- 
				<li ><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube数据集</a></li>
				 -->
				<li class="dropdown">
					<a class="dropdown-toggle active" data-toggle="dropdown" href="#">YouTube数据集<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YoutubeQuery1</a></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery2.jsp">YoutubeQuery2</a></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery3.jsp">YoutubeQuery3</a></li>
						<li class="divider"></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery4.jsp">YoutubeQuery4</a></li>
					</ul>
				</li>
				<li class="dropdown active">
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
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">DBLP数据集<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery1.jsp">DBLPQuery1</a></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery2.jsp">DBLPQuery2</a></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery3.jsp">DBLPQuery3</a></li>
						<li class="divider"></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery4.jsp">DBLPQuery4</a></li>
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
	String ds = "Patent";
	String queryTableName = "query";
	String qeTableName = "queryedge";
	String resTableName = "queryRes";
	int queryNum = 2;
	String uname = "root";
	String psd = "root";
   %>
  <!-- 以下是模式图边约束-->
  <div class="container">
  	  <div class="col-xs-12">
  	   <div class="col-md-7">
  	    <h2>Patent Query 2 Pattern图</h2>
	    <!--
	    ../不对，直接images才对，为什么呢 
	    <img src="../images/YtQ1.jpg" class="img-responsive" alt="Pattern Graph" width="304" height="236">
	    -->
	    <img src="images/PaQ2.jpg" class="img-responsive" alt="Pattern Graph" width="400" height="366">
	  </div>
	  <div class="col-md-5">
	    <h2>Patent数据集属性说明：</h2>
	    <br/>
	    <ul>
  		  <li style="font-size: 12px;">1-GYEAR:批准年份</li>
  	   	  <li style="font-size: 12px;">2-GDATE:批准时间</li>
  		  <li style="font-size: 12px;">3-APPYEAR:申请年份</li>
   		  <li style="font-size: 12px;">4-COUNTRY:第一发明人的国籍</li>
   		  <li style="font-size: 12px;">5-POSTATE:第一发明人的州（如果是US）</li>
  		  <li style="font-size: 12px;">6-ASSIGNEE:拥有者标识符</li>
   		  <li style="font-size: 12px;">7-ASSCODE:专利拥有者类型</li>
   		  <li style="font-size: 12px;">8-CLAIMS:声明数目</li>
   		  <li style="font-size: 12px;">9-NCLASS:专利类型</li>
  	   	  <li style="font-size: 12px;">10-CAT</li>
  		  <li style="font-size: 12px;">11-SUBCAT</li>
   		  <li style="font-size: 12px;">12-CMADE</li>
   		  <li style="font-size: 12px;">13-CRECEIVE</li>
  		  <li style="font-size: 12px;">14-RATIOCIT</li>
   		  <li style="font-size: 12px;">15-GENERAL</li>
   		  <li style="font-size: 12px;">16-ORIGINAL</li>
   		  <li style="font-size: 12px;">17-FWDAPLAG</li>
   		  <li style="font-size: 12px;">18-BCKGTLAG</li>
  		  <li style="font-size: 12px;">19-SELFCTUB</li>
   		  <li style="font-size: 12px;">20-SELFCTLB</li>
   		  <li style="font-size: 12px;">21-SECDUPBD</li>
   		  <li style="font-size: 12px;">22-SECDLWBD</li>
		</ul>
	  </div>
	  </div>
  </div>
  <div class="container">
      <h3 class="text-center"><strong>边及长度限制</strong></h3>
	  <table class="table table-bordered table-hover">
		<!-- <caption><strong>边及长度限制</strong></caption> -->
			<thead>
		   		<tr>
		   			<th>边</th>
		   			<th>长度约束</th>
		   		</tr>
	  		</thead>
	     <tbody>
	  	 <%
	            QueryEdgeDao qeDao = new QueryEdgeDao();
	            
	            qeDao.getConn(server, dbname, uname, psd);
	            
	            List<QueryEdgeModel> list2 =qeDao.getQueryEdge(qeTableName,ds,queryNum);    
	            for(QueryEdgeModel model:list2)
	            {%>
		           <tr>
		               <td><%=model.getPe() %></td>
		               <td><%=model.getLen() %></td>
		           </tr>
	            <%}
	      %>	
	      </tbody>
	  </table>
  </div>
  <!-- 
  <div class="container">
  	<div class="col-xs-12">
	  <h2>Pattern图</h2>
	  <!--
	  ../不对，直接images才对，为什么呢 
	  <img src="../images/YtQ1.jpg" class="img-responsive" alt="Pattern Graph" width="304" height="236">
	  -->
	  <!-- 
	  <img src="images/YtQ1.jpg" class="img-responsive" alt="Pattern Graph" width="304" height="236">
  	</div>
  </div>
   -->
  <!-- 以下是模式图节点属性约束-->
  <div class="container">
    <div class="col-xs-12">
      <h3 class="text-center"><strong>节点约束</strong></h3>
	  <table class="table table-bordered table-hover">
	  	<!-- <caption><strong>节点约束</strong></caption> -->
			<thead>
		   		<tr>
		   			<th>节点名</th>
		   			<th>节点属性约束</th>
		   		</tr>
	  		</thead>
	     <tbody>
	  	 <%
	            QueryDao queryDao = new QueryDao();
	            
	            queryDao.getConn(server, dbname, uname, psd);
	            
	            List<QueryModel> list =queryDao.getQuery(queryTableName,ds,queryNum);    
	            for(QueryModel model:list)
	            {%>
		           <tr>
		               <td><%=model.getNode() %></td>
		               <td><%=model.getConstraint() %></td>
		           </tr>
	            <%}
	      %>
	      </tbody>	
	  </table>
    </div>
  </div>
    
  <!-- <table border="1"> -->
  <!-- 以下是查询结果集 -->
  <div class="container">
    <div class="col-xs-12">
      <h3 class="text-center"><strong>查询结果</strong></h3>
	  <table class="table table-bordered table-hover">
	    <!-- <caption><strong>查询结果</strong></caption> -->
			<thead>
		   		<tr>
		   			<th>节点名</th>
		   			<th>匹配节点集</th>
		   		</tr>
	  		</thead>
	     <tbody>
	  	 <%
	            QueryResDao resDao = new QueryResDao();
	            
	            resDao.getConn(server, dbname, uname, psd);
	            
	            List<QueryResModel> list1 =resDao.getQueryRes(resTableName,ds,queryNum);    
	            for(QueryResModel model:list1)
	            {%>
		           <tr>
		               <td><%=model.getNode() %></td>
		               <td><%=model.getResStr() %></td>
		           </tr>
	            <%}
	      %>
	      </tbody>	
	  </table>
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
