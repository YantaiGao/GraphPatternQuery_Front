<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ͼ��ѯ��ҳ</title>
    
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
	      <h1>ͼģʽƥ�� Graph Pattern Query</h1>
	      <p>������ͼ��ѯ�������</p> 
	  	</div>
  	  </div>
	  <div class="container">
		<div class="row">
			<div class="span2">
				<ul class="nav nav-pills nav-stacked">
					<li class="active">
						<a href="indexPage.jsp">Home</a>
					</li>
					<!-- ������·����ôд�Ŷ��أ����������Ǿ���·���� -->   
					<li><a href= "/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube���ݼ�</a></li>
					<li><a href="https://www.baidu.com/">Patent���ݼ�</a></li> 
					<li><a href="#">DBLP���ݼ�</a></li> 
				</ul>
			</div>
	    </div>
	  </div>
	  
	<div class="container">
	  <div class="row">
		<div class="span8">
			<ul class="nav nav-pills">
				<li class="active"><a href="indexPage.jsp">Home</a></li>   
				<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube���ݼ�</a></li>
				<li><a href="#">Patent���ݼ�</a></li> 
				<li><a href="#">DBLP���ݼ�</a></li> 
				<li><a href="#">About</a></li> 
			</ul>
		</div>
	  </div>
	</div>
	  
    </body>
  <!-- 
  <body> 
  <frameset>
  	<frame src="Left.html">
  	<frame src="Right.html" name="right">
  </frameset>
  </body>
  -->
  <!-- 
  <body>
    This is my HTML page. <br>
  </body>
   -->
</html>
