<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta charset="utf-8">
</head>
<body style="height: 100%; margin: 0">
	<div id="container" style="height: 100%"></div>
	<script src="${pageContext.request.contextPath}/js/echarts.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		var myChartDOM = document.getElementById("container");
		var myChart = echarts.init(myChartDOM);
		var app = {};
		app.title = '坐标轴刻度与标签对齐';
		option = {
			color : [ '#3398DB' ],
			tooltip : {
				trigger : 'axis',
				axisPointer : { // 坐标轴指示器，坐标轴触发有效
					type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				}
			},
			grid : {
				left : '3%',
				right : '4%',
				bottom : '3%',
				containLabel : true
			},
			xAxis : [ {
				type : 'category',
				data : [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
				axisTick : {
					alignWithLabel : true
				}
			} ],
			yAxis : [ {
				type : 'value'
			} ],
			series : [ {
				name : '直接访问',
				type : 'bar',
				barWidth : '60%',
				data : [ 10, 52, 200, 334, 390, 330, 220 ]
			} ]
		};
		;
		if (option && typeof option === "object") {
			myChart.setOption(option, true);
		}
	</script>
</body>
</html>