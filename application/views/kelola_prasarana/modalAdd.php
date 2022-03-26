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
    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
            class="sr-only">Close</span></button>
    <h4 class="modal-title" id="myModalLabel">Input Data Prasarana </h4>
</div>
<div class="modal-body">
    <div>
        <form method="POST" id="addForm" action="javascript:void(0);">
            <div class="row mb-1" style="padding-bottom: 0px;">
                <div class="list col-md-12 dropdown bootstrap-select dropdown" style="width=100% !important;">
                    <label for="nama_lembaga" style="font-size:.6875rem;margin-bottom:0px;"
                        class="bmd-label-static">Nama
                        Lembaga</label>
                    <select name="nama_lembaga" class="selectpicker" data-style="select-with-transition"
                        title="Pilih Lembaga" data-size="7" tabindex="-98" <?=($this->session->userdata('role')
                        == "operator") ? "disabled" : "" ?>>
                        <?php 
                                            foreach ($data as $index => $d) :
                                        ?>
                        <option value="<?= $d['id'] ?>" <?=($this->
                            session->userdata('role') == "operator") ?
                            (($this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga")))
                            == $d['id']) ? "selected" : "") :
                            (($index == 0) ? "selected" : ""); ?>>
                            <?= $d['nama_lembaga']?>
                        </option>
                        <?php
                                 endforeach;
                                ?>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 ">
                    <h6 class="card-title">Ruang Kepala Sekolah</h6>
                    <div style="margin-top:6px;">
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="Tersedia_Kepsek"
                                name="Ruang_Kepala_Sekolah" value="Tersedia" checked>
                            <label class="custom-control-label" for="Tersedia_Kepsek">Tersedia</label>
                        </div>
                        <br>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="Tidak_Tersedia_Kepsek"
                                name="Ruang_Kepala_Sekolah" value="Tidak Tersedia">
                            <label class="custom-control-label" for="Tidak_Tersedia_Kepsek">Tidak
                                Tersedia</label>
                        </div>
                    </div>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="col-md-12 ">
                    <h6>Internet</h6>
                    <div style="margin-top:6px;">
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="Tersedia_Internet" name="Internet"
                                value="Tersedia" checked>
                            <label class="custom-control-label" for="Tersedia_Internet">Tersedia</label>
                        </div>
                        <br>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="Tidak_Tersedia_Internet"
                                name="Internet" value="Tidak Tersedia">
                            <label class="custom-control-label" for="Tidak_Tersedia_Internet">Tidak
                                Tersedia</label>
                        </div>
                    </div>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="col-md-12 ">
                    <h6>Listrik</h6>
                    <div style="margin-top:6px;">
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="Tersedia_Listrik" name="Listrik"
                                value="Tersedia" checked>
                            <label class="custom-control-label" for="Tersedia_Listrik">Tersedia</label>
                        </div>
                        <br>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="Tidak_Tersedia_Listrik"
                                name="Listrik" value="Tidak Tersedia">
                            <label class="custom-control-label" for="Tidak_Tersedia_Listrik">Tidak
                                Tersedia</label>
                        </div>
                    </div>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="col-md-12 ">
                    <h6> Jumlah Ruang Kelas</h6>

                    <div style="margin-top:6px;">

                        <label for="RK_Baik">RK Baik :</label>
                        <Input type="number" class="form-control" requred name="RK_Baik">
                        <br>
                        <label for="RK_Rusak">RK Rusak :</label>
                        <Input type="number" class="form-control" requred name="RK_Rusak">
                    </div>
                </div>
            </div>
            <br>


            <div class="row">
                <div class="col-md-12 ">
                    <h6>Jumlah Ruang Guru</h6>

                    <div style="margin-top:6px;">

                        <label for="RG_Baik">RG Baik :</label>
                        <Input type="number" class="form-control" requred name="RG_Baik">
                        <br>
                        <label for="RG_Rusak">RG Rusak :</label>
                        <Input type="number" class="form-control" requred name="RG_Rusak">
                    </div>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="col-md-12 ">
                    <h6>Jumlah Toilet Siswa</h6>
                    <div style="margin-top:6px;">
                        <label for="TS_Baik">TS Baik :</label>
                        <Input type="number" class="form-control" requred name="TS_Baik">
                        <br>
                        <label for="TS_Rusak">TS Rusak :</label>
                        <Input type="number" class="form-control" requred name="TS_Rusak">
                    </div>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="col-md-12 ">
                    <h6>Jumlah Toilet Guru</h6>
                    <div style="margin-top:6px;">
                        <label for="TG_Baik">TG Baik :</label>
                        <Input type="number" class="form-control" requred name="TG_Baik">
                        <br>
                        <label for="TG_Rusak">TG Rusak :</label>
                        <Input type="number" class="form-control" requred name="TG_Rusak">
                    </div>
                </div>
            </div>

            <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Batal</button>
            <button class="btn btn-info pull-right" id="btn_simpan" name="btn_simpan">Simpan</button>
            <div class="clearfix"></div>
        </form>
    </div>
