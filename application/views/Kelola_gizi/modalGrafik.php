<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<h4 class="modal-title" id="myModalLabel">Data Grafik</h4>
</div>
<div class="modal-body">
	<div>
		<div class="container-fluid">
			<div class="col-md-12">
				<figure class="highcharts-figure">
					<div id="container"></div>
				</figure>
			</div>
		</div>
	</div>
</div>


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
