<figure class="highcharts-figure">
  <div id="container"></div>
  
</figure>

<script>
        Highcharts.chart('container', {

    title: {
    text: 'Grafi Perkembangan'
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
    data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
    }, {
    name: 'Berat Badan',
    data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
    }, {
    name: 'Lingkar Kepala',
    data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
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