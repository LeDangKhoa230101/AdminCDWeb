<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

  google.charts.load('current', {'packages':['corechart']});

  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {

    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Topping');
    data.addColumn('number', 'Slices');
    data.addRows([
    	['name', 22323],
    	['dush', 32323],
    	['max', 222334],
    	['min', 454545],
//     <c:forEach items="${listC}" var="entry">
//       [ '${entry.cName}', ${entry.sumMoney} ],
//   	</c:forEach>
    ]);

    var options = {'title':'Revenue by category in December',
                   'width':580,
                   'height':500};

    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
  
  google.charts.load('current', {packages: ['corechart', 'bar']});
  google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

    var data = google.visualization.arrayToDataTable([
      ['Year', 'Revenue: $',],
      ['2019', 120000],
      ['2020', 122304],
      ['2021', 43822],
      ['2022', 76322],
      ['2023', 22932],
//       <c:forEach items="${listS}" var="entry">
//       	[ '${entry.year}', ${entry.billPrice} ],
//   	  </c:forEach>
    ]);

    var options = {
      title: 'Revenue by year', 'width':580, 'height':500,
      hAxis: {
        title: 'Revenue',
        minValue: 0
      },
      vAxis: {
        title: 'Year'
      }
    };

    var chart = new google.visualization.BarChart(document.getElementById('chart_div-column'));

    chart.draw(data, options);
  }
</script>

<div class="container chart-container">
	<div class="row">
		<div class="col-6">
			<div id="chart_div-column"></div>
		</div>
		<div class="col-6">
			<div id="chart_div"></div>
		</div>
	</div>
</div>