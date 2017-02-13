<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    
    <title>Chart Js Test</title>
    
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
	<script src="lib/js/Chart.js"></script>

  </head>
  
  <body>
  
  	<div id="canvas-holder" style="width:40%">
        <canvas id="myChart"></canvas>
    </div>
    <!-- 
  	<canvas id="myChart" width="800" height="600"></canvas>
  	 -->
  	<script>
	var data = {
	    labels: ["January", "February", "March", "April", "May", "June", "July"],
	    datasets: [
	        {
	            fillColor: "#CCCCFF",
	            strokeColor: "rgba(220,220,220,1)",
	            label: "2010定",
	            data: [65, 59, 90, 81, 56, 55, 40]
	        },
	        {
	            fillColor: "#CCFFCC",
	            strokeColor: "#CCFFCC",
	            label:"2011定",
	            data: [28, 48, 40, 19, 96, 27, 100]
	        },
	        {
	            fillColor: "#FFFFCC",
	            strokeColor: "#FFFFCC",
	            label: "2012定",
	            data: [13, 55, 40, 19, 23, 27, 64]
	        },
	        {
	            fillColor: "#99FFFF",
	            strokeColor: "#99FFFF",
	            label: "2013定",
	            data: [98, 11, 52, 19, 65, 20, 77]
	        }
    	]
	};

	$(function () {
	    var ctx = $("#myChart").get(0).getContext("2d");
	    var myNewChart = new Chart(ctx);
	    myNewChart.Bar(data);
	});
	</script>
  
  </body>
</html>
