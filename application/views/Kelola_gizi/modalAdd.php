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
	<h4 class="modal-title" id="myModalLabel">Buat Data Gizi Anak Baru </h4>
</div>
<div class="modal-body">
	<div>
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header card-header-info" id="tambah">
						<h4 class="card-title">Lengkapi Form Dibawah</h4>
						<p class="card-category" id="msg"></p>
					</div>
					<div class="card-header card-header-info" style="margin-top:-2px">
						<ul style="padding-left: 20px;margin:0">
							<li>Pastikan isi dengan valid</li>
						</ul>
					</div>
					<div class="card-body" style="margin-top:6px;">
						<form method="POST" id="addForm" action="javascript:void(0);">
							<div class="row" style="padding-bottom: 0px;">
								<div class="list col-md-12 dropdown bootstrap-select dropdown" style="width:100% !important;">
									<label for="id_siswa" style="font-size:.6875rem;margin-bottom:0px;" class="bmd-label-static">Nama Siswa</label>
									<select name="id_siswa" class="selectpicker" data-style="select-with-transition" title="Pilih Siswa" data-style="btn btn-link">
										<?php
										foreach ($siswa as $index => $d) :
										?>
											<option value="<?= $d['id_siswa'] ?>">
												<?= $d['nama'] ?>
											</option>
										<?php
										endforeach;
										?>
									</select>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="bmd-label-floating">Tinggi Badan</label>
										<input type="text" required name="tinggi_badan" id="tinggi_badan" class="form-control">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="bmd-label-floating">Berat Badan</label>
										<input type="text" required name="berat_badan" id="berat_badan" class="form-control">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="bmd-label-floating">Lingkar Kepala</label>
										<input type="text" required name="lingkar_kepala" id="lingkar_kepala" class="form-control">
									</div>
								</div>
							</div>

							<button type="button" class="btn btn-default pull-right" data-dismiss="modal">Batal</button>
							<button class="btn btn-info pull-right" id="btn_simpan" name="btn_simpan">Simpan</button>
							<div class="clearfix"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- <div class="modal-footer">
...
</div> -->

<script>
	$('.selectpicker').selectpicker();

	$('[name="btn_simpan"]').on('click', function() {
		var id_siswa = $('[name="id_siswa"]').val();
		var tinggi_badan = $('[name="tinggi_badan"]').val();
		var berat_badan = $('[name="berat_badan"]').val();
		var lingkar_kepala = $('[name="lingkar_kepala"]').val();

		if (
			id_siswa !== "" &&
			tinggi_badan !== "" &&
			berat_badan !== "" &&
			lingkar_kepala !== ""

		) {
			$.ajax({
				type: "POST",
				url: "<?php echo base_url() ?>kelola_gizi/add",
				dataType: "json",
				data: {
					id_siswa,
					tinggi_badan,
					berat_badan,
					lingkar_kepala
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
