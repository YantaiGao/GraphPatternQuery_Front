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
    
    <title>About Us</title>
    
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
				<li><a href="#">Home</a></li>  
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
				<li  class="active"><a href="#">About</a></li>
			</ul>
		</div>
	  </div>
  </div>
	
  <div class="container">
	<div>
	  
	  <br/><br/><br/>
	  
	  <p>
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-home"></span> Home
        </button>
        <span style="color: rgb(130, 130, 132); font-size: 16px;"> North China Electric Power University E1106</span>
      </p>
      
      <br/>
      
      <p>
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-envelope"></span> Envelope
        </button>
        <span style="color: rgb(130, 130, 132); font-size: 16px;">Gaoyantai@Gmail.com</span>
      </p>
      
      <br/>
      
      <p>
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-phone"></span> Phone
        </button>
        <span style="color: rgb(130, 130, 132); font-size: 16px;">18811366100</span>
      </p>
      
      <br/><br/><br/>
	
	</div>
	
	<!-- 
	<div>
     <p>
        <a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-home"></span> Address
        </a>
        <span style="color: rgb(130, 130, 132); font-size: 21px;">North China Electric Power University E1106</span>
     </p>
     <p>
        <a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-envelope"></span> Envelope
        </a>
        <span style="color: rgb(130, 130, 132); font-size: 21px;">Gaoyantai@Gmail.com</span>
      </p>
     <p>
        <a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-phone"></span> Phone
        </a>
        <span style="color: rgb(130, 130, 132); font-size: 21px;">18811366100</span>
     </p> 
    </div>
    -->  

    <!-- 
    <div >
      <p class="text-center">
    	<span class="glyphicon glyphicon-home" style="color: rgb(130, 130, 132); font-size: 21px;"> North China Electric Power University E1106</span>
      </p>
      <p class="text-center">
    	<span class="glyphicon glyphicon-envelope" style="color: rgb(130, 130, 132); font-size: 21px;"> Gaoyantai@Gmail.com</span>
      </p>
      <p class="text-center">
        <span class="glyphicon glyphicon-phone" style="color: rgb(130, 130, 132); font-size: 21px;"> 18811366100</span>
      </p>
    </div>
	 --> 
	 
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
