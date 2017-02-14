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
	<script src="lib/js/Chart.min.js"></script>

  </head>
  
  <body>
  
  
	<!-- 
  	<div id="canvas-holder" style="width:40%">
        <canvas id="myChart"></canvas>
    </div>
    -->
    <!-- 
  	<canvas id="myChart" width="800" height="600"></canvas>
  	 -->
  	<!-- 
  	<script>
	var data = {
	    labels: ["January", "February", "March", "April", "May", "June", "July"],
	    datasets: [
	        {
	            fillColor: "#CCCCFF",
	            strokeColor: "rgba(220,220,220,1)",
	            label: "2010��",
	            data: [65, 59, 90, 81, 56, 55, 40]
	        },
	        {
	            fillColor: "#CCFFCC",
	            strokeColor: "#CCFFCC",
	            label:"2011��",
	            data: [28, 48, 40, 19, 96, 27, 100]
	        },
	        {
	            fillColor: "#FFFFCC",
	            strokeColor: "#FFFFCC",
	            label: "2012��",
	            data: [13, 55, 40, 19, 23, 27, 64]
	        },
	        {
	            fillColor: "#99FFFF",
	            strokeColor: "#99FFFF",
	            label: "2013��",
	            data: [98, 11, 52, 19, 65, 20, 77]
	        }
    	]
	};
	/**
	������������ط�ʹ������
	
	$(function () {
	    var ctx = $("#myChart").get(0).getContext("2d");
	    var myNewChart = new Chart(ctx);
	    myNewChart.Bar(data);
	});
	
	window.onload = function(){
		var ctx = document.getElementById("myChart").getContext("2d");
		window.myBar = new Chart(ctx).Bar(data, {
			responsive : true
		});
	};
	
	*/
	
	var ctx = document.getElementById("myChart").getContext("2d");
	var myNewChart = new Chart(ctx).PolarArea(data);
	
	</script>
	-->
	
	<!-- 
		������һ��div��container��������ռ��������ҳ������div�оͺ��ˣ�������html�зŵ�div�� container����Ȼ�����á�
	 -->
	<div class="container">
		<canvas id="myChart"></canvas>
	</div>
	
	<script>
		var ctx = document.getElementById("myChart");
		var myChart = new Chart(ctx, {
		    type: 'bar',
		    data: {
		        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});
	</script>
	
  
  </body>
</html>
