<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
			<div class="span2">
				<ul class="nav nav-pills nav-stacked">
					<li class="active">
						<a href="indexPage.jsp">Home</a>
					</li>
					<!-- 这个相对路径怎么写才对呢？？？现在是绝对路径。 -->   
					<li><a href= "/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube数据集</a></li>
					<li><a href="https://www.baidu.com/">Patent数据集</a></li> 
					<li><a href="#">DBLP数据集</a></li> 
				</ul>
			</div>
	    </div>
	  </div>
	  
	<div class="container">
	  <div class="row">
		<div class="span8">
			<ul class="nav nav-pills">
				<li class="active"><a href="indexPage.jsp">Home</a></li>   
				<li><a href="/GraphPatternQueryWeb/Yt/YoutubeQuery1.jsp">YouTube数据集</a></li>
				<li><a href="#">Patent数据集</a></li> 
				<li><a href="#">DBLP数据集</a></li> 
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
