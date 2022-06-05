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
	<h4 class="modal-title" id="myModalLabel">Ubah Pengguna</h4>
</div>
<div class="modal-body">
	<div>
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header card-header-info" id="tambah">
						<h4 class="card-title">Silahkan Lengkapi Form Dibawah</h4>
						<p class="card-category" id="msg"></p>
					</div>
					<div class="card-header card-header-info" style="margin-top:-2px">
						<ul style="padding-left: 20px;margin:0">
							<li>Pastikan Username anda tersedia</li>
						</ul>
					</div>
					<div class="card-body" style="margin-top:6px;">
						<form method="POST" id="addForm" action="javascript:void(0);">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group" id="inputan_username">
										<label class="bmd-label-floating">Username</label>
										<input type="text" required name="username" class="form-control" value="<?= $data['username'] ?>">
										<span class="form-control-feedback">
											<i class="material-icons" id="icon_username"></i>
										</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="bmd-label-floating">Password (Kosongkan jika tidak ingin diubah)</label>
										<span class="fa fa-eye form-control-icon" id="icon-password"></span>
										<input type="text" name="password" id="password" class="form-control">
									</div>
								</div>
							</div>


							<div class="row" style="padding-bottom: 0px;">
								<div class="list col-md-12 dropdown bootstrap-select dropdown" style="width=100% !important;">
									<label for="level" style="font-size:.6875rem;margin-bottom:0px;" class="bmd-label-static">Level</label>
									<select name="level" class="selectpicker" data-style="select-with-transition" title="Pilih Level" data-size="7" tabindex="-98" disabled>
										<option value="admin" <?= $data['role'] == "admin" ? "selected" : ""; ?>>Admin</option>
										<option value="operator" <?= $data['role'] == "operator" ? "selected" : ""; ?>>Operator Paud</option>
										<option value="pimpinan" <?= $data['role'] == "pimpinan" ? "selected" : ""; ?>>Pimpinan Forum PAUD</option>
									</select>
								</div>
							</div>


							<div class="row <?= empty($data['tbl_lembaga.nama_lembaga']) ? "d-none" : "" ?>">
								<div class="col-md-12">
									<div class="form-group">
										<label class="bmd-label-floating">Nama Lembaga</label>
										<input type="text" name="nama_lembaga" class="form-control" value="<?= $data['tbl_lembaga.nama_lembaga'] ?>" disabled>
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
	$(document).ready(function() {
		$('.selectpicker').selectpicker();

		$("#icon-password").on("click", function() {
			if ($("#password").attr("type") == "text") {
				$("#password").attr("type", "password");
				$(this).attr("class", "fa fa-eye form-control-icon");
			} else {
				$("#password").attr("type", "text");
				$(this).attr("class", "fa fa-eye-slash form-control-icon");
			}
		});
	});


	$('[name="username"]').on('input', function() {
		var username = $(this).val();
		$.ajax({
			type: "POST",
			url: "<?php echo base_url() ?>kelola_pengguna/cek_username",
			// data: $('#save').serialize(),
			dataType: "json",
			data: {
				username: username
			},
			success: function(data) {
				console.log(data);
				if (username !== '') {
					if (data == true || username == '<?= $data['username'] ?>') {
						$('#icon_username').removeClass("loader");
						$('#inputan_username').removeClass("has-danger");
						$('#inputan_username').addClass("has-success");
						$('#icon_username').html('done');
					} else {
						$('#icon_username').removeClass("loader");
						$('#inputan_username').removeClass("has-success");
						$('#inputan_username').addClass("has-danger");
						$('#icon_username').html('close');
					}
				} else {
					$('#icon_username').html('');
					if ($('#inputan_username').hasClass("has-success")) {
						$('#inputan_username').removeClass("has-success");
					}
					if ($('#inputan_username').hasClass("has-danger")) {
						$('#inputan_username').removeClass("has-danger");
					}
				}
			},
			beforeSend: function() {
				$('#icon_username').html('');
				$('#icon_username').addClass("loader");
			},
			error: function(jqXHR, textStatus, errorThrown) {
				$('#msg').show();
				$("#msg").html(textStatus + jqXHR.responseText + " " + errorThrown);
			}
		});

		return false;
	});


	$('[name="btn_simpan"]').on('click', function() {
		var username = $('[name="username"]').val();
		var password = $('[name="password"]').val();

		if (username !== "") {
			if (!$('#inputan_username').hasClass("has-danger")) {
				$.ajax({
					type: "POST",
					url: "<?php echo base_url() ?>kelola_pengguna/edit",
					dataType: "json",
					data: {
						username: username,
						password: password,
						id: '<?= $this->encryption->encrypt($data['id']) ?>'
					},
					success: function(data) {
						$('#modal').modal('hide');
						Swal.fire(
							'Berhasil!',
							'Data telah diubah.',
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
				notifikasi("danger", "Data gagal ditambahkan", "top", "center", "not_interested", "#modal", "");
			}

		} else {
			notifikasi("danger", "Data gagal ditambahkan", "bottom", "center", "not_interested", "#informasi", "");
		}

	});
</script>
