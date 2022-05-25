<figure class="highcharts-figure">
	<div id="container"></div>

</figure>

<script>
	Highcharts.chart('container', {

		title: {
			text: 'Grafik Perkembangan <?= $siswa ?>'
		},

		yAxis: {
			title: {
				text: 'Berat Badan'
			}
		},

		xAxis: {
			accessibility: {
				rangeDescription: 'Range: 1 to 7'
			}
		},

		legend: {
			layout: 'vertical',
			align: 'right',
			verticalAlign: 'middle'
		},

		plotOptions: {
			series: {
				label: {
					connectorAllowed: false
				},
				pointStart: 1
			}
		},

		series: [{
			name: 'Tinggi Badan',
			data: [0, 141, 151]
		}, {
			name: 'Berat Badan',
			data: [0, 45, 39]
		}, {
			name: 'Lingkar Kepala',
			data: [0, 50, 51]
		}],

		responsive: {
			rules: [{
				condition: {
					maxWidth: 500
				},
				chartOptions: {
					legend: {
						layout: 'horizontal',
						align: 'center',
						verticalAlign: 'bottom'
					}
				}
			}]
		}

	});
</script>