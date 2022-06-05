      <style>
      	.dashboard .card .card-header {
      		z-index: 2 !important
      	}

      	.vertical-alignment-helper {
      		display: table;
      		height: 100%;
      		width: 100%;
      		pointer-events: none;
      	}

      	.vertical-align-center {
      		/* To center vertically */
      		display: table-cell;
      		vertical-align: middle;
      		pointer-events: none;
      	}

      	.modal-content {
      		/* Bootstrap sets the size of the modal in the modal-dialog class, we need to inherit it */
      		width: inherit;
      		max-width: inherit;
      		/* For Bootstrap 4 - to avoid the modal window stretching 
    full width */
      		height: inherit;
      		/* To center horizontally */
      		margin: 0 auto;
      		pointer-events: all;
      	}


      	/* Change Autocomplete styles in Chrome*/
      	input:-webkit-autofill,
      	input:-webkit-autofill:hover,
      	input:-webkit-autofill:focus input:-webkit-autofill,
      	textarea:-webkit-autofill,
      	textarea:-webkit-autofill:hover textarea:-webkit-autofill:focus,
      	select:-webkit-autofill,
      	select:-webkit-autofill:hover,
      	select:-webkit-autofill:focus {
      		border-bottom: 1px solid #d2d2d2 !important;
      		-webkit-text-fill-color: #707173 !important;
      		-webkit-box-shadow: 0 0 0px 100px transparent inset !important;
      		transition: background-color 5000s ease-in-out 0s !important;
      		background-color: transparent !important;
      	}


      	input:-webkit-autofill:hover,
      	input:-webkit-autofill:focus,
      	textarea:-webkit-autofill:hover,
      	textarea:-webkit-autofill:focus,
      	select:-webkit-autofill:hover,
      	select:-webkit-autofill:focus {
      		transition: border-bottom 1s ease 0s !important,
      			background-color 5000s ease-in-out 0s !important;
      		border-bottom: 2px solid #8e24aa !important;
      		-webkit-text-fill-color: #707173 !important;
      		-webkit-box-shadow: 0 0 0px 100px transparent inset !important;
      		background-color: transparent !important;
      	}

      	#tambah input:-webkit-autofill:hover,
      	#tambah input:-webkit-autofill:focus,
      	#tambah textarea:-webkit-autofill:hover,
      	#tambah textarea:-webkit-autofill:focus,
      	#tambah select:-webkit-autofill:hover,
      	#tambah select:-webkit-autofill:focus,
      	#edit input:-webkit-autofill:hover,
      	#edit input:-webkit-autofill:focus,
      	#edit textarea:-webkit-autofill:hover,
      	#edit textarea:-webkit-autofill:focus,
      	#edit select:-webkit-autofill:hover,
      	#edit select:-webkit-autofill:focus {
      		transition: border-bottom 1s ease 0s !important,
      			background-color 5000s ease-in-out 0s !important;
      		border-bottom: 2px solid #04afc4 !important;
      		-webkit-text-fill-color: #707173 !important;
      		-webkit-box-shadow: 0 0 0px 100px transparent inset !important;
      		background-color: transparent !important;
      	}

      	#dropdown_entry>.dropdown {
      		width: 100px !important;
      	}

      	.list>.dropdown {
      		width: 100% !important;
      		top: -11.5px;
      	}

      	.list>.btn {
      		margin: 0px;
      	}

      	.card-stats .card-header.card-header-icon i {
      		font-size: 20px;
      		line-height: 30px;
      		width: 30px;
      		height: 30px;
      		text-align: center;
      	}

      	.akreditasi {
      		font-size: 6rem;
      		font-weight: 800;
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
      		background-color: #ff9800;
      	}

      	.dropdown_filter .bootstrap-select .btn.dropdown-toggle.select-with-transition {
      		background-image: linear-gradient(0deg, #ff9800 2px, rgba(244, 67, 54, 0) 0), linear-gradient(0deg, #d2d2d2 1px, hsla(0, 0%, 82%, 0) 0) !important;
      	}

      	.dropdown_filter .bootstrap-select>.dropdown-toggle.bs-placeholder {
      		color: #ffff;
      	}

      	.row {
      		display: flex;
      		flex-wrap: wrap;
      		margin-right: 0;
      		margin-left: 0;
      	}

      	.ct-chart .ct-series-a .ct-area,
      	.ct-chart .ct-series-a .ct-slice-donut-solid,
      	.ct-chart .ct-series-a .ct-slice-pie {
      		fill: #64B467;
      	}

      	.ct-chart .ct-series-b .ct-area,
      	.ct-chart .ct-series-b .ct-slice-donut-solid,
      	.ct-chart .ct-series-b .ct-slice-pie {
      		fill: #EA4642;
      	}

      	.ct-chart .ct-series-c .ct-area,
      	.ct-chart .ct-series-c .ct-slice-donut-solid,
      	.ct-chart .ct-series-c .ct-slice-pie {
      		fill: #FE9C17;
      	}

      	.ct-chart .ct-series-a .ct-area,
      	.ct-chart .ct-series-a .ct-bar,
      	.ct-chart .ct-series-a .ct-line,
      	.ct-chart .ct-series-a .ct-point,
      	.ct-chart .ct-series-a .ct-slice-donut,
      	.ct-chart .ct-series-a .ct-slice-donut-solid,
      	.ct-chart .ct-series-a .ct-slice-pie {
      		stroke: #64B467;
      	}

      	.ct-chart .ct-series-b .ct-area,
      	.ct-chart .ct-series-b .ct-bar,
      	.ct-chart .ct-series-b .ct-line,
      	.ct-chart .ct-series-b .ct-point,
      	.ct-chart .ct-series-b .ct-slice-donut,
      	.ct-chart .ct-series-b .ct-slice-donut-solid,
      	.ct-chart .ct-series-b .ct-slice-pie {
      		stroke: #EA4642;
      	}

      	.ct-chart .ct-series-c .ct-area,
      	.ct-chart .ct-series-c .ct-bar,
      	.ct-chart .ct-series-c .ct-line,
      	.ct-chart .ct-series-c .ct-point,
      	.ct-chart .ct-series-c .ct-slice-donut,
      	.ct-chart .ct-series-c .ct-slice-donut-solid,
      	.ct-chart .ct-series-c .ct-slice-pie {
      		stroke: #FE9C17;
      	}

      	.ct-chart .ct-series-d .ct-area,
      	.ct-chart .ct-series-d .ct-bar,
      	.ct-chart .ct-series-d .ct-line,
      	.ct-chart .ct-series-d .ct-point,
      	.ct-chart .ct-series-d .ct-slice-donut,
      	.ct-chart .ct-series-d .ct-slice-donut-solid,
      	.ct-chart .ct-series-d .ct-slice-pie {
      		stroke: #17fe55;
      	}

      	.ct-chart .ct-series-e .ct-area,
      	.ct-chart .ct-series-e .ct-bar,
      	.ct-chart .ct-series-e .ct-line,
      	.ct-chart .ct-series-e .ct-point,
      	.ct-chart .ct-series-e .ct-slice-donut,
      	.ct-chart .ct-series-e .ct-slice-donut-solid,
      	.ct-chart .ct-series-e .ct-slice-pie {
      		stroke: #1752fe;
      	}

      	.ct-chart .ct-chart-pie .ct-label {
      		font-size: 1.6rem;
      		font-weight: 500;
      	}

      	.ct-chart {
      		margin: auto;
      		width: 300px;
      		height: 300px;
      	}

      	.ct-chart .ct-chart-bar .ct-label {
      		fill: rgba(0, 0, 0, .4);
      		color: rgba(0, 0, 0, .4);
      		display: flex;
      		justify-content: center;
      	}


      	.a {
      		background: #64B467 !important;
      	}

      	.label-a {
      		color: #64B467 !important;
      	}

      	.b {
      		background: #EA4642 !important;
      	}

      	.label-b {
      		color: #EA4642 !important;
      	}

      	.c {
      		background: #FE9C17 !important;
      	}

      	.label-c {
      		color: #FE9C17 !important;
      	}
      </style>

      <div class="container-fluid">
      	<div class="col-md-12">
      		<div class="card">
      			<div class="card-header card-header-primary">
      				<div class="d-inline-flex">
      					<h4 class="d-inline-block align-middle" style="margin-top: 0;margin-bottom: 0;padding: 0.375rem 0.75rem;">Laporan</h4>
      				</div>
      				<div class="cold-md-4 align-middle d-inline-flex" style="float:right;margin-top:5px">
      					<div id="lembaga-list" class="dropdown_filter dropdown bootstrap-select <?= ($this->session->userdata("role") == 'operator') ? 'd-none' : '' ?>" style="width:100% !important;">
      						<select id="filter_lembaga" class="lembaga filter" data-size="7" data-style="btn btn-sm btn-warning d-inline-block" tabindex="-98">
      							<option value="" <?= ($this->session->userdata("role") == "operator") ? "" : "selected" ?>>Semua Lembaga</option>
      							<?php foreach ($lembaga as $d) : ?>
      								<option value="<?= $d['id'] ?>" <?= ($this->session->userdata("role") == "operator" && $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))) == $d['id']) ? "selected" : "" ?>><?= $d['nama_lembaga'] ?></option>
      							<?php endforeach; ?>
      						</select>
      					</div>
      				</div>

      				<div class="cold-md-4 mr-3 align-middle d-inline-flex" style="float:right;margin-top:5px">
      					<div id="desa-list" class="dropdown_filter dropdown bootstrap-select <?= ($this->session->userdata("role") == 'operator') ? 'd-none' : '' ?>" style="width:100% !important;">
      						<select id="filter_desa" class="desa filter" data-size="7" data-style="btn btn-sm btn-success d-inline-block" tabindex="-98">
      							<option value="" <?= ($this->session->userdata("role") == "operator") ? "" : "selected" ?>>Semua Desa</option>
      							<?php foreach ($desa as $dataDesa) : ?>
      								<!-- <option value="<?= $dataDesa['kode_desa'] ?>" <?= ($this->session->userdata("role") == "operator" && $this->encryption->decrypt(base64_decode($this->session->userdata("kode_desa"))) == $dataDesa['kode_desa']) ? "selected" : "" ?>> <?= $dataDesa['desa'] ?></option> -->
      							<?php endforeach; ?>
      						</select>
      					</div>
      				</div>

      				<div class="cold-md-4 mr-3 align-middle d-inline-flex" style="float:right;margin-top:5px">
      					<div id="kecamatan-list" class="dropdown_filter dropdown bootstrap-select <?= ($this->session->userdata("role") == 'operator') ? 'd-none' : '' ?>" style="width:100% !important;">
      						<select id="filter_kecamatan" class="kecamatan filter" data-size="7" data-style="btn btn-sm btn-info d-inline-block" tabindex="-98">
      							<option value="" <?= ($this->session->userdata("role") == "operator") ? "" : "selected" ?>>Semua Kecamatan</option>
      							<?php foreach ($kecamatan as $dataKecamatan) : ?>
      								<option value="<?= $dataKecamatan['kode_kec'] ?>" <?= ($this->session->userdata("role") == "operator" && $this->encryption->decrypt(base64_decode($this->session->userdata("kode_kec"))) == $dataKecamatan['kode_kec']) ? "selected" : "" ?>> <?= $dataKecamatan['kecamatan'] ?></option>
      							<?php endforeach; ?>
      						</select>
      					</div>
      				</div>
      			</div>
      			<div class="card-body row dashboard">

				  <div class="col-lg-12 row">
      					<div class="card">
      						<div class="card-body" style="margin-top:6px;">
      							<h3 class="text-center">Kesehatan</h3>
      							<div class="row">
								  <div class="col-lg-6 col-md-12">
									<div class="card card-stats">
										<div class="card-header card-header-success card-header-icon">
											<div class="card-icon">
												<i class="material-icons">insert_emoticon</i>
											</div>
											<p class="card-category">Normal</p>
											<h3 class="card-title" id="totalTenagaPendidik"><?= $jmlNormal?>
											</h3>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-12">
									<div class="card card-stats">
										<div class="card-header card-header-default card-header-icon">
											<div class="card-icon">
												<i class="material-icons">sentiment_satisfied</i>
											</div>
											<p class="card-category">Kurus</p>
											<h3 class="card-title" id="totalTenagaKependidikan"><?= $jmlKurus?></h3>
										</div>
									</div>
								</div>
      							</div>
								  <div class="row">
								  <div class="col-lg-6 col-md-12">
									<div class="card card-stats">
										<div class="card-header card-header-primary card-header-icon">
											<div class="card-icon">
												<i class="material-icons">sentiment_dissatisfied</i>
											</div>
											<p class="card-category">Pra-Obesitas</p>
											<h3 class="card-title" id="totalTenagaPendidik"><?= $jmlPra?>
											</h3>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-12">
									<div class="card card-stats">
										<div class="card-header card-header-danger card-header-icon">
											<div class="card-icon">
												<i class="material-icons">mood_bad</i>
											</div>
											<p class="card-category">Obesitas</p>
											<h3 class="card-title" id="totalTenagaKependidikan"><?= $jmlObesitas?></h3>
										</div>
									</div>
								</div>
								  </div>
      						</div>
      					</div>
      				</div>

      				<div class="row" id="rincian">
      					<div class="col-lg-6 col-md-12">
      						<div class="card card-stats">
      							<div class="card-header card-header-warning card-header-icon">
      								<div class="card-icon">
      									<i class="material-icons">hail</i>
      								</div>
      								<p class="card-category">Tenaga Pendidik</p>
      								<h3 class="card-title" id="totalTenagaPendidik">0
      								</h3>
      							</div>
      						</div>
      					</div>
      					<div class="col-lg-6 col-md-12">
      						<div class="card card-stats">
      							<div class="card-header card-header-success card-header-icon">
      								<div class="card-icon">
      									<i class="material-icons">supervised_user_circle</i>
      								</div>
      								<p class="card-category">Tenaga Kependidikan</p>
      								<h3 class="card-title" id="totalTenagaKependidikan">0</h3>
      							</div>
      						</div>
      					</div>
      					<div class="col-lg-12 col-md-12">
      						<div class="card card-stats">
      							<div class="card-header card-header-danger card-header-icon">
      								<div class="card-icon">
      									<i class="material-icons">people_alt</i>
      								</div>
      								<p class="card-category">Siswa</p>
      								<h3 class="card-title" id="totalSiswa">0</h3>
      							</div>
      						</div>
      					</div>
      				</div>

      				<div class="row" id="akreditasi">
      					<div class="card">
      						<div class="card-header card-header-primary">
      							<h4 class="card-title text-center">Akreditasi</h4>
      						</div>
      						<div class="card-body text-center" style="margin-top:6px;">
      							<h1 class="akreditasi" id="statusAkreditasi">A</h1>
      						</div>
      					</div>
      				</div>
      				<div class="col-lg-12 row">
      					<div class="card">
      						<div class="card-body" style="margin-top:6px;">
      							<h3 class="text-center">Tenaga Pendidik</h3>
      							<div class="row">
      								<div class="col-lg-6">
      									<div class="ct-chart diklat"></div>
      								</div>
      								<div class="col-lg-6 d-flex">
      									<div class="row chart" style="margin-top:18px;">
      										<div class="col-lg-12">
      											<button id="a" class="btn a"></button>
      											<label for="a" class="label-a">
      												Diklat Dasar
      											</label>
      										</div>
      										<div class="col-lg-12">
      											<button id="b" class="btn b"></button>
      											<label for="b" class="label-b">
      												Diklat Lanjut
      											</label>
      										</div>
      										<div class="col-lg-12">
      											<button id="c" class="btn c"></button>
      											<label for="c" class="label-c">
      												Diklat Mahir
      											</label>
      										</div>
      									</div>
      								</div>
      							</div>
      						</div>
      					</div>
      				</div>
      				<div class="col-lg-12 row d-none">
      					<div class="card">
      						<div class="card-body" style="margin-top:6px;">
      							<h3 class="text-center">Sarana</h3>
      							<div class="row">
      								<div class="col-lg-6">
      									<div class="ct-chart sarana"></div>
      								</div>
      								<div class="col-lg-6 d-flex">
      									<div class="row chart" style="margin-top:18px;">
      										<div class="col-lg-12">
      											<button id="a" class="btn a"></button>
      											<label for="a" class="label-a">
      												Layak Pakai
      											</label>
      										</div>
      										<div class="col-lg-12">
      											<button id="b" class="btn b"></button>
      											<label for="b" class="label-b">
      												Rusak
      											</label>
      										</div>
      									</div>
      								</div>
      							</div>
      						</div>
      					</div>
      				</div>
      				<div class="col-lg-12 row d-none">
      					<div class="card">
      						<div class="card-body" style="margin-top:6px;">
      							<h3 class="text-center">Sarana</h3>
      							<div class="row">
      								<div class="col-lg-6">
      									<div class="ct-chart sarana"></div>
      								</div>
      							</div>
      						</div>
      					</div>
      				</div>
      				<div class="col-lg-12 row">
      					<div class="card">
      						<div class="card-body" style="margin-top:6px;">
      							<h3 class="text-center">Usia</h3>
      							<div class="row">
      								<div class="ct-chart col-lg-12" id="chartBaru"></div>
      							</div>
      						</div>
      					</div>
      				</div>
      				<div class="col-lg-12 row">
      					<div class="card">
      						<div class="card-body" style="margin-top:6px;">
      							<h3 class="text-center">Prasarana</h3>
      							<div class="row">
      								<div class="ct-chart col-lg-12" id="chartPrasarana"></div>
      								<div>
      									<div class="row chart" style="margin-top:18px;">
      										<div class="col-lg-12">
      											<button id="a" class="btn a"></button>
      											<label for="a" class="label-a">
      												Baik
      											</label>
      										</div>
      										<div class="col-lg-12">
      											<button id="b" class="btn b"></button>
      											<label for="b" class="label-b">
      												Rusak
      											</label>
      										</div>
      									</div>
      								</div>
      							</div>
      						</div>
      					</div>
      				</div>


      			</div>
      		</div>
      	</div>
      	<script>
      		$(document).ready(function() {
      			// initialization chart
      			var dataDiklat = {
      				series: [0, 0, 0]
      			};
      			$('.kecamatan').selectpicker({
      				liveSearch: true
      			});
      			$('.desa').selectpicker({
      				liveSearch: true
      			});
      			$('.lembaga').selectpicker({
      				liveSearch: true
      			});

      			//   var dataSarana = {
      			//       series: [0, 0]
      			//   };

      			chart(dataDiklat, '.ct-chart.diklat');
      			//   chart(dataSarana, '.ct-chart.sarana');

      			function chart(data, element) {
      				var sum = function(a, b) {
      					return Number.parseInt(a) + Number.parseInt(b)
      				};
      				new Chartist.Pie(element, data, {
      					labelInterpolationFnc: function(value) {
      						return Math.round(value / data.total * 100) + '%';
      					},
      					option: {
      						responsive: true,
      						maintainAspectRatio: false,
      					}
      				});
      			}

      			function filterData() {
      				return {
      					lembaga: $("#filter_lembaga").val(),
      					desa: $("#filter_desa").val(),
      					kecamatan: $("#filter_kecamatan").val(),
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
      					url: "<?php echo base_url() ?>dashboard/getDesa",
      					dataType: "json",
      					data: {
      						kode_kec,
      					},
      					success: function(data) {
      						var desa = data.desa
      						$('#desa-list').empty()

      						$('#desa-list').append(`
                                <select id="filter_desa" class="desa filter" data-size="7" data-style="btn btn-sm btn-success d-inline-block" tabindex="-98">
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
      					url: "<?php echo base_url() ?>dashboard/getLembaga",
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
                                <select id="filter_lembaga" class="lembaga filter" data-size="7" data-style="btn btn-sm btn-warning d-inline-block" tabindex="-98">
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
      					url: "<?php echo base_url() ?>dashboard/getData",
      					dataType: "json",
      					data: {
      						id_lembaga: filter.lembaga,
      						kode_desa: filter.desa,
      						kode_kec: filter.kecamatan,
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
