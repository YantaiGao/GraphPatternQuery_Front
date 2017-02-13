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
    
    <title>DBLPQuery4</title>
    
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

	<!--../���ԣ�ֱ��lib��ʼ�Ŷԣ�Ϊʲô�� 
	<link href="../lib/css/bootstrap.min.css" rel="stylesheet">
	<script src="../lib/js/jquery-3.1.1.min.js"></script>
	<script src="../lib/js/bootstrap.min.js"></script>
	-->
  </head>
  
  <body>
  
  <div class="container">
	  <div class="jumbotron">
	    <h1>ͼģʽƥ�� Graph Pattern Query</h1>
	    <p>������ͼ��ѯ�������</p> 
	  </div>
  </div>
  <!-- 
  <div class="container">
	  <div class="row">
		<div class="span8">
			<ul class="nav nav-pills">
				<li ><a href="indexPage.jsp">Home</a></li>   
				<li class="active"><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube���ݼ�</a></li>
				<li><a href="#">Patent���ݼ�</a></li> 
				<li><a href="#">DBLP���ݼ�</a></li> 
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
				<!-- ע�⣺active����ֻ�ܼ���li��ǩ�� -->
				<!-- <li class="active"><a href="indexPage.jsp">Home</a></li> --> 
				<li><a href="#">Home</a></li>  
				<!-- 
				<li ><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube���ݼ�</a></li>
				 -->
				<li class="dropdown">
					<a class="dropdown-toggle active" data-toggle="dropdown" href="#">YouTube���ݼ�<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YoutubeQuery1</a></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery2.jsp">YoutubeQuery2</a></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery3.jsp">YoutubeQuery3</a></li>
						<li class="divider"></li>
						<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery4.jsp">YoutubeQuery4</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Patent���ݼ�<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/GraphPatternQueryWeb/Patent/PatentQuery1.jsp">PatentQuery1</a></li>
						<li><a href="/GraphPatternQueryWeb/Patent/PatentQuery2.jsp">PatentQuery2</a></li>
						<li><a href="/GraphPatternQueryWeb/Patent/PatentQuery3.jsp">PatentQuery3</a></li>
						<li class="divider"></li>
						<li><a href="/GraphPatternQueryWeb/Patent/PatentQuery4.jsp">PatentQuery4</a></li>
					</ul>
				</li>
				<li class="dropdown active">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">DBLP���ݼ�<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery1.jsp">DBLPQuery1</a></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery2.jsp">DBLPQuery2</a></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery3.jsp">DBLPQuery3</a></li>
						<li class="divider"></li>
						<li><a href="/GraphPatternQueryWeb/Dblp/DBLPQuery4.jsp">DBLPQuery4</a></li>
					</ul>
				</li>
				<!-- 
				<li><a href="#">Patent���ݼ�</a></li> 
				<li><a href="#">DBLP���ݼ�</a></li> 
				--> 
				<li><a href="/GraphPatternQueryWeb/about.jsp">About</a></li>
			</ul>
		</div>
	  </div>
  </div>
  <!-- %!������ȫ�ֱ��� -->
  <%!
 	String server = "localhost";
	String dbname = "front_res";
	String ds = "DBLP";
	String queryTableName = "query";
	String qeTableName = "queryedge";
	String resTableName = "queryRes";
	int queryNum = 4;
	String uname = "root";
	String psd = "root";
   %>
  <!-- ������ģʽͼ��Լ��-->
  <div class="container">
  	  <div class="col-xs-12">
  	   <div class="col-md-7">
  	    <h2>DBLP Query 4 Patternͼ</h2>
	    <!--
	    ../���ԣ�ֱ��images�Ŷԣ�Ϊʲô�� 
	    <img src="../images/YtQ1.jpg" class="img-responsive" alt="Pattern Graph" width="304" height="236">
	    -->
	    <img src="images/DbQ4.jpg" class="img-responsive" alt="Pattern Graph" width="215" height="316">
	  </div>
	  <div class="col-md-5">
	    <h2>DBLP ���ݼ�����˵����</h2>
	    <br/>
	    <ul>
	      <li style="font-size: 21px;">1-paperTitle:���ı���</li>
  	   	  <li style="font-size: 21px;">2-Authors:����</li>
  		  <li style="font-size: 21px;">3-Year:����ʱ��</li>
   		  <li style="font-size: 21px;">4-publication venue:���浥λ</li>
   		  <li style="font-size: 21px;">5-Abstract:ժҪ</li>
   		</ul>
	  </div>
    </div> 
  </div> 
  <div class="container">
	  <h3 class="text-center"><strong>�߼���������</strong></h3>
	  <table class="table table-bordered table-hover">
		<!-- <caption><strong>�߼���������</strong></caption> -->
			<thead>
		   		<tr>
		   			<th>��</th>
		   			<th>����Լ��</th>
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
	  <h2>Patternͼ</h2>
	  <!--
	  ../���ԣ�ֱ��images�Ŷԣ�Ϊʲô�� 
	  <img src="../images/YtQ1.jpg" class="img-responsive" alt="Pattern Graph" width="304" height="236">
	  -->
	  <!-- 
	  <img src="images/YtQ1.jpg" class="img-responsive" alt="Pattern Graph" width="304" height="236">
  	</div>
  </div>
   -->
  <!-- ������ģʽͼ�ڵ�����Լ��-->
  <div class="container">
    <div class="col-xs-12">
      <h3 class="text-center"><strong>�ڵ�Լ��</strong></h3>
	  <table class="table table-bordered table-hover">
	  	<!-- <caption><strong>�ڵ�Լ��</strong></caption> -->
			<thead>
		   		<tr>
		   			<th>�ڵ���</th>
		   			<th>�ڵ�����Լ��</th>
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
  <!-- �����ǲ�ѯ����� -->
  <div class="container">
    <div class="col-xs-12">
      <h3 class="text-center"><strong>��ѯ���</strong></h3>
	  <table class="table table-bordered table-hover">
	    <!-- <caption><strong>��ѯ���</strong></caption> -->
			<thead>
		   		<tr>
		   			<th>�ڵ���</th>
		   			<th>ƥ��ڵ㼯</th>
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
