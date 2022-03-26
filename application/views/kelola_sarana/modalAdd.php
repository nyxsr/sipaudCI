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
    <h4 class="modal-title" id="myModalLabel">Input Data Sarana </h4>
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
                    <div class="card-body" style="margin-top:6px;">
                        <form method="POST" id="addForm" action="javascript:void(0);">
                            <div class="row" style="padding-bottom: 0px;">
                                <div class="list col-md-12 dropdown bootstrap-select dropdown" style="width:100% !important;">
                                    <label for="nama_lembaga" style="font-size:.6875rem;margin-bottom:0px;" class="bmd-label-static">Nama Lembaga</label>
                                    <select name="nama_lembaga" class="selectpicker" data-style="select-with-transition" title="Pilih Lembaga" data-size="7" tabindex="-98" <?= ($this->session->userdata('role') == "operator") ? "disabled" : "" ?>>
                                        <?php
                                        foreach ($data as $index => $d) :
                                        ?>
                                            <option value="<?= $d['id'] ?>" <?= ($this->session->userdata('role') == "operator") ?
                                                                                (($this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))) == $d['id']) ? "selected" : "")  : (($index == 0) ? "selected" : ""); ?>>
                                                <?= $d['nama_lembaga'] ?>
                                            </option>
                                        <?php
                                        endforeach;
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <div class="mb-5">
                                <label>Alat Peraga Edukasi Luar</label>
                                <div>
                                    <div class="custom-control custom-checkbox d-block">
                                        <input type="checkbox" class="custom-control-input" id="perosotan" name="APEL_perosotan" />
                                        <label class="custom-control-label" for="perosotan">Perosotan</label>
                                    </div>

                                    <div class="custom-control custom-checkbox d-block">
                                        <input type="checkbox" class="custom-control-input" id="jungkitan" name="APEL_jungkitan" />
                                        <label class="custom-control-label" for="jungkitan">Jungkitan</label>
                                    </div>

                                    <div class="custom-control custom-checkbox d-block">
                                        <input type="checkbox" class="custom-control-input" id="ayunan" name="APEL_ayunan" />
                                        <label class="custom-control-label" for="ayunan">Ayunan</label>
                                    </div>

                                    <div class="custom-control custom-checkbox d-block">
                                        <input type="checkbox" class="custom-control-input" id="bola_dunia" name="APEL_bola_dunia" />
                                        <label class="custom-control-label" for="bola_dunia">Bola Dunia</label>
                                    </div>

                                    <div class="mb-3">
                                        <label>Alat Peraga Edukasi Dalam</label>
                                        <div>
                                            <div class="custom-control custom-checkbox d-block">
                                                <input type="checkbox" class="custom-control-input" id="alat_main_sensori_motor" name="APED_sensori_motor" />
                                                <label class="custom-control-label" for="alat_main_sensori_motor">Alat Main Sensori Motor</label>
                                            </div>

                                            <div class="custom-control custom-checkbox d-block">
                                                <input type="checkbox" class="custom-control-input" id="alat_main_pembangunan" name="APED_pembangunan" />
                                                <label class="custom-control-label" for="alat_main_pembangunan">Alat Main Pembangunan</label>
                                            </div>

                                            <div class="custom-control custom-checkbox d-block">
                                                <input type="checkbox" class="custom-control-input" id="alat_bermain_peran" name="APED_bermain_peran" />
                                                <label class="custom-control-label" for="alat_bermain_peran">Alat Bermain Peran</label>
                                            </div>

                                            <div class="custom-control custom-checkbox d-block">
                                                <input type="checkbox" class="custom-control-input" id="imtaq" name="APED_imtaq" />
                                                <label class="custom-control-label" for="imtaq">IMTAQ</label>
                                            </div>

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

        $('input[name="tahun"]').on("dp.show", function(e) {
            $(e.target).data("DateTimePicker").viewMode("months");
        });
    });


    $('[name="btn_simpan"]').on('click', function() {
        var APEL_perosotan = $('[name="APEL_perosotan"]').is(":checked") ? 1 : 0;
        var APEL_jungkitan = $(' [name="APEL_jungkitan"]').is(":checked") ? 1 : 0;
        var APEL_ayunan = $('[name="APEL_ayunan"]:checked').is(":checked") ? 1 : 0;
        var APEL_bola_dunia = $(' [name="APEL_bola_dunia"]:checked').is(":checked") ? 1 : 0;
        var APED_sensori_motor = $('[name="APED_sensori_motor"]:checked').is(":checked") ? 1 : 0;
        var APED_pembangunan = $('[name="APED_pembangunan"]:checked').is(":checked") ? 1 : 0;
        var APED_bermain_peran = $('[name="APED_bermain_peran"]:checked').is(":checked") ? 1 : 0;
        var APED_imtaq = $('[name="APED_imtaq"]:checked').is(":checked") ? 1 : 0;
        var nama_lembaga = $('[name="nama_lembaga"]').val();
        var dataIsian = {
            APEL_perosotan,
            APEL_jungkitan,
            APEL_ayunan,
            APEL_bola_dunia,
            APED_sensori_motor,
            APED_pembangunan,
            APED_bermain_peran,
            APED_imtaq,
            nama_lembaga
        }
        console.log(dataIsian)
        if (
            APEL_perosotan !== "" &&
            APEL_jungkitan !== "" &&
            APEL_ayunan !== "" &&
            APEL_bola_dunia !== "" &&
            APED_sensori_motor !== "" &&
            APED_pembangunan !== "" &&
            APED_bermain_peran !== "" &&
            APED_imtaq !== "" &&
            nama_lembaga !== ""
        ) {
            $.ajax({
                type: "POST",
                url: "<?php echo base_url() ?>kelola_sarana/add",
                dataType: "json",
                data: {
                    APEL_perosotan: APEL_perosotan,
                    APEL_jungkitan: APEL_jungkitan,
                    APEL_ayunan: APEL_ayunan,
                    APEL_bola_dunia: APEL_bola_dunia,
                    APED_sensori_motor: APED_sensori_motor,
                    APED_pembangunan: APED_pembangunan,
                    APED_bermain_peran: APED_bermain_peran,
                    APED_imtaq: APED_imtaq,
                    id_lembaga: nama_lembaga,
                },
                success: function(response) {
                    console.log(response)
                    $('#modal').modal('hide');
                    Swal.fire(
                        'Berhasil!',
                        'Data telah ditambah.',
                        'success'
                    );
                    data.ajax.reload(null, false);

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