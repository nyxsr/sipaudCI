<style>
	.form-group .form-control-icon {
		position: absolute;
		z-index: 20;
		display: block;
		width: 2.375rem;
		height: 2.375rem;
		line-height: 2.375rem;
		text-align: center;
		color: #aaa;
		right: 5px;
		top: 2px;
	}
</style>
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<h4 class="modal-title" id="myModalLabel">Klasifikasi BMI<br><small>Dibuat oleh WHO</small></h4>
</div>
<div class="modal-body">
	<div>
		<div class="container-fluid">
			<div class="col-md-12">
				<img src="<?= base_url('assets/img/bmi.jpg'); ?>" alt="Klasifikasi BMI WHO">
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
