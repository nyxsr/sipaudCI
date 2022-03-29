      <style>
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
      </style>


      <!-- Modal-->
      <div class="modal fade ps-bar" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      	<div class="vertical-alignment-helper">
      		<div class="modal-dialog vertical-align-center">
      			<div class="modal-content" id="modal-content">

      			</div>
      		</div>
      	</div>
      	<div class="col-md-12" id="informasi">
      	</div>
      </div>

      <div class="container-fluid">
		<!-- tambah data -->
      	<button class="btn btn-sm btn-success modalButton" data-toggle="modal" data-target="#modal" data-type="tambah">Tambah</button>
      	<!-- cetak data -->
		  <!-- <button class="btn btn-sm btn-Primary modalButton" data-toggle="modal" data-target="#modal" data-type="cetak">Cetak</button> -->
      	<div class="col-md-12">
      		<div class="card">
      			<div class="card-header card-header-primary">
      				<div class="d-inline-flex">
      					<h4 class="d-inline-block align-middle" style="margin-top: 0;margin-bottom: 0;padding: 0.375rem 0.75rem;">Daftar Gizi Anak</h4>
      				</div>
      				<div class="cold-md-4 align-middle <?= ($this->session->userdata('role') == "operator") ? "d-none" : "d-inline-flex" ?>" style="float:right;">
      					<div id="external_filter_container_8" style="width:100% !important;">
      					</div>
      				</div>
      			</div>
      			<div class="card-body">
      				<table id="datatable" class="mdl-data-table" style="width:100%">
      					<thead>
      						<tr>
      							<th>No</th>
      							<th>Nama</th>
      							<th>Tinggi Badan</th>
      							<th>Berat Badan</th>
      							<th>Lingkat Kepala</th>
      							<th>Aksi</th>
      						</tr>
      					</thead>
      				</table>
      			</div>
      		</div>
      	</div>

      	<script>
      		$(document).ready(function() {
      			var data = $("#datatable").DataTable({
      				"scrollX": true,
      				ordering: true,
      				processing: false,
      				serverSide: true,
      				ajax: {
      					url: "<?php echo base_url('Kelola_Lembaga/datatable'); ?>",
      					type: "POST",
      					dataSrc: data,
      					// dataSrc: function(data){
      					//     console.log(data)
      					// },
      					error: function(xhr, error, thrown) {
      						console.log(xhr);
      					},
      				}, 
      				"columns": [{
      						data: 0,
      						"orderable": "false"
      					},
      					{
      						data: 1,
      						name: 'tbl_lembaga.npsn'
      					},
      					{
      						data: 2,
      						name: 'tbl_lembaga.nama_lembaga'
      					},
      					{
      						data: 3,
      						name: 'tbl_lembaga.alamat_lembaga'
      					},
      					{
      						data: 4,
      						name: 'tbl_lembaga.pengelompokkan'
      					},
      					{
      						data: 5,
      						name: 'tbl_lembaga.tahun_berdiri'
      					},
      					{
      						data: 9,
      						"orderable": "false"
      					}
      				],
      				autoWidth: false,
      				columnDefs: [{
      					targets: ['_all'],
      					className: 'mdc-data-table__cell'
      				}],
      				"fnInitComplete": function() {
      					//$('.dataTables_scrollBody').perfectScrollbar();
      					const ps = new PerfectScrollbar('.dataTables_scrollBody', {
      						wheelSpeed: 0.4
      					});
      				},
      				//on paginition page 2,3.. often scroll shown, so reset it and assign it again
      				"fnDrawCallback": function(oSettings) {
      					//$('.dataTables_scrollBody').perfectScrollbar('destroy').perfectScrollbar();
      					//ps.update();
      					// const ps = new PerfectScrollbar('.dataTables_scrollBody');
      				}

      			});

      			// setInterval(() => {
      				data.ajax.reload(null, false);
      			// 	data.ajax.reload();
      			// }, 1000);

      		});

			//Modal Open
			$(document).on("click",".modalButton",function(){
				var jenis = $(this).attr('data-type');
				if(jenis == "tambah"){
					$("#modal-content").load("<?= base_url('kelola_gizi/modalTambah') ?>")
				}
				// elseif{
				// 	jenis == "cetak";
				// 	$("#modal-content").load("<?= base_url('kelola_gizi/modalcetak') ?>",{id:id})
				// }
				else{
					var id = $(this).attr('data-id');
					$("#modal-content").load("<?= base_url('kelola_gizi/modalEdit') ?>",{id:id})
				}
			});
			//end model

			//Hapus
			function hapus(id){
				console.log(id)
				Swal.fire({
					title: 'Hapus data ini?',
					text: "Kamu tidak akan bisa mengembalikannya lagi!",
					icon: 'warning',
					showCancelButton: true,
					confirmButtonColor: '#3085d6',
					confirmButtonText: 'Ya',
					cancelButtonText: 'Batal',
				}).then((result) => {
					if (result.isConfirmed) {
						$.ajax({
							type: "POST",
							url: "<?php echo base_url() ?>kelola_gizi/delete",
							dataType: "json",
							data: {
								id: id
							},
							success: function(data) {
								
								Swal.fire(
									'Dihapus!',
									'Data ini telah dihapus.',
									'success'
								);
								
								datatable.ajax.reload(null,false);
							},
							error: function(jqXHR, textStatus, errorThrown) {
								// $('#msg').show();
								// $("#msg").html(textStatus + jqXHR.responseText + " " + errorThrown);
								console.log(textStatus + jqXHR.responseText + " " + errorThrown);
							}
						});
					}
				});
			}
			//end hapus

      	</script>
