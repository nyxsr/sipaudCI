
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

.list>.dropdown{
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
<button class="btn btn-sm btn-success modalButton" data-toggle="modal" data-target="#modal" data-type="tambah">Tambah</button>
<div class="col-md-12">
    <div class="card">
        <div class="card-header card-header-primary">
            <div class="d-inline-flex">
                <h4 class="d-inline-block align-middle" style="margin-top: 0;margin-bottom: 0;padding: 0.375rem 0.75rem;">Daftar Prasarana</h4>
            </div>
            <div class="cold-md-4 align-middle <?= ($this->session->userdata('role') == "operator") ? "d-none" : "d-inline-flex" ?>" style="float:right;">
                <div id="external_filter_container_12" style="width:100% !important;">
                </div>
            </div>
        </div>
        <div class="card-body">
            <table id="datatable" class="mdl-data-table" style="width:100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Ruang Kepala Sekolah</th>
                        <th>Internet</th>
                        <th>Listrik</th>
                        <th>RK Baik</th>
                        <th>RK Rusak</th>
                        <th>RG Baik</th>
                        <th>RG Rusak</th>
                        <th>TS Baik</th>
                        <th>TS Rusak</th>
                        <th>TG Baik</th>
                        <th>TG Rusak</th>
                        <th>Nama Lembaga</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        var lembaga = [];
        $.get( "<?php echo base_url('kelola_prasarana/getLembaga'); ?>",
         function( responseFetch ) {
            var responseData = JSON.parse(responseFetch);
            for (let i = 0; i < responseData.length; i++) {
                lembaga.push(responseData[i].nama_lembaga);
            }

            console.log(lembaga);
        });

        var data = $("#datatable").DataTable({
            "scrollX": true,
            ordering: true,
            processing: false,
            serverSide: true,
            ajax: {
                url: "<?php echo base_url('Kelola_prasarana/datatable'); ?>",
                type:"POST",
                dataSrc: data,
                // dataSrc: function(data){
                //     console.log(data)
                // },
                dataFilter: function ( response ) {
                    var data = JSON.parse(response);
                    data.yadcf_data_12 = lembaga;
                    return JSON.stringify(data);
                }, 
                error: function (xhr, error, thrown) {
                    console.log(xhr);
                },
            },
            "columns": [
                {data : 0, "orderable": "false"},
                {data : 1, name: 'tbl_prasarana.Ruang_Kepala_Sekolah'},
                {data : 2, name: 'tbl_prasarana.Internet'},
                {data : 3, name: 'tbl_prasarana.Listrik'},
                {data : 4, name: 'tbl_prasarana.RK_Baik'},
                {data : 5, name: 'tbl_prasarana.RK_Rusak'},
                {data : 6, name: 'tbl_prasarana.RG_Baik'},
                {data : 7, name: 'tbl_prasarana.RG_Rusak'},
                {data : 8, name: 'tbl_prasarana.TS_Baik'},     
                {data : 9, name: 'tbl_prasarana.TS_Rusak'}, 
                {data : 10, name: 'tbl_prasarana.TG_Baik'},
                {data : 11, name: 'tbl_prasarana.TG_Rusak'},                
                {data : 12, name: 'tbl_lembaga.nama_lembaga'},
                {data : 13, "orderable": "false"},

                ],
            // "stateSave":  true,
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
            "fnDrawCal lback": function (oSettings) {
                //$('.dataTables_scrollBody').perfectScrollbar('destroy').perfectScrollbar();
                //ps.update();
                // const ps = new PerfectScrollbar('.dataTables_scrollBody');
            }

        });

        yadcf.init(data, [
            {
                column_number: 12,
                select_type: 'select',
                filter_container_id: 'external_filter_container_12',
                filter_default_label: "Pilih Lembaga"
            }
        ]);

        setInterval(() => {
            data.ajax.reload(null,false);
            // data.ajax.reload();
        }, 1000);

    });

    //Modal Open
    $(document).on("click",".modalButton",function(){
        var jenis = $(this).attr('data-type');
        if(jenis == "tambah"){
            $("#modal-content").load("<?= base_url('kelola_prasarana/modalTambah') ?>")
        }else{
            var id = $(this).attr('data-id');
            $("#modal-content").load("<?= base_url('kelola_prasarana/modalEdit') ?>",{id:id})
        }
    });


    function notifikasi(type, pesan, letak, posisi, icon, element, url) {
            // md.showNotification("top","center","tes")
            // icon: 'check_circle_outline',
            if (element == "") {
                element = "body";
            }
            $.notify({
                // options
                icon: icon,
                // title: 'Bootstrap notify',
                message: pesan,
                url: url,
                target: ''
            }, {
                // settings
                element: element,
                position: null,
                type: type,
                allow_dismiss: true,
                newest_on_top: false,
                showProgressbar: false,
                placement: {
                    from: letak,
                    align: posisi
                },
                offset: 20,
                spacing: 10,
                z_index: 1031,
                delay: 4000,
                timer: 100,
                url_target: '_blank',
                mouse_over: null,
                animate: {
                    enter: 'animated fadeInDown',
                    exit: 'animated fadeOutUp'
                },
                onShow: null,
                onShown: null,
                onClose: null,
                onClosed: null,
                icon_type: 'class',
                template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0}" role="alert" >' +
                    '<button type="button" aria-hidden="true" class="close" data-notify="dismiss"><i class="material-icons">close</i></button>' +
                    '<i class="material-icons" data-notify="icon"></i> ' +
                    // '<span data-notify="title">{1}</span> ' +
                    '<span data-notify="message">{2}</span>' +
                    '<div class="progress" data-notify="progressbar">' +
                    '<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
                    '</div>' +
                    '<a href="{3}" target="{4}" data-notify="url"></a>' +
                    '</div>'
            });
        }

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
            // console.log(result);
            if (result.isConfirmed) {
                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url() ?>Kelola_prasarana/delete",
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

</script>
