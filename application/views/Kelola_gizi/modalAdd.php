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

	.dropdown_filter button {
		margin: 0;
	}

	.dropdown_filter .dropdown-menu .dropdown-item:focus,
	.dropdown_filter .dropdown-menu .dropdown-item:hover,
	.dropdown_filter .dropdown-menu a:active,
	.dropdown_filter .dropdown-menu a:focus,
	.dropdown_filter .dropdown-menu a:hover,
	.dropdown_filter .bootstrap-select .dropdown-item.active {
		background-color: #0CB4C9;
	}

	.dropdown_filter .bootstrap-select .btn.dropdown-toggle.select-with-transition {
		background-image: linear-gradient(0deg, #0CB4C9 2px, rgba(244, 67, 54, 0) 0), linear-gradient(0deg, #d2d2d2 1px, hsla(0, 0%, 82%, 0) 0) !important;
	}

	.dropdown_filter .bootstrap-select>.dropdown-toggle.bs-placeholder {
		color: #ffff;
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
							<div class="row w-100" style="padding-bottom: 0px;">

								<div class="col-md-12 my-1">
									<div id="kecamatan-list" class="dropdown_filter dropdown bootstrap-select <?= ($this->session->userdata("role") == 'operator') ? 'd-none' : '' ?>">
										<select id="filter_kecamatan" class="kecamatan filter" data-size="5" data-style="select-with-transition" data-style="btn btn-link" tabindex="-98">
											<option value="" <?= ($this->session->userdata("role") == "operator") ? "" : "selected" ?>>Pilih Kecamatan</option>
											<?php foreach ($kecamatan as $dataKecamatan) : ?>
												<option value="<?= $dataKecamatan['kode_kec'] ?>" <?= ($this->session->userdata("role") == "operator" && $this->encryption->decrypt(base64_decode($this->session->userdata("kode_kec"))) == $dataKecamatan['kode_kec']) ? "selected" : "" ?>> <?= $dataKecamatan['kecamatan'] ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>

								<div class="col-md-12 my-1">
									<div id="desa-list" class="dropdown_filter dropdown bootstrap-select <?= ($this->session->userdata("role") == 'operator') ? 'd-none' : '' ?>" style="width:100% !important;">
										<select id="filter_desa" class="desa filter" data-size="5" data-style="select-with-transition" data-style="btn btn-link"  tabindex="-98">
											<option value="" <?= ($this->session->userdata("role") == "operator") ? "" : "selected" ?>>Desa</option>
											<?php foreach ($desa as $dataDesa) : ?>
												<!-- <option value="<?= $dataDesa['kode_desa'] ?>" <?= ($this->session->userdata("role") == "operator" && $this->encryption->decrypt(base64_decode($this->session->userdata("kode_desa"))) == $dataDesa['kode_desa']) ? "selected" : "" ?>> <?= $dataDesa['desa'] ?></option> -->
											<?php endforeach; ?>
										</select>
									</div>
								</div>

								<div class="col-md-12 my-1">
									<div id="lembaga-list" class="dropdown_filter dropdown bootstrap-select <?= ($this->session->userdata("role") == 'pimpinan') ? 'd-none' : '' ?>" style="width:100% !important;">
										<select id="filter_lembaga" class="lembaga filter" data-size="5" data-style="select-with-transition" data-style="btn btn-link"  tabindex="-98" <?= ($this->session->userdata("role") == "operator") ? "disabled" : "" ?>>
											<option value="" <?= ($this->session->userdata("role") == "operator") ? "" : "selected" ?>>Lembaga</option>
											<?php foreach ($lembaga as $d) : ?>
												<option value="<?= $d['id'] ?>" <?= ($this->session->userdata("role") == "operator" && $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))) == $d['id']) ? "selected" : "" ?>><?= $d['nama_lembaga'] ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>

								<div class="col-md-12 my-1">
									<div id="siswa-list" class="dropdown_filter dropdown bootstrap-select <?= ($this->session->userdata("role") == 'pimpinan') ? 'd-none' : '' ?>" style="width:100% !important;">
										<select name="id_siswa" id="filter_siswa" class="siswa filter" data-size="5" data-style="select-with-transition" data-style="btn btn-link"  tabindex="-98">
											<option value="">Siswa</option>
											<?php foreach ($siswaDrop as $d) : ?>
												<option value="<?= $d['id_siswa'] ?>" <?= ($this->session->userdata("role") == "operator" && $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))) == $d['id_siswa']) ? "selected" : "" ?>><?= $d['nama'] ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>

								<!-- <div class="list col-md-12 dropdown bootstrap-select dropdown" style="width:100% !important;">
									<label for="id_siswa" style="font-size:.6875rem;margin-bottom:0px;" class="bmd-label-static">Nama Siswa</label>
									<select name="id_siswa" class="selectpicker" data-style="select-with-transition" title="Pilih Siswa" data-style="btn btn-link">
										<?php
										foreach ($siswa as $index => $d) :
										?>
											<option value="<?= $d['id_siswa'] ?>">
												<?= $d['nama'] ?> - <b><?= $d['nama_lembaga'] ?></b>
											</option>
										<?php
										endforeach;
										?>
									</select>
								</div> -->
							</div>
							<div class="row mt-2">
								<div class="col-md-12">
									<div class="form-group form-inline">
										<label class="bmd-label-floating">Tinggi Badan</label>
										<input type="text" required name="tinggi_badan" id="tinggi_badan" class="form-control w-25 ">
										<p class="font-weight-bold">
											CM
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group form-inline">
										<label class="bmd-label-floating">Berat Badan</label>
										<input type="text" required name="berat_badan" id="berat_badan" class="form-control w-25">
										<p class="font-weight-bold">
											Kg
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group form-inline">
										<label class="bmd-label-floating">Lingkar Kepala</label>
										<input type="text" required name="lingkar_kepala" id="lingkar_kepala" class="form-control w-25">
										<p class="font-weight-bold">
											CM
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group input-group" id="tanggal">
										<div class="input-group-prepend">
											<span class="input-group-text">
												<i class="material-icons">date_range</i>
											</span>
										</div>
										<input type="text" required name="tanggal_input" id="tanggal_input" name="tanggal_input" placeholder="Tanggal Input" class="form-control" onblur="$(this).val() ? $(this).parent().parent().addClass('is-focused') : $(this).parent().parent().removeClass('is-focused')">
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
			var id_siswa = $('#filter_siswa').val();
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

		$('.kecamatan').selectpicker({
			liveSearch: true
		});
		$('.desa').selectpicker({
			liveSearch: true
		});
		$('.lembaga').selectpicker({
			liveSearch: true
		});
		$('.siswa').selectpicker({
			liveSearch: true
		});

		function filterData() {
			return {
				lembaga: $("#filter_lembaga").val(),
				desa: $("#filter_desa").val(),
				kecamatan: $("#filter_kecamatan").val(),
				siswa: $("#filter_siswa").val(),
			}
		}

		// Layout Akreditasi
		layout(filterData())
		getData(filterData())

		$(".filter").change(function() {
			layout(filterData())
			getData(filterData())
		});

		$("#filter_kecamatan").change(function() {
			var value = $("#filter_kecamatan").val()
			getDesa(value)
		});

		function getDesa(kode_kec) {
			$.ajax({
				type: "POST",
				url: "<?php echo base_url() ?>Kelola_gizi/getDesa",
				dataType: "json",
				data: {
					kode_kec,
				},
				success: function(data) {
					var desa = data.desa
					$('#desa-list').empty()

					$('#desa-list').append(`
                                <select id="filter_desa" class="desa filter" data-size="7" data-style="select-with-transition" data-style="btn btn-link"  tabindex="-98">
                                    <option value="" selected >Semua Desa</option>

                                </select>
                            `)
					for (let index = 0; index < desa.length; index++) {
						$('.desa').append(`
                                    <option value="${desa[index].kode_desa}">${desa[index].desa}</option>
                                `)
					}

					$('.desa').selectpicker({
						liveSearch: true
					});

					$(".filter").change(function() {
						layout(filterData())
						getData(filterData())
					});

					$("#filter_desa").change(function() {
						var value_kec = $("#filter_kecamatan").val()
						var value_desa = $("#filter_desa").val()
						getLembaga(value_kec, value_desa)
					});
				},
				beforeSend: function() {
					// $('#totalTenagaPendidik').html('<div id="load" class="loader"></div>');
					// $("#totalTenagaKependidikan").html('<div id="load" class="loader"></div>')
					// $("#totalSiswa").html('<div id="load" class="loader"></div>')
					// $("#totalSaranaPrasarana").html('<div id="load" class="loader"></div>')
					// $("#totalSarana").html('<div id="load" class="loader"></div>')
					// $("#statusAkreditasi").html('<div id="load" class="loader"></div>')

					// $(".ct-chart .sarana").html('<div id="load" class="loader"></div>')
				},
				error: function(jqXHR, textStatus, errorThrown) {
					console.log(textStatus + jqXHR.responseText + " " + errorThrown);
				}
			})
		}

		function getLembaga(kode_kec, kode_desa) {
			$.ajax({
				type: "POST",
				url: "<?php echo base_url() ?>Kelola_gizi/getLembaga",
				dataType: "json",
				data: {
					kode_kec,
					kode_desa,
				},
				success: function(data) {
					console.log(data.lembaga)
					var lembaga = data.lembaga
					$('#lembaga-list').empty()

					$('#lembaga-list').append(`
                                <select id="filter_lembaga" class="lembaga filter" data-size="7" data-style="select-with-transition" data-style="btn btn-link"  tabindex="-98">
                                    <option value="" selected >Semua Lembaga</option>

                                </select>
                            `)
					for (let index = 0; index < lembaga.length; index++) {
						$('.lembaga').append(`
                                    <option value="${lembaga[index].id}">${lembaga[index].nama_lembaga}</option>
                                `)
					}

					$('.lembaga').selectpicker({
						liveSearch: true
					});

					$(".filter").change(function() {
						layout(filterData())
						getData(filterData())
					});

					$("#filter_lembaga").change(function() {
						var value_lembaga = $("#filter_lembaga").val()
						getSiswa(value_lembaga)
					});
				},
				beforeSend: function() {
					// $('#totalTenagaPendidik').html('<div id="load" class="loader"></div>');
					// $("#totalTenagaKependidikan").html('<div id="load" class="loader"></div>')
					// $("#totalSiswa").html('<div id="load" class="loader"></div>')
					// $("#totalSaranaPrasarana").html('<div id="load" class="loader"></div>')
					// $("#totalSarana").html('<div id="load" class="loader"></div>')
					// $("#statusAkreditasi").html('<div id="load" class="loader"></div>')

					// $(".ct-chart .sarana").html('<div id="load" class="loader"></div>')
				},
				error: function(jqXHR, textStatus, errorThrown) {
					console.log(textStatus + jqXHR.responseText + " " + errorThrown);
				}
			})
		}

		function getSiswa(id_lembaga) {
			$.ajax({
				type: "POST",
				url: "<?php echo base_url() ?>Kelola_gizi/getSiswa",
				dataType: "json",
				data: {
					id_lembaga
				},
				success: function(data) {
					console.log(data.siswa)
					var siswa = data.siswa
					$('#siswa-list').empty()

					$('#siswa-list').append(`
                                <select id="filter_siswa" class="siswa filter" data-size="7" data-style="select-with-transition" data-style="btn btn-link"  tabindex="-98">
                                    <option value="" selected >Semua siswa</option>

                                </select>
                            `)
					for (let index = 0; index < siswa.length; index++) {
						$('.siswa').append(`
                                    <option value="${siswa[index].id_siswa}">${siswa[index].nama}</option>
                                `)
					}

					$('.siswa').selectpicker({
						liveSearch: true
					});

					$(".filter").change(function() {
						layout(filterData())
						getData(filterData())
					});
				},
				beforeSend: function() {
					// $('#totalTenagaPendidik').html('<div id="load" class="loader"></div>');
					// $("#totalTenagaKependidikan").html('<div id="load" class="loader"></div>')
					// $("#totalSiswa").html('<div id="load" class="loader"></div>')
					// $("#totalSaranaPrasarana").html('<div id="load" class="loader"></div>')
					// $("#totalSarana").html('<div id="load" class="loader"></div>')
					// $("#statusAkreditasi").html('<div id="load" class="loader"></div>')

					// $(".ct-chart .sarana").html('<div id="load" class="loader"></div>')
				},
				error: function(jqXHR, textStatus, errorThrown) {
					console.log(textStatus + jqXHR.responseText + " " + errorThrown);
				}
			})
		}

		function layout(data) {
			// rincian dan akreditasi
			if (data.lembaga == "") {
				$("#rincian").stop(true, true).removeClass("col-lg-8", 100);
				$("#rincian").stop(true, true).addClass("col-lg-12", 500)
				$("#akreditasi").stop(true, true).removeClass("col-lg-4", 100);
				$("#akreditasi").stop(true, true).addClass("d-none", 500)

				$("#persebaran").stop(true, true).removeClass("d-none", 100);
			} else {
				$("#rincian").stop(true, true).removeClass("col-lg-12", 100);
				$("#rincian").stop(true, true).addClass("col-lg-8", 500);
				$("#akreditasi").stop(true, true).removeClass("d-none", 100);
				$("#akreditasi").stop(true, true).addClass("col-lg-4", 500);

				$("#persebaran").stop(true, true).addClass("d-none", 500)
			}
		}

		// get data dashboard
		function getData(filter) {
			$.ajax({
				type: "POST",
				url: "<?php echo base_url() ?>Kelola_gizi/getData",
				dataType: "json",
				data: {
					id_lembaga: filter.lembaga,
					kode_desa: filter.desa,
					kode_kec: filter.kecamatan,
					id_siswa: filter.siswa,
				},
				success: function(response) {
					console.log(response)
					$("#totalTenagaPendidik").html(response.totalTenagaPendidik)
					$("#totalTenagaKependidikan").html(response.totalTenagaKependidikan)
					$("#totalSiswa").html(response.totalSiswa)
					// $("#totalSaranaPrasarana").html(response.totalSaranaPrasarana ? response.totalSaranaPrasarana : 0)
					$("#statusAkreditasi").html(response.akreditasi ? response.akreditasi : "-")
					$(".ct-chart.sarana").empty()

					var dataDiklat = {
						series: [
							response.totalDiklatDasar ? response.totalDiklatDasar : 0,
							response.totalDiklatLanjut ? response.totalDiklatLanjut : 0,
							response.totalDiklatMahir ? response.totalDiklatMahir : 0,
						],
						total: response.totalSiswa
					}

					chart(dataDiklat, '.ct-chart.diklat')

					//   var dataSarana = {
					//       series: [
					//           response.totalLayakPakai ? response.totalLayakPakai : 0,
					//           response.totalRusak ? response.totalRusak : 0
					//       ]
					//   }
					//   chart(dataSarana, '.ct-chart.sarana')
					new Chartist.Bar('#chartBaru', {
						labels: ['2', '3', '4', '5', '>5'],
						series: response.totalUsiaSiswa
					}, {
						distributeSeries: true,
						axisY: {
							onlyInteger: true
						},
						chartPadding: {
							top: 28,
						},
						plugins: [
							Chartist.plugins.ctBarLabels()
						]
					}).on('draw', function(data) {
						if (data.type === 'bar') {
							data.element.attr({
								style: 'stroke-width: 30px'
							});
						}
					});

					new Chartist.Bar('#chartPrasarana', {
						labels: ['Ruang Kelas', 'Ruang Guru', 'Toilet Siswa', 'Toilet Guru'],
						series: response.totalPrasarana
					}, {
						seriesBarDistance: 30,
						axisY: {
							onlyInteger: true
						},
						chartPadding: {
							top: 28,
						},
						plugins: [
							Chartist.plugins.ctBarLabels()
						]
					}, [
						['screen and (max-width: 640px)', {
							seriesBarDistance: 5,
							axisX: {
								labelInterpolationFnc: function(value) {
									return value[0];
								}
							}
						}]
					]).on('draw', function(data) {
						if (data.type === 'bar') {
							data.element.attr({
								style: 'stroke-width: 30px'
							});

						}
					});
				},
				beforeSend: function() {
					$('#totalTenagaPendidik').html('<div id="load" class="loader"></div>');
					$("#totalTenagaKependidikan").html('<div id="load" class="loader"></div>')
					$("#totalSiswa").html('<div id="load" class="loader"></div>')
					$("#totalSaranaPrasarana").html('<div id="load" class="loader"></div>')
					$("#totalSarana").html('<div id="load" class="loader"></div>')
					$("#statusAkreditasi").html('<div id="load" class="loader"></div>')

					$(".ct-chart .sarana").html('<div id="load" class="loader"></div>')
				},
				error: function(jqXHR, textStatus, errorThrown) {
					console.log(textStatus + jqXHR.responseText + " " + errorThrown);
				}
			});
		}
	});
</script>
