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
			text: 'Grafik Perkembangan <?= $nama ?>'
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
			data: <?= $tinggi_badan ?>
		}, {
			name: 'Berat Badan',
			data: <?= $berat_badan ?>
		}, {
			name: 'Lingkar Kepala',
			data: <?= $lingkar_kepala ?>
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
