<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<h4 class="modal-title" id="myModalLabel">History Data</h4>
</div>
<div class="modal-body">
	<div>
		<div class="container-fluid">
			<div class="col-12">
				<table class="table table-striped">
					<tr>
						<td>Tinggi Badan</td>
						<td>Berat Badan</td>
						<td>Lingkar Kepala</td>
						<td>Tanggal Input</td>
						<td>Kondisi</td>
					</tr>
					<?php
					foreach ($data as $row) :
					?>
						<tr>
							<td><?= $row->tinggi_badan ?> cm</td>
							<td><?= $row->berat_badan ?> Kg</td>
							<td><?= $row->lingkar_kepala ?> cm</td>
							<td style="font-size:10px ; font-weight:600"><?= date("d-M-Y", strtotime($row->tanggal_input)) ?></td>
							<?php
							if ($row->bmi >= 30) {
								$statusBMI = "Obesitas";
								$color = "red";
								$textColor = "white";
								$tooltip = "anak memiliki BMI >= 30";
							} elseif ($row->bmi <= 18.5) {
								$statusBMI = "Kurus";
								$color = "red";
								$textColor = "white";
								$tooltip = "anak memiliki BMI <= 18.5";
							} elseif ($row->bmi >= 25) {
								$statusBMI = "Pra-Obesitas";
								$color = "yellow";
								$textColor = "black";
								$tooltip = "anak memiliki BMI <= 18.5";
							} else {
								$statusBMI = "Normal";
								$color = "green";
								$textColor = "white";
								$tooltip = "anak memiliki BMI antara 18.5 sampai 24.9";
							}
							?>
							<td><span class="badge" style="background-color:<?= $color ?>;color:<?= $textColor ?>" data-mdb-toggle="tooltip" title="Dikarenakan <?= $tooltip ?>">
									<?= $statusBMI ?>
								</span></td>
						</tr>
					<?php
					endforeach;
					?>
				</table>
			</div>
		</div>
	</div>
</div>
<!-- <div class="modal-footer">
...
</div> -->

<script>
	$('.selectpicker').selectpicker();

	$('#tanggal_input').datetimepicker({
		format: 'YYYY-MM-DD',
		icons: {
			time: 'fa fa-clock-o',
			date: 'fa fa-calendar',
			up: 'fa fa-plus',
			down: 'fa fa-minus',
			previous: 'fa fa-chevron-left',
			next: 'fa fa-chevron-right'
		},
	});

	$('[name="btn_simpan"]').on('click', function() {
		var id_siswa = $('[name="id_siswa"]').val();
		var tinggi_badan = $('[name="tinggi_badan"]').val();
		var berat_badan = $('[name="berat_badan"]').val();
		var lingkar_kepala = $('[name="lingkar_kepala"]').val();
		var tanggal_input = $('[name="tanggal_input"]').val();

		if (
			id_siswa !== "" &&
			tinggi_badan !== "" &&
			berat_badan !== "" &&
			lingkar_kepala !== "" &&
			tanggal_input !== ""

		) {
			$.ajax({
				type: "POST",
				url: "<?php echo base_url() ?>kelola_gizi/add",
				dataType: "json",
				data: {
					id_siswa,
					tinggi_badan,
					berat_badan,
					lingkar_kepala,
					tanggal_input
				},
				success: function(data) {
					$('#modal').modal('hide');
					Swal.fire(
						'Berhasil!',
						'Data telah ditambah.',
						'success'
					);

					datatable.ajax.reload(null, false);
				},
				error: function(jqXHR, textStatus, errorThrown) {
					// $('#msg').show();
					// $("#msg").html(textStatus + jqXHR.responseText + " " + errorThrown);
					console.log(textStatus + jqXHR.responseText + " " + errorThrown);
				}
			});
			return false;
		} else {
			notifikasi("danger", "Data gagal ditambahkan", "bottom", "center", "not_interested", "#informasi", "");
		}

	});
</script>