</div>

<!-- <div class="modal-footer">
...
</div> -->

<script>
    $(document).ready(function () {
        $('.selectpicker').selectpicker();


        $('#tanggal_lahir').datetimepicker({
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

        $('input[name="tahun"]').datetimepicker({
            format: 'YYYY',
            viewMode: "years",
            icons: {
                time: 'fa fa-clock-o',
                date: 'fa fa-calendar',
                up: 'fa fa-plus',
                down: 'fa fa-minus',
                previous: 'fa fa-chevron-left',
                next: 'fa fa-chevron-right'
            },
        });

        $('input[name="tahun"]').on("dp.show", function (e) {
            $(e.target).data("DateTimePicker").viewMode("months");
        });
    });


    $('[name="btn_simpan"]').on('click', function () {
        var Ruang_Kepala_Sekolah = $('[name="Ruang_Kepala_Sekolah"]:checked').val();
        var Internet = $('[name="Internet"]:checked').val();
        var Listrik = $(' [name="Listrik"]:checked').val();
        var RK_Baik = $('[name="RK_Baik"]').val();
        var RK_Rusak = $(' [name="RK_Rusak"]').val();
        var RG_Baik = $('[name="RG_Baik"]').val();
        var RG_Rusak = $(' [name="RG_Rusak"]').val();
        var TS_Baik = $('[name="TS_Baik"]').val();
        var TS_Rusak = $(' [name="TS_Rusak"]').val();
        var TG_Baik = $('[name="TG_Baik"]').val();
        var TG_Rusak = $(' [name="TG_Rusak"]').val();
        var nama_lembaga = $(' [name="nama_lembaga"]').val();
        var dataIsian = {
            Ruang_Kepala_Sekolah,
            Internet,
            Listrik,
            RK_Baik,
            RK_Rusak,
            RG_Baik,
            RG_Rusak,
            TS_Baik,
            TS_Rusak,
            TG_Baik,
            TG_Rusak,
            nama_lembaga
        }
        console.log(dataIsian)
        if (
            Ruang_Kepala_Sekolah !== "" &&
            Internet !== "" &&
            Listrik !== "" &&
            RK_Baik !== "" &&
            RK_Rusak !== "" &&
            RG_Baik !== "" &&
            RG_Rusak !== "" &&
            TS_Baik !== "" &&
            TS_Rusak !== "" &&
            TG_Baik !== "" &&
            TG_Rusak !== "" &&
            nama_lembaga !== ""
        ) {

            $.ajax({
                type: "POST",
                url: "<?php echo base_url() ?>kelola_prasarana/add",
                dataType: "json",
                data: {
                    Ruang_Kepala_Sekolah: Ruang_Kepala_Sekolah,
                    Internet: Internet,
                    Listrik: Listrik,
                    RK_Baik: RK_Baik,
                    RK_Rusak: RK_Rusak,
                    RG_Baik: RG_Baik,
                    RG_Rusak: RG_Rusak,
                    TS_Baik: TS_Baik,
                    TS_Rusak: TS_Rusak,
                    TG_Baik: TG_Baik,
                    TG_Rusak: TG_Rusak,
                    nama_lembaga: nama_lembaga,
                },
                success: function (data) {
                    console.log(data)
                    $('#modal').modal('hide');
                    Swal.fire(
                        'Berhasil!',
                        'Data telah ditambah.',
                        'success'
                    );
                    datatable.ajax.reload(null, false);

                },
                error: function (jqXHR, textStatus, errorThrown) {
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