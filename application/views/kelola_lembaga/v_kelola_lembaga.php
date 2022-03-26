      
    <style>
    .text {
        text-align:center;
        font-size:25px;
        margin-top:17%;
    }
    </style>
    <div class="container-fluid">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="d-inline-block align-middle" style="margin-top: 3px;margin-bottom: 0;">Daftar Lembaga</h4>
            </div>
            <div class="card-body">
                <table id="datatable" class="mdl-data-table" style="width:100%">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>NPSN</th>
                            <th>Nama Lembaga</th>
                            <th>Alamat Lembaga</th>
                            <th>Pengelompokan</th>
                            <th>Tahun Berdiri</th>
                            <th>Kepala Sekolah</th>
                            <th>Akreditasi</th>
                            <th>Username</th>
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
                    type:"POST",
                    dataSrc: data,
                    // dataSrc: function(data){
                    //     console.log(data)
                    // },
                    error: function (xhr, error, thrown) {
                        console.log(xhr);
                    },
                },
                "columns": [
                    {data : 0, "orderable": "false"},
                    {data : 1, name: 'tbl_lembaga.npsn'},
                    {data : 2, name: 'tbl_lembaga.nama_lembaga'},
                    {data : 3, name: 'tbl_lembaga.alamat_lembaga'},
                    {data : 4, name: 'tbl_lembaga.pengelompokkan'},
                    {data : 5, name: 'tbl_lembaga.tahun_berdiri'},
                    {data : 6, name: 'tbl_lembaga.kepala_sekolah'},
                    {data : 7, name: 'tbl_lembaga.status_akreditasi'},
                    {data : 8, name: 'tbl_users.username'},
                    {data : 9, "orderable": "false"}
                ],
                autoWidth: false,
                columnDefs: [
                    {
                        targets: ['_all'],
                        className: 'mdc-data-table__cell'
                    }
                ],
                "fnInitComplete": function () {
                    //$('.dataTables_scrollBody').perfectScrollbar();
                    const ps = new PerfectScrollbar('.dataTables_scrollBody',
                            {
                                wheelSpeed: 0.4
                            }
                    );
                },
                //on paginition page 2,3.. often scroll shown, so reset it and assign it again
                "fnDrawCallback": function (oSettings) {
                    //$('.dataTables_scrollBody').perfectScrollbar('destroy').perfectScrollbar();
                    //ps.update();
                    // const ps = new PerfectScrollbar('.dataTables_scrollBody');
                }

            });

            setInterval(() => {
                data.ajax.reload(null,false);
                // data.ajax.reload();
            }, 1000);

        });
    </script>